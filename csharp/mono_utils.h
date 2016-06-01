/**********************************************************************************/
/* mono_utils.h                                                                   */
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

#ifndef MONO_UTILS_H
#define MONO_UTILS_H

#include <mono/jit/jit.h>
#include <mono/metadata/debug-helpers.h>

#include "csharp_script.h"

MonoObject *variant_to_mono_object(MonoClass* vclass, const Variant* p_var)
{
	MonoObject *mono_object = mono_object_new(CSharpLanguage::get_singleton()->get_domain(), vclass);

	if (!mono_object)
		return NULL;

	MonoMethodDesc *desc = mono_method_desc_new (":.ctor(intptr,bool)", FALSE);
	MonoMethod *ctor_method = mono_method_desc_search_in_class (desc, vclass);
	mono_method_desc_free (desc);

	bool memown = false;

	void *args [2];
	args [0] = &p_var;
	args [1] = &memown;
	mono_runtime_invoke (ctor_method, mono_object, args, NULL);

	return mono_object;
}

MonoArray *vargs_to_mono_array(const Variant **p_args, int p_argc)
{
	MonoClass *variant_class = mono_class_from_name(CSharpLanguage::get_singleton()->get_engine_image(), "GodotEngine", "Variant");
	MonoArray *result = mono_array_new(CSharpLanguage::get_singleton()->get_domain(), variant_class, p_argc);

	for (int i = 0; i < p_argc; i++)
		mono_array_setref(result, i, variant_to_mono_object(variant_class, p_args[i]));

	return result;
}

MonoClass *script_class_get_native_class(MonoClass *script_class)
{
	MonoClass* clazz = script_class;

	while ((clazz = mono_class_get_parent(clazz)) != NULL) {
		if (mono_class_get_namespace(clazz) == String("GodotEngine"))
			return clazz;
	}

	return NULL;
}

void mono_void_call(MonoClass *clazz, MonoObject *mono_object, const StringName &p_method, const Variant **p_args, int p_argcount)
{
	MonoMethod *method = mono_class_get_method_from_name(clazz, String(p_method).utf8(), p_argcount);

	if (!method)
		return;

	if (p_argcount > 0) {
		MonoClass *helper_class = mono_class_from_name(CSharpLanguage::get_singleton()->get_engine_image(), "GodotEngine", "InternalHelpers");
		ERR_FAIL_COND(!helper_class);
		MonoMethod *variant_call = mono_class_get_method_from_name(helper_class, "VariantCallExpectVoid", 3);
		ERR_FAIL_COND(!variant_call);

		MonoReflectionMethod *mrm = mono_method_get_object(CSharpLanguage::get_singleton()->get_domain(), method, clazz);
		MonoArray* v = vargs_to_mono_array(p_args, p_argcount);

		void *args [3];
		args[0] = mono_object;
		args[1] = mrm;
		args[2] = v;

		MonoObject *exc = NULL;
		mono_runtime_invoke(variant_call, NULL, args, &exc);
		if (exc) {
			mono_print_unhandled_exception(exc);
		}
	} else {
		// There is no need for VariantCall helper, no arguments are passed and no return is expected
		MonoObject *exc = NULL;
		mono_runtime_invoke(method, mono_object, NULL, &exc);
		if (exc) {
			mono_print_unhandled_exception(exc);
		}
	}
}

MonoObject *mono_object_from_object(void *jarg1)
{
	Object *arg1 = (Object *) jarg1;

	if (arg1) {
		ScriptInstance *script_instance = arg1->get_script_instance();
		if (script_instance) {
			CSharpInstance *cs_instance = static_cast<CSharpInstance*>(script_instance);
			if (cs_instance)
				return cs_instance->get_mono_object();
		}
	}

	return NULL;
}

void register_mono_internal_calls()
{
	mono_add_internal_call("GodotEngine.InternalHelpers::GetManagedObjectFor(intptr)", (void*)mono_object_from_object);
}

#endif // MONO_UTILS_H

