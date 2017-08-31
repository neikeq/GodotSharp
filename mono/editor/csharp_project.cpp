/**********************************************************************************/
/* csharp_project.cpp                                                             */
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
#include "csharp_project.h"

#include "os/os.h"
#include "project_settings.h"

#include "../mono_wrapper/gd_mono_class.h"
#include "../mono_wrapper/gd_mono_marshal.h"

namespace CSharpProject {

String generate_core_api_project(const String &p_dir, const Vector<String> &p_files) {

	GDMonoClass *klass = GDMono::get_singleton()->get_editor_tools_assembly()->get_class("GodotSharpTools.Project", "ProjectGenerator");

	Variant dir = p_dir;
	Variant compile_items = p_files;
	const Variant *args[2] = { &dir, &compile_items };
	MonoObject *exc = NULL;
	MonoObject *ret = klass->get_method("GenCoreApiProject", 2)->invoke(NULL, args, &exc);

	if (exc) {
		mono_print_unhandled_exception(exc);
		return "";
	}

	return ret ? GDMonoMarshal::mono_string_to_godot((MonoString *)ret) : "";
}

String generate_editor_api_project(const String &p_dir, const String &p_core_dll_path, const Vector<String> &p_files) {

	GDMonoClass *klass = GDMono::get_singleton()->get_editor_tools_assembly()->get_class("GodotSharpTools.Project", "ProjectGenerator");

	Variant dir = p_dir;
	Variant core_dll_path = p_core_dll_path;
	Variant compile_items = p_files;
	const Variant *args[3] = { &dir, &core_dll_path, &compile_items };
	MonoObject *exc = NULL;
	MonoObject *ret = klass->get_method("GenEditorApiProject", 3)->invoke(NULL, args, &exc);

	if (exc) {
		mono_print_unhandled_exception(exc);
		return "";
	}

	return ret ? GDMonoMarshal::mono_string_to_godot((MonoString *)ret) : "";
}

String generate_game_project(const String &p_dir, const String &p_name, const Vector<String> &p_files) {

	GDMonoClass *klass = GDMono::get_singleton()->get_editor_tools_assembly()->get_class("GodotSharpTools.Project", "ProjectGenerator");

	Variant dir = p_dir;
	Variant name = p_name;
	Variant compile_items = p_files;
	const Variant *args[3] = { &dir, &name, &compile_items };
	MonoObject *exc = NULL;
	MonoObject *ret = klass->get_method("GenGameProject", 3)->invoke(NULL, args, &exc);

	if (exc) {
		mono_print_unhandled_exception(exc);
		return "";
	}

	return ret ? GDMonoMarshal::mono_string_to_godot((MonoString *)ret) : "";
}

void add_item(const String &p_project_path, const String &p_item_type, const String &p_include) {

	GDMonoClass *klass = GDMono::get_singleton()->get_editor_tools_assembly()->get_class("GodotSharpTools.Project", "ProjectUtils");

	Variant project_path = p_project_path;
	Variant item_type = p_item_type;
	Variant include = p_include;
	const Variant *args[3] = { &project_path, &item_type, &include };
	MonoObject *exc = NULL;
	klass->get_method("AddItemToProjectChecked", 3)->invoke(NULL, args, &exc);

	if (exc) {
		mono_print_unhandled_exception(exc);
	}
}
} // CSharpProject
