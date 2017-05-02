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

#define SCRIPT_DOMAIN GDMono::get_singleton()->get_scripts_domain()

#ifdef TOOLS_ENABLED
#define EDITOR_TOOLS_DOMAIN GDMono::get_singleton()->get_editor_tools_domain()
#endif

class GDMono {
	static GDMono *singleton;

	bool runtime_initialized;
	bool unloading_script_domain;

	MonoDomain *root_domain;
	MonoDomain *scripts_domain;

#ifdef TOOLS_ENABLED
	MonoDomain *editor_tools_domain;
#endif

	GDMonoAssembly *corlib_assembly;
	GDMonoAssembly *api_assembly;
	GDMonoAssembly *project_assembly;

	HashMap<String, GDMonoAssembly *> assemblies;

	bool _load_script_assemblies();
	void _unload_script_assemblies();
	void _register_internal_calls();

	Error _unload_scripts_domain();
	Error _load_scripts_domain();

public:
	enum MemberVisibility {
		PRIVATE,
		PROTECTED_AND_INTERNAL, // FAM_AND_ASSEM
		INTERNAL, // ASSEMBLY
		PROTECTED, // FAMILY
		PUBLIC
	};

	static GDMono *get_singleton() { return singleton; }

	_FORCE_INLINE_ bool is_runtime_initialized() const { return runtime_initialized; }
	_FORCE_INLINE_ bool is_unloading_script_domain() const { return unloading_script_domain; }

	_FORCE_INLINE_ MonoDomain *get_scripts_domain() { return scripts_domain; }

#ifdef TOOLS_ENABLED
	_FORCE_INLINE_ MonoDomain *get_editor_tools_domain() { return editor_tools_domain; }
#endif

	_FORCE_INLINE_ GDMonoAssembly *get_corlib_assembly() const { return corlib_assembly; }
	_FORCE_INLINE_ GDMonoAssembly *get_api_assembly() const { return api_assembly; }
	_FORCE_INLINE_ GDMonoAssembly *get_project_assembly() const { return project_assembly; }

	GDMonoClass *get_class(MonoClass *p_class);

	Error reload_scripts_domain_if_needed();

	void initialize();

	GDMono();
	~GDMono();
};

#endif // GD_MONO_H
