#include "gd_mono.h"

#include <mono/metadata/mono-config.h>

#include "globals.h"
#include "os/file_access.h"
#include "os/os.h"

#include "gd_mono_utils.h"
#include "../csharp_script.h"

GDMono* GDMono::singleton = NULL;

void GDMono::initialize(const String& p_assemblies_path)
{
	OS::get_singleton()->print("Initializing mono...\n");

	mono_config_parse(NULL);
	domain = mono_jit_init_version("GodotEngineMono", "v4.0.30319");

	ERR_EXPLAIN("Mono: Could not initialize jit");
	ERR_FAIL_COND(!domain);

	GDMonoUtils::set_main_thread(GDMonoUtils::get_current_thread());

	register_internal_calls();

	if (!corlib_assembly) {
		corlib_assembly = memnew(GDMonoAssembly("corlib"));
		Error error = corlib_assembly->wrap_image(mono_get_corlib());

		if (error != OK) {
			memdelete(corlib_assembly);
			corlib_assembly = NULL;
			ERR_EXPLAIN("Mono: Failed to load corlib");
			ERR_FAIL();
		}
	}

	String project_assembly_name = Globals::get_singleton()->get("application/name");
	String project_assembly_path = p_assemblies_path + "/" + project_assembly_name + ".dll";

	if (FileAccess::exists(project_assembly_path)) {
		GDMonoUtils::clear_cache();

		// Load API assembly
		String api_assembly_name = "GodotSharp";
		String api_assembly_path = p_assemblies_path + "/" + api_assembly_name + ".dll";

		ERR_EXPLAIN("Mono: Game assembly found but the API assembly is missing");
		ERR_FAIL_COND(!FileAccess::exists(api_assembly_path));

		api_assembly = memnew(GDMonoAssembly(api_assembly_path));
		api_assembly->load(domain);

		if (!api_assembly->is_loaded()) {
			memdelete(api_assembly);
			ERR_EXPLAIN("Mono: Failed to load assembly " + api_assembly_path);
			ERR_FAIL();
		}

		// Load project assembly
		project_assembly = memnew(GDMonoAssembly(project_assembly_path));
		project_assembly->load(domain);

		if (!project_assembly->is_loaded()) {
			memdelete(project_assembly);
			ERR_EXPLAIN("Mono: Failed to load assembly " + project_assembly_path);
			ERR_FAIL();
		}

		mono_assembly_set_main(project_assembly->assembly);

		assemblies.set(api_assembly_name, api_assembly);
		assemblies.set(project_assembly_name, project_assembly);

		GDMonoUtils::update_cache();

		initialized = true;

		OS::get_singleton()->print("Mono: Successfully initialized\n");
	} else {
		OS::get_singleton()->print("Mono: Game assembly not found\n");
	}
}

#ifndef MONO_GLUE_DISABLED
namespace GodotSharpBindings
{
void register_generated_icalls();
}
#endif

void GDMono::register_internal_calls()
{
#ifndef MONO_GLUE_DISABLED
	GodotSharpBindings::register_generated_icalls();
#endif
}

GDMonoClass *GDMono::get_class(MonoClass *p_class)
{
	GDMonoClass* mono_class = NULL;

	const String* k = NULL;

	while ((k = assemblies.next(k))) {
		mono_class = assemblies.get(*k)->get_class(p_class);

		if(mono_class)
			return mono_class;
	}

	return corlib_assembly->get_class(p_class);
}

GDMono::GDMono()
{
	ERR_FAIL_COND(singleton);
	singleton = this;

	initialized = false;
	domain = NULL;
	corlib_assembly = NULL;
	api_assembly = NULL;
	project_assembly = NULL;
}

GDMono::~GDMono()
{
	const String* k = NULL;

	while ((k = assemblies.next(k))) {
		memdelete(assemblies.get(*k));
	}

	assemblies.clear();

	if (initialized) {
		mono_jit_cleanup(domain);
		domain = NULL;
	}

	initialized = false;
}
