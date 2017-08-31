/**********************************************************************************/
/* gd_mono.h                                                                      */
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
#ifndef GD_MONO_H
#define GD_MONO_H

#include "../godotsharp_defs.h"
#include "gd_mono_assembly.h"
#include "gd_mono_log.h"

#ifdef WINDOWS_ENABLED
#include "../utils/mono_reg_utils.h"
#endif

#define SCRIPTS_DOMAIN GDMono::get_singleton()->get_scripts_domain()
#define TOOLS_DOMAIN GDMono::get_singleton()->get_tools_domain()

class GDMono {

	bool runtime_initialized;
	bool unloading_script_domain;

	MonoDomain *root_domain;
	MonoDomain *scripts_domain;
	MonoDomain *tools_domain;

	GDMonoAssembly *corlib_assembly;
	GDMonoAssembly *api_assembly;
	GDMonoAssembly *project_assembly;
#ifdef TOOLS_ENABLED
	GDMonoAssembly *editor_api_assembly;
	GDMonoAssembly *editor_tools_assembly;
#endif

	HashMap<String, GDMonoAssembly *> assemblies;

	bool _load_corlib_assembly();
	bool _load_core_api_assembly();
#ifdef TOOLS_ENABLED
	bool _load_editor_api_assembly();
	bool _load_editor_tools_assembly();
#endif
	bool _load_project_assembly();
	void _unload_project_assembly();

	bool _load_all_script_assemblies();

	void _register_internal_calls();

	Error _load_scripts_domain();
	Error _unload_scripts_domain();

	Error _load_tools_domain();

#ifdef DEBUG_METHODS_ENABLED
	uint64_t api_core_hash;
#ifdef TOOLS_ENABLED
	uint64_t api_editor_hash;
#endif
	void _initialize_and_check_api_hashes();
#endif

	bool _load_assembly(const String &p_name, GDMonoAssembly **r_assembly);

	GDMonoLog *gdmono_log;

#if defined(WINDOWS_ENABLED) && (defined(DEBUG_ENABLED) || defined(TOOLS_ENABLED))
	MonoRegInfo mono_reg_info;
#endif

protected:
	static GDMono *singleton;

public:
#ifdef DEBUG_METHODS_ENABLED
	uint64_t get_api_core_hash() { return api_core_hash; }
#ifdef TOOLS_ENABLED
	uint64_t get_api_editor_hash() { return api_editor_hash; }
#endif
#endif

	enum MemberVisibility {
		PRIVATE,
		PROTECTED_AND_INTERNAL, // FAM_AND_ASSEM
		INTERNAL, // ASSEMBLY
		PROTECTED, // FAMILY
		PUBLIC
	};

	static GDMono *get_singleton() { return singleton; }

	void add_assembly(const String &p_name, GDMonoAssembly *p_assembly);

	_FORCE_INLINE_ bool is_runtime_initialized() const { return runtime_initialized; }
	_FORCE_INLINE_ bool is_unloading_script_domain() const { return unloading_script_domain; }

	_FORCE_INLINE_ MonoDomain *get_scripts_domain() { return scripts_domain; }
	_FORCE_INLINE_ MonoDomain *get_tools_domain() { return tools_domain; }

	_FORCE_INLINE_ GDMonoAssembly *get_corlib_assembly() const { return corlib_assembly; }
	_FORCE_INLINE_ GDMonoAssembly *get_api_assembly() const { return api_assembly; }
	_FORCE_INLINE_ GDMonoAssembly *get_project_assembly() const { return project_assembly; }
#ifdef TOOLS_ENABLED
	_FORCE_INLINE_ GDMonoAssembly *get_editor_api_assembly() const { return editor_api_assembly; }
	_FORCE_INLINE_ GDMonoAssembly *get_editor_tools_assembly() const { return editor_tools_assembly; }
#endif

#if defined(WINDOWS_ENABLED) && (defined(DEBUG_ENABLED) || defined(TOOLS_ENABLED))
	const MonoRegInfo &get_mono_loc_info() { return mono_reg_info; }
#endif

	GDMonoClass *get_class(MonoClass *p_class);

	Error reload_scripts_domain_if_needed();

	void initialize();

	GDMono();
	~GDMono();
};

class _GodotSharp : public Object {
	GDCLASS(_GodotSharp, Object)

	friend class GDMono;

	void _dispose_object(Object *p_object);

	void _dispose_callback();

	List<Object *> obj_delete_queue;
	List<NodePath *> np_delete_queue;
	List<RID *> rid_delete_queue;

	bool queue_empty;

#ifndef NO_THREADS
	Mutex *queue_mutex;
#endif

protected:
	static _GodotSharp *singleton;
	static void _bind_methods();

public:
	static _GodotSharp *get_singleton() { return singleton; }

	void attach_thread();
	void detach_thread();

	bool is_unloading_domain();
	bool is_domain_loaded();

	void queue_dispose(Object *p_object);
	void queue_dispose(NodePath *p_node_path);
	void queue_dispose(RID *p_rid);

	_GodotSharp();
	~_GodotSharp();
};

#endif // GD_MONO_H
