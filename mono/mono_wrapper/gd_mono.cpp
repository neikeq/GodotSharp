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
#include <mono/metadata/mono-debug.h>
#include <mono/utils/mono-logger.h>

#include "global_config.h"
#include "os/file_access.h"
#include "os/os.h"
#include "os/thread.h"

#include "../build_config.h"
#include "../csharp_script.h"
#include "../utils/path_utils.h"
#include "gd_mono_utils.h"

GDMono *GDMono::singleton = NULL;

void GDMono::initialize() {
	OS::get_singleton()->print("Initializing mono...\n");

#ifdef DEBUG_ENABLED
	mono_debug_init(MONO_DEBUG_FORMAT_MONO);

	const char *options[] = {
		"--soft-breakpoints",
		"--debugger-agent=transport=dt_socket,address=127.0.0.1:17615,embedding=1,server=y,suspend=n"
	};
	mono_jit_parse_options(2, (char **)options);
	mono_trace_set_level_string("debug");
#else
	mono_trace_set_level_string("warning");
#endif

	mono_config_parse(NULL);
	root_domain = mono_jit_init_version("GodotEngineRootDomain", "v4.0.30319");

	ERR_EXPLAIN("Mono: Failed to initialize runtime");
	ERR_FAIL_COND(!root_domain);

	OS::get_singleton()->print("Mono: Runtime initialized\n");

	GDMonoUtils::set_main_thread(GDMonoUtils::get_current_thread());

	runtime_initialized = true;

	ERR_EXPLAIN("Mono: Failed to load scripts domain");
	ERR_FAIL_COND(_load_scripts_domain() != OK);

	_register_internal_calls();

	ERR_EXPLAIN("Mono: Failed to load assemblies");
	ERR_FAIL_COND(!_load_script_assemblies());

	OS::get_singleton()->print("Mono: EVERYTHING OK\n");
}

bool GDMono::_load_script_assemblies() {
	OS::get_singleton()->print("Mono: Loading assemblies on scripts domain...\n");

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
		api_assembly->load(scripts_domain);

		if (!api_assembly->is_loaded()) {
			memdelete(api_assembly);
			api_assembly = NULL;
			ERR_EXPLAIN("Mono: Failed to load assembly " + api_assembly_path);
			ERR_FAIL_V(false);
		}

		// Load project assembly
		project_assembly = memnew(GDMonoAssembly(project_assembly_path));
		project_assembly->load(scripts_domain);

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

		OS::get_singleton()->print("Mono: Project assemblies initialized\n");
	} else {
		OS::get_singleton()->print("Mono: No project assembly to load\n");
	}

	return true;
}

void GDMono::_unload_script_assemblies() {
	OS::get_singleton()->print("Mono: Unloading assemblies on scripts domain...\n");

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

Error GDMono::_load_scripts_domain() {
	ERR_FAIL_COND_V(scripts_domain != NULL, ERR_BUG);

	OS::get_singleton()->print("Mono: Loading scripts domain...\n");

	String domain_name = "GodotEngineScriptDomain";
	scripts_domain = mono_domain_create_appdomain((char *)domain_name.utf8().get_data(), NULL);

	ERR_EXPLAIN("Mono: Could not create script app domain");
	ERR_FAIL_COND_V(!scripts_domain, ERR_CANT_CREATE);

	mono_domain_set(scripts_domain, true);

#ifdef DEBUG_ENABLED
	mono_debug_domain_create(scripts_domain);
#endif

	return OK;
}

Error GDMono::_unload_scripts_domain() {
	ERR_FAIL_COND_V(!scripts_domain, ERR_BUG);

	OS::get_singleton()->print("Mono: Unloading scripts domain...\n");

	_unload_script_assemblies();

	if (mono_domain_get() != root_domain)
		mono_domain_set(root_domain, true);

	mono_domain_finalize(scripts_domain, 3000);

	MonoObject *exc = NULL;
	mono_domain_try_unload(scripts_domain, &exc);
	scripts_domain = NULL;

	if (exc) {
		ERR_PRINT("Exception thrown when unloading scripts domain:");
		mono_print_unhandled_exception(exc);
		return FAILED;
	}

	return OK;
}

Error GDMono::reload_scripts_domain_if_needed() {
	ERR_FAIL_COND_V(!runtime_initialized, ERR_BUG);

	if (scripts_domain) {
		if (FileAccess::get_modified_time(project_assembly->get_path()) <= project_assembly->get_modified_time()) {
			return ERR_SKIP; // No need to reload
		}

		Error err = _unload_scripts_domain();
		if (err != OK) {
			ERR_PRINT("Mono: Failed to unload scripts domain");
			return err;
		}
	}

	Error err = _load_scripts_domain();
	if (err != OK) {
		ERR_PRINT("Mono: Failed to load scripts domain");
		return err;
	}

	if (!_load_script_assemblies()) {
		ERR_PRINT("Mono: Failed to load assemblies");
		return ERR_CANT_OPEN;
	}

	return OK;
}

GDMono::GDMono() {
	singleton = this;

	runtime_initialized = false;
	unloading_script_domain = false;
	scripts_domain = NULL;

#ifdef TOOLS_ENABLED
	editor_tools_domain = NULL;
#endif

	corlib_assembly = NULL;
	api_assembly = NULL;
	project_assembly = NULL;
}

GDMono::~GDMono() {
	unloading_script_domain = true;

	_unload_script_assemblies();

	if (runtime_initialized) {
		if (scripts_domain) {
			_unload_scripts_domain();
		}

		OS::get_singleton()->print("Mono: Runtime cleanup...\n");

		runtime_initialized = false;
		mono_jit_cleanup(root_domain);
	}

	unloading_script_domain = false;
}

_GodotSharp *_GodotSharp::singleton = NULL;

void _GodotSharp::_dispose_object(Object *p_object) {

	if (p_object->get_script_instance()) {
		CSharpInstance *cs_instance = CAST_CSHARP_INSTANCE(p_object->get_script_instance());
		if (cs_instance) {
			cs_instance->mono_object_disposed();
			return;
		}
	}

	if (p_object->cast_to<Reference>()->unreference()) {
		memdelete(p_object);
	}
}

void _GodotSharp::_dispose_callback() {

#ifndef NO_THREADS
	queue_mutex->lock();
#endif

	for (List<Object *>::Element *E = obj_delete_queue.front(); E; E = E->next()) {
		_dispose_object(E->get());
	}

	for (List<NodePath *>::Element *E = np_delete_queue.front(); E; E = E->next()) {
		memdelete(E->get());
	}

	for (List<RID *>::Element *E = rid_delete_queue.front(); E; E = E->next()) {
		memdelete(E->get());
	}

	obj_delete_queue.clear();
	np_delete_queue.clear();
	rid_delete_queue.clear();
	queue_empty = true;

#ifndef NO_THREADS
	queue_mutex->unlock();
#endif
}

void _GodotSharp::_bind_methods() {

	ClassDB::bind_method(D_METHOD("attach_thread"), &_GodotSharp::attach_thread);
	ClassDB::bind_method(D_METHOD("detach_thread"), &_GodotSharp::detach_thread);

	ClassDB::bind_method(D_METHOD("is_unloading_domain"), &_GodotSharp::is_unloading_domain);
	ClassDB::bind_method(D_METHOD("is_domain_loaded"), &_GodotSharp::is_domain_loaded);

	ClassDB::bind_method(D_METHOD("_dispose_callback"), &_GodotSharp::_dispose_callback);

	ADD_SIGNAL(MethodInfo("about_to_unload_domain"));
	ADD_SIGNAL(MethodInfo("domain_loaded"));
}

void _GodotSharp::attach_thread() {

	GDMonoUtils::attach_current_thread();
}

void _GodotSharp::detach_thread() {

	GDMonoUtils::detach_current_thread();
}

bool _GodotSharp::is_unloading_domain() {

	return GDMono::get_singleton()->is_unloading_script_domain();
}

bool _GodotSharp::is_domain_loaded() {

	return GDMono::get_singleton()->get_scripts_domain() != NULL;
}

#define ENQUEUE_FOR_DISPOSAL(m_queue, m_inst) \
	m_queue.push_back(m_inst);                \
	if (queue_empty) {                        \
		queue_empty = false;                  \
		call_deferred("_dispose_callback");   \
	}

void _GodotSharp::queue_dispose(Object *p_object) {

	if (Thread::get_main_ID() == Thread::get_caller_ID()) {
		_dispose_object(p_object);
	} else {
#ifndef NO_THREADS
		queue_mutex->lock();
#endif

		ENQUEUE_FOR_DISPOSAL(obj_delete_queue, p_object);

#ifndef NO_THREADS
		queue_mutex->unlock();
#endif
	}
}

void _GodotSharp::queue_dispose(NodePath *p_node_path) {

	if (Thread::get_main_ID() == Thread::get_caller_ID()) {
		memdelete(p_node_path);
	} else {
#ifndef NO_THREADS
		queue_mutex->lock();
#endif

		ENQUEUE_FOR_DISPOSAL(np_delete_queue, p_node_path);

#ifndef NO_THREADS
		queue_mutex->unlock();
#endif
	}
}

void _GodotSharp::queue_dispose(RID *p_rid) {

	if (Thread::get_main_ID() == Thread::get_caller_ID()) {
		memdelete(p_rid);
	} else {
#ifndef NO_THREADS
		queue_mutex->lock();
#endif

		ENQUEUE_FOR_DISPOSAL(rid_delete_queue, p_rid);

#ifndef NO_THREADS
		queue_mutex->unlock();
#endif
	}
}

_GodotSharp::_GodotSharp() {

	singleton = this;
	queue_empty = true;
#ifndef NO_THREADS
	queue_mutex = Mutex::create();
#endif
}

_GodotSharp::~_GodotSharp() {

	singleton = NULL;

	if (queue_mutex) {
		memdelete(queue_mutex);
	}
}
