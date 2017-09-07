/**********************************************************************************/
/* monodevelop_instance.cpp                                                       */
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
#include "monodevelop_instance.h"

#include "../mono_wrapper/gd_mono.h"
#include "../mono_wrapper/gd_mono_class.h"

void MonoDevelopInstance::execute(const Vector<String> &p_files) {

	ERR_FAIL_NULL(execute_method);
	ERR_FAIL_COND(gc_handle.is_null());

	MonoObject *exc = NULL;

	Variant files = p_files;
	const Variant *args[1] = { &files };
	execute_method->invoke(gc_handle->get_target(), args, &exc);

	if (exc) {
		mono_print_unhandled_exception(exc);
		ERR_FAIL();
	}
}

void MonoDevelopInstance::execute(const String &p_file) {

	Vector<String> files;
	files.push_back(p_file);
	execute(files);
}

MonoDevelopInstance::MonoDevelopInstance(const String &p_solution) {

	GDMonoClass *klass = GDMono::get_singleton()->get_editor_tools_assembly()->get_class("GodotSharpTools.Editor", "MonoDevelopInstance");

	MonoObject *obj = mono_object_new(TOOLS_DOMAIN, klass->get_raw());

	GDMonoMethod *ctor = klass->get_method(".ctor", 1);
	MonoObject *exc = NULL;

	Variant solution = p_solution;
	const Variant *args[1] = { &solution };
	ctor->invoke(obj, args, &exc);

	if (exc) {
		mono_print_unhandled_exception(exc);
		ERR_FAIL();
	}

	gc_handle = MonoGCHandle::create_strong(obj);
	execute_method = klass->get_method("Execute", 1);
}
