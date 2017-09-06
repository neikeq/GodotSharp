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

#include "os/dir_access.h"
#include "os/file_access.h"
#include "os/os.h"
#include "os/thread.h"
#include "project_settings.h"

#include "../csharp_script.h"
#include "../godotsharp_dirs.h"
#include "../utils/path_utils.h"
#include "gd_mono_utils.h"

#ifdef TOOLS_ENABLED
#include "../editor/godotsharp_editor.h"
#endif

MonoAssembly *gdmono_MonoAssemblyPreLoad(MonoAssemblyName *aname, char **assemblies_path, void *user_data) {

	(void)(user_data); // UNUSED

	MonoAssembly *assembly_loaded = mono_assembly_loaded(aname);
	if (assembly_loaded) {
		// Already loaded
		return assembly_loaded;
	}

	List<String> search_dirs;

	search_dirs.push_back(GodotSharpDirs::get_res_temp_assemblies_dir());
	search_dirs.push_back(GodotSharpDirs::get_res_assemblies_dir());
	search_dirs.push_back(OS::get_singleton()->get_resource_dir());
	search_dirs.push_back(OS::get_singleton()->get_executable_path().get_base_dir());

	const char *rootdir = mono_assembly_getrootdir();
	if (rootdir) {
		search_dirs.push_back(String(rootdir).plus_file("mono").plus_file("4.5"));
	}

	while (assemblies_path) {
		if (*assemblies_path)
			search_dirs.push_back(*assemblies_path);
		++assemblies_path;
	}

	String name = mono_assembly_name_get_name(aname);
	bool has_extension = name.ends_with(".dll") || name.ends_with(".exe");

	String path;

	for (List<String>::Element *E = search_dirs.front(); E; E = E->next()) {
		if (has_extension) {
			path = E->get().plus_file(name);
			if (FileAccess::exists(path))
				goto found;
		} else {
			path = E->get().plus_file(name + ".dll");
			if (FileAccess::exists(path))
				goto found;
			path = E->get().plus_file(name + ".exe");
			if (FileAccess::exists(path))
				goto found;
		}
	}

	return NULL;

found:
	if (has_extension)
		name = name.get_basename();

	MonoDomain *domain = mono_domain_get();

	GDMonoAssembly *assembly = memnew(GDMonoAssembly(name, path));
	Error err = assembly->load(domain);
	ERR_FAIL_COND_V(err != OK, NULL);

	GDMono::get_singleton()->add_assembly(mono_domain_get_id(domain), assembly);

	return assembly->get_assembly();
}

#ifdef MONO_PRINT_HANDLER_ENABLED
void gdmono_MonoPrintCallback(const char *string, mono_bool is_stdout) {

	if (is_stdout) {
		OS::get_singleton()->print(string);
	} else {
		OS::get_singleton()->printerr(string);
	}
}
#endif

GDMono *GDMono::singleton = NULL;

void GDMono::initialize() {

	ERR_FAIL_NULL(Engine::get_singleton());

	OS::get_singleton()->print("Initializing mono...\n");

	_initialize_and_check_api_hashes();

#if defined(WINDOWS_ENABLED) && (defined(DEBUG_ENABLED) || defined(TOOLS_ENABLED))
	mono_reg_info = MonoRegUtils::find_mono();

	CharString assembly_dir;
	CharString config_dir;

	if (mono_reg_info.assembly_dir.length() && DirAccess::exists(mono_reg_info.assembly_dir)) {
		assembly_dir = mono_reg_info.assembly_dir.utf8();
	}

	if (mono_reg_info.config_dir.length() && DirAccess::exists(mono_reg_info.config_dir)) {
		config_dir = mono_reg_info.config_dir.utf8();
	}

	mono_set_dirs(assembly_dir.length() ? assembly_dir.get_data() : NULL,
			config_dir.length() ? config_dir.get_data() : NULL);
#else
	mono_set_dirs(NULL, NULL);
#endif

	mono_install_assembly_preload_hook(&gdmono_MonoAssemblyPreLoad, NULL);

#ifdef DEBUG_ENABLED
	mono_debug_init(MONO_DEBUG_FORMAT_MONO);

	const char *options[] = {
		"--soft-breakpoints",
		"--debugger-agent=transport=dt_socket,address=127.0.0.1:17615,embedding=1,server=y,suspend=n"
	};
	mono_jit_parse_options(2, (char **)options);
#endif

	GDMonoLog::get_singleton()->initialize();

#ifdef MONO_PRINT_HANDLER_ENABLED
	mono_trace_set_print_handler(gdmono_MonoPrintCallback);
	mono_trace_set_printerr_handler(gdmono_MonoPrintCallback);
#endif

	mono_config_parse(NULL);

	root_domain = mono_jit_init_version("GodotEngine.RootDomain", "v4.0.30319");

	ERR_EXPLAIN("Mono: Failed to initialize runtime");
	ERR_FAIL_NULL(root_domain);

	OS::get_singleton()->print("Mono: Runtime initialized\n");

	GDMonoUtils::set_main_thread(GDMonoUtils::get_current_thread());

	runtime_initialized = true;

	// mscorlib assembly MUST be present at initialization
	ERR_EXPLAIN("Mono: Failed to load mscorlib assembly");
	ERR_FAIL_COND(!_load_corlib_assembly());

	ERR_EXPLAIN("Mono: Failed to load scripts domain");
	ERR_FAIL_COND(_load_scripts_domain() != OK);

	_register_internal_calls();

	// The following assemblies are not required at initialization
	_load_all_script_assemblies();

#ifdef TOOLS_ENABLED
	// TODO should not be loaded unless editor hint or bindings generation

	ERR_EXPLAIN("Mono: Failed to load tools domain");
	ERR_FAIL_COND(_load_tools_domain() != OK);

	mono_domain_set(tools_domain, true);

	ERR_EXPLAIN("Mono: Failed to load Editor Tools assembly");
	ERR_FAIL_COND(!_load_editor_tools_assembly());

	mono_domain_set(scripts_domain, true);
#endif

	OS::get_singleton()->print("Mono: EVERYTHING OK\n");
}

#ifndef MONO_GLUE_DISABLED
namespace GodotSharpBindings {

uint64_t get_core_api_hash();
uint64_t get_editor_api_hash();

void register_generated_icalls();
} // namespace GodotSharpBindings
#endif

void GDMono::_register_internal_calls() {
#ifndef MONO_GLUE_DISABLED
	GodotSharpBindings::register_generated_icalls();
#endif

#ifdef TOOLS_ENABLED
	GodotSharpBuilds::_register_internal_calls();
#endif
}

#ifdef DEBUG_METHODS_ENABLED
void GDMono::_initialize_and_check_api_hashes() {

	api_core_hash = ClassDB::get_api_hash(ClassDB::API_CORE);

#ifndef MONO_GLUE_DISABLED
	if (api_core_hash != GodotSharpBindings::get_core_api_hash()) {
		ERR_PRINT("Mono: Core API hash mismatch!");
	}
#endif

#ifdef TOOLS_ENABLED
	api_editor_hash = ClassDB::get_api_hash(ClassDB::API_EDITOR);

#ifndef MONO_GLUE_DISABLED
	if (api_editor_hash != GodotSharpBindings::get_editor_api_hash()) {
		ERR_PRINT("Mono: Editor API hash mismatch!");
	}
#endif

#endif // TOOLS_ENABLED
}
#endif // DEBUG_METHODS_ENABLED

void GDMono::add_assembly(uint32_t p_domain_id, GDMonoAssembly *p_assembly) {

	assemblies[p_domain_id][p_assembly->get_name()] = p_assembly;
}

bool GDMono::_load_assembly(const String &p_name, GDMonoAssembly **r_assembly) {

	CRASH_COND(!r_assembly);

	if (OS::get_singleton()->is_stdout_verbose())
		OS::get_singleton()->print((String() + "Mono: Loading assembly " + p_name + "...\n").utf8());

	MonoImageOpenStatus status;
	MonoAssemblyName *aname = mono_assembly_name_new(p_name.utf8());
	MonoAssembly *assembly = mono_assembly_load_full(aname, NULL, &status, false);
	mono_assembly_name_free(aname);

	if (!assembly)
		return false;

	uint32_t domain_id = mono_domain_get_id(mono_domain_get());

	GDMonoAssembly **stored_assembly = assemblies[domain_id].getptr(p_name);

	if (stored_assembly) {
		// Loaded by our preload hook (status is not initialized when returning from a preload hook)
		ERR_FAIL_COND_V((*stored_assembly)->get_assembly() != assembly, false);
		*r_assembly = *stored_assembly;
	} else {
		ERR_FAIL_COND_V(status != MONO_IMAGE_OK, false);

		MonoImage *assembly_image = mono_assembly_get_image(assembly);
		ERR_FAIL_NULL_V(assembly_image, false);

		const char *path = mono_image_get_filename(assembly_image);

		*r_assembly = memnew(GDMonoAssembly(p_name, path));
		Error error = (*r_assembly)->wrapper_for_image(assembly_image);

		if (error != OK) {
			memdelete(*r_assembly);
			*r_assembly = NULL;
			ERR_FAIL_V(false);
		}
	}

	if (OS::get_singleton()->is_stdout_verbose())
		OS::get_singleton()->print(String("Mono: Assembly " + p_name + " loaded from path: " + (*r_assembly)->get_path() + "\n").utf8());

	return true;
}

bool GDMono::_load_corlib_assembly() {

	if (corlib_assembly)
		return true;

	bool success = _load_assembly("mscorlib", &corlib_assembly);

	if (success)
		GDMonoUtils::update_corlib_cache();

	return success;
}

bool GDMono::_load_core_api_assembly() {

	if (api_assembly)
		return true;

	bool success = _load_assembly(API_ASSEMBLY_NAME, &api_assembly);

	if (success)
		GDMonoUtils::update_godot_api_cache();

	return success;
}

#ifdef TOOLS_ENABLED
bool GDMono::_load_editor_api_assembly() {

	if (editor_api_assembly)
		return true;

	return _load_assembly(EDITOR_API_ASSEMBLY_NAME, &editor_api_assembly);
}

bool GDMono::_load_editor_tools_assembly() {

	if (editor_tools_assembly)
		return true;

	return _load_assembly(EDITOR_TOOLS_ASSEMBLY_NAME, &editor_tools_assembly);
}
#endif

bool GDMono::_load_project_assembly() {

	if (project_assembly)
		return true;

	String project_assembly_name = ProjectSettings::get_singleton()->get("application/config/name");

	bool success = _load_assembly(project_assembly_name, &project_assembly);

	if (success)
		mono_assembly_set_main(project_assembly->get_assembly());

	return success;
}

bool GDMono::_load_all_script_assemblies() {

#ifndef MONO_GLUE_DISABLED
	if (!_load_core_api_assembly()) {
		if (OS::get_singleton()->is_stdout_verbose())
			OS::get_singleton()->printerr("Mono: Failed to load Core API assembly\n");
		return false;
	} else {
#ifdef TOOLS_ENABLED
		if (Engine::get_singleton()->is_editor_hint()) {
			if (!_load_editor_api_assembly()) {
				if (OS::get_singleton()->is_stdout_verbose())
					OS::get_singleton()->printerr("Mono: Failed to load Editor API assembly\n");
				return false;
			}
		}
#endif
	}

	if (!_load_project_assembly()) {
		if (OS::get_singleton()->is_stdout_verbose())
			OS::get_singleton()->printerr("Mono: Failed to load project assembly\n");
		return false;
	}

	return true;
#else
	if (OS::get_singleton()->is_stdout_verbose())
		OS::get_singleton()->print("Mono: Glue disbled, ignoring script assemblies\n");

	return true;
#endif
}

Error GDMono::_load_scripts_domain() {

	ERR_FAIL_COND_V(scripts_domain != NULL, ERR_BUG);

	if (OS::get_singleton()->is_stdout_verbose()) {
		OS::get_singleton()->print("Mono: Loading scripts domain...\n");
	}

	String domain_name = "GodotEngine.ScriptsDomain";
	scripts_domain = mono_domain_create_appdomain((char *)domain_name.utf8().get_data(), NULL);

	ERR_EXPLAIN("Mono: Could not create scripts app domain");
	ERR_FAIL_NULL_V(scripts_domain, ERR_CANT_CREATE);

	mono_domain_set(scripts_domain, true);

	return OK;
}

Error GDMono::_unload_scripts_domain() {

	ERR_FAIL_NULL_V(scripts_domain, ERR_BUG);

	if (OS::get_singleton()->is_stdout_verbose()) {
		OS::get_singleton()->print("Mono: Unloading scripts domain...\n");
	}

	if (mono_domain_get() != root_domain)
		mono_domain_set(root_domain, true);

	finalizing_scripts_domain = true;
	mono_domain_finalize(scripts_domain, 2000);
	finalizing_scripts_domain = false;

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

Error GDMono::_load_tools_domain() {

	ERR_FAIL_COND_V(tools_domain != NULL, ERR_BUG);

	if (OS::get_singleton()->is_stdout_verbose()) {
		OS::get_singleton()->print("Mono: Loading tools domain...\n");
	}

	String domain_name = "GodotEngine.ToolsDomain";
	tools_domain = mono_domain_create_appdomain((char *)domain_name.utf8().get_data(), NULL);

	ERR_EXPLAIN("Mono: Could not create tools app domain");
	ERR_FAIL_NULL_V(tools_domain, ERR_CANT_CREATE);

	return OK;
}

Error GDMono::reload_scripts_domain_if_needed() {

	ERR_FAIL_COND_V(!runtime_initialized, ERR_BUG);

	if (scripts_domain) {
		if (project_assembly && FileAccess::get_modified_time(project_assembly->get_path()) <= project_assembly->get_modified_time()) {
			return ERR_SKIP; // No need to reload
		}

		_GodotSharp::get_singleton()->_dispose_callback();

		uint32_t scripts_domain_id = mono_domain_get_id(scripts_domain);

		Error err = _unload_scripts_domain();
		if (err != OK) {
			ERR_PRINT("Mono: Failed to unload scripts domain");
			return err;
		}

		_domain_assemblies_cleanup(scripts_domain_id);

		api_assembly = NULL;
		project_assembly = NULL;
#ifdef TOOLS_ENABLED
		editor_api_assembly = NULL;
#endif

		_GodotSharp::get_singleton()->_dispose_callback();
	}

	Error err = _load_scripts_domain();
	if (err != OK) {
		ERR_PRINT("Mono: Failed to load scripts domain");
		return err;
	}

	if (!_load_all_script_assemblies()) {
		if (OS::get_singleton()->is_stdout_verbose())
			OS::get_singleton()->printerr("Mono: Failed to load script assemblies\n");
		return ERR_CANT_OPEN;
	}

	return OK;
}

GDMonoClass *GDMono::get_class(MonoClass *p_class) {

	GDMonoClass *mono_class = NULL;

	uint32_t domain_id = mono_domain_get_id(mono_domain_get());
	HashMap<String, GDMonoAssembly *> &domain_assemblies = assemblies[domain_id];

	const String *k = NULL;
	while ((k = domain_assemblies.next(k))) {
		mono_class = domain_assemblies.get(*k)->get_class(p_class);

		if (mono_class)
			return mono_class;
	}

	// last, try with corlib, which is in the root domain
	return corlib_assembly->get_class(p_class);
}

void GDMono::_domain_assemblies_cleanup(uint32_t p_domain_id) {

	HashMap<String, GDMonoAssembly *> &domain_assemblies = assemblies[p_domain_id];

	const String *k = NULL;
	while ((k = domain_assemblies.next(k))) {
		memdelete(domain_assemblies.get(*k));
	}

	assemblies.erase(p_domain_id);
}

GDMono::GDMono() {

	singleton = this;

	gdmono_log = memnew(GDMonoLog);

	runtime_initialized = false;
	finalizing_scripts_domain = false;

	root_domain = NULL;
	scripts_domain = NULL;
	tools_domain = NULL;

#ifdef TOOLS_ENABLED
	editor_api_assembly = NULL;
	editor_tools_assembly = NULL;
#endif

	corlib_assembly = NULL;
	api_assembly = NULL;
	project_assembly = NULL;

#ifdef DEBUG_METHODS_ENABLED
	api_core_hash = 0;
#ifdef TOOLS_ENABLED
	api_editor_hash = 0;
#endif
#endif
}

GDMono::~GDMono() {

	if (runtime_initialized) {

		_GodotSharp::get_singleton()->_dispose_callback();

		if (scripts_domain) {

			uint32_t scripts_domain_id = mono_domain_get_id(scripts_domain);

			Error err = _unload_scripts_domain();
			if (err != OK) {
				WARN_PRINT("Mono: Failed to unload scripts domain");
			}

			_domain_assemblies_cleanup(scripts_domain_id);

			api_assembly = NULL;
			project_assembly = NULL;
#ifdef TOOLS_ENABLED
			editor_api_assembly = NULL;
#endif
		}

		_GodotSharp::get_singleton()->_dispose_callback();

		const uint32_t *k = NULL;
		while ((k = assemblies.next(k))) {
			HashMap<String, GDMonoAssembly *> &domain_assemblies = assemblies.get(*k);

			const String *k = NULL;
			while ((k = domain_assemblies.next(k))) {
				memdelete(domain_assemblies.get(*k));
			}
		}
		assemblies.clear();

		GDMonoUtils::clear_cache();

		OS::get_singleton()->print("Mono: Runtime cleanup...\n");

		runtime_initialized = false;
		mono_jit_cleanup(root_domain);
	}

	if (gdmono_log)
		memdelete(gdmono_log);
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

	if (Object::cast_to<Reference>(p_object)->unreference()) {
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

void _GodotSharp::attach_thread() {

	GDMonoUtils::attach_current_thread();
}

void _GodotSharp::detach_thread() {

	GDMonoUtils::detach_current_thread();
}

bool _GodotSharp::is_finalizing_domain() {

	return GDMono::get_singleton()->is_finalizing_scripts_domain();
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

	if (Thread::get_main_id() == Thread::get_caller_id() && !GDMono::get_singleton()->is_finalizing_scripts_domain()) {
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

	if (Thread::get_main_id() == Thread::get_caller_id() && !GDMono::get_singleton()->is_finalizing_scripts_domain()) {
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

	if (Thread::get_main_id() == Thread::get_caller_id() && !GDMono::get_singleton()->is_finalizing_scripts_domain()) {
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

void _GodotSharp::_bind_methods() {

	ClassDB::bind_method(D_METHOD("attach_thread"), &_GodotSharp::attach_thread);
	ClassDB::bind_method(D_METHOD("detach_thread"), &_GodotSharp::detach_thread);

	ClassDB::bind_method(D_METHOD("is_finalizing_domain"), &_GodotSharp::is_finalizing_domain);
	ClassDB::bind_method(D_METHOD("is_domain_loaded"), &_GodotSharp::is_domain_loaded);

	ClassDB::bind_method(D_METHOD("_dispose_callback"), &_GodotSharp::_dispose_callback);
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
