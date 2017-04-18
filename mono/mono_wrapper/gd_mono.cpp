/**********************************************************************************/
/* gd_mono.cpp                                                                    */
/**********************************************************************************/
/* The MIT License (MIT)                                                          */
/*                                                                                */
/* Copyright (c) 2016 Ignacio Etcheverry                                          */
/*                                                                                */
/* Permission is hereby granted, free of charge, to any person obtaining a copy   */
/* of this software and associated documentation files (the "Software"), to deal  */
/* in the Software without restriction, including without limitation the rights   */
/* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell      */
/* copies of the Software, and to permit persons to whom the Software is          */
/* furnished to do so, subject to the following conditions:                       */
/*                                                                                */
/* The above copyright notice and this permission notice shall be included in all */
/* copies or substantial portions of the Software.                                */
/*                                                                                */
/* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR     */
/* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,       */
/* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE    */
/* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER         */
/* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,  */
/* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE  */
/* SOFTWARE.                                                                      */
/**********************************************************************************/
#include "gd_mono.h"

#include <mono/metadata/mono-config.h>

#include "global_config.h"
#include "os/file_access.h"
#include "os/os.h"

#include "../build_config.h"
#include "../csharp_script.h"
#include "../utils/path_utils.h"
#include "gd_mono_utils.h"

GDMono *GDMono::singleton = NULL;

void GDMono::initialize() {
	OS::get_singleton()->print("Initializing mono...\n");

	mono_config_parse(NULL);
	domain_dummy = mono_jit_init_version("GodotEngineMonoDummy", "v4.0.30319");

	ERR_EXPLAIN("Mono: Could not initialize root app domain");
	ERR_FAIL_COND(!domain_dummy);

	String domain_name = "GodotEngineMono";
	domain = mono_domain_create_appdomain((char *)domain_name.utf8().get_data(), NULL);
	mono_domain_set(domain, false);

	ERR_EXPLAIN("Mono: Could not initialize scripts app domain");
	ERR_FAIL_COND(!domain);

	GDMonoUtils::set_main_thread(GDMonoUtils::get_current_thread());

	_register_internal_calls();

	if (_load_assemblies()) {
		OS::get_singleton()->print("Mono: Successfuly initialized\n");
	} else {
		OS::get_singleton()->print("Mono: Initialization failed\n");
	}
}

bool GDMono::_load_assemblies() {
	if (!corlib_assembly) {
		corlib_assembly = memnew(GDMonoAssembly("corlib"));
		Error error = corlib_assembly->wrap_image(mono_get_corlib());

		if (error != OK) {
			memdelete(corlib_assembly);
			corlib_assembly = NULL;
			ERR_EXPLAIN("Mono: Failed to load corlib");
			ERR_FAIL_V(false);
		}
	}

	String assemblies_path = get_assemblies_path();

	String project_assembly_name = GlobalConfig::get_singleton()->get("application/name");
	String project_assembly_path = path_join(assemblies_path, project_assembly_name + ".dll");

	if (FileAccess::exists(project_assembly_path)) {
		// Load API assembly
		String api_assembly_name = API_ASSEMBLY_NAME;
		String api_assembly_path = path_join(assemblies_path, api_assembly_name + ".dll");

		ERR_EXPLAIN("Mono: Game assembly found but the API assembly is missing");
		ERR_FAIL_COND_V(!FileAccess::exists(api_assembly_path), false);

		api_assembly = memnew(GDMonoAssembly(api_assembly_path));
		api_assembly->load(domain);

		if (!api_assembly->is_loaded()) {
			memdelete(api_assembly);
			api_assembly = NULL;
			ERR_EXPLAIN("Mono: Failed to load assembly " + api_assembly_path);
			ERR_FAIL_V(false);
		}

		// Load project assembly
		project_assembly = memnew(GDMonoAssembly(project_assembly_path));
		project_assembly->load(domain);

		if (!project_assembly->is_loaded()) {
			memdelete(project_assembly);
			project_assembly = NULL;
			ERR_EXPLAIN("Mono: Failed to load assembly " + project_assembly_path);
			ERR_FAIL_V(false);
		}

		mono_assembly_set_main(project_assembly->assembly);

		assemblies.set(api_assembly_name, api_assembly);
		assemblies.set(project_assembly_name, project_assembly);

		GDMonoUtils::update_cache(); // TODO update cache only for corlib if no project assembly

		initialized = true;

		OS::get_singleton()->print("Mono: Project assemblies initialized\n");
	} else {
		OS::get_singleton()->print("Mono: No project assembly to load\n");
	}

	return true;
}

void GDMono::_clean_assemblies() {
	GDMonoUtils::clear_cache();

	const String *k = NULL;
	while ((k = assemblies.next(k))) {
		memdelete(assemblies.get(*k));
	}

	assemblies.clear();
}

#ifndef MONO_GLUE_DISABLED
namespace GodotSharpBindings {
void register_generated_icalls();
}
#endif

void GDMono::_register_internal_calls() {
#ifndef MONO_GLUE_DISABLED
	GodotSharpBindings::register_generated_icalls();
#endif
}

GDMonoClass *GDMono::get_class(MonoClass *p_class) {
	GDMonoClass *mono_class = NULL;

	const String *k = NULL;
	while ((k = assemblies.next(k))) {
		mono_class = assemblies.get(*k)->get_class(p_class);

		if (mono_class)
			return mono_class;
	}

	return corlib_assembly->get_class(p_class);
}

Error GDMono::reload_if_needed() {
	if (initialized) {
		if (FileAccess::get_modified_time(project_assembly->get_path()) <= project_assembly->get_modified_time()) {
			return ERR_SKIP;
		}
	}

	_clean_assemblies();

	mono_domain_set(domain_dummy, true);

	mono_domain_unload(domain); // i give up...
	domain = NULL;

	String domain_name = "GodotEngineMono";
	domain = mono_domain_create_appdomain((char *)domain_name.utf8().get_data(), NULL);
	mono_domain_set(domain, true);

	if (!_load_assemblies())
		goto failed;

	return OK;

failed:
	initialized = false;
	return FAILED;
}

GDMono::GDMono() {
	ERR_FAIL_COND(singleton);
	singleton = this;

	initialized = false;
	domain = NULL;
	corlib_assembly = NULL;
	api_assembly = NULL;
	project_assembly = NULL;
}

GDMono::~GDMono() {
	_clean_assemblies();

	if (initialized) {
		if (domain) {
			mono_domain_unload(domain);
		}

		mono_jit_cleanup(domain_dummy);
		domain = NULL;
	}

	initialized = false;
}
