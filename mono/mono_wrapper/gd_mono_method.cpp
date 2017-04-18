/**********************************************************************************/
/* gd_mono_method.cpp                                                             */
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
#include "gd_mono_method.h"

#include "gd_mono_class.h"
#include "gd_mono_marshal.h"

void GDMonoMethod::update_signature() {
	MonoMethodSignature *sig = mono_method_signature(mono_method);

	instance = mono_signature_is_instance(sig);
	params_count = mono_signature_get_param_count(sig);

	MonoType *ret_type = mono_signature_get_return_type(sig);
	if (ret_type) {
		return_type.type_encoding = mono_type_get_type(ret_type);

		if (return_type.type_encoding != MONO_TYPE_VOID) {
			MonoClass *ret_type_class = mono_class_from_mono_type(ret_type);
			return_type.type_class = GDMono::get_singleton()->get_class(ret_type_class);
		}
	}

	void *iter = NULL;
	MonoType *param_raw_type;
	while ((param_raw_type = mono_signature_get_params(sig, &iter)) != NULL) {
		ManagedType param_type;

		param_type.type_encoding = mono_type_get_type(param_raw_type);

		if (param_type.type_encoding != MONO_TYPE_VOID) {
			MonoClass *param_type_class = mono_class_from_mono_type(param_raw_type);
			param_type.type_class = GDMono::get_singleton()->get_class(param_type_class);
		}

		param_types.push_back(param_type);
	}

	sig_updated = true;
}

bool GDMonoMethod::is_static() {
	if (!sig_updated)
		update_signature();

	return !instance;
}

int GDMonoMethod::get_parameters_count() {
	if (!sig_updated)
		update_signature();

	return params_count;
}

ManagedType GDMonoMethod::get_return_type() {
	if (!sig_updated)
		update_signature();

	return return_type;
}

void *GDMonoMethod::get_thunk() {
	return mono_method_get_unmanaged_thunk(mono_method);
}

MonoObject *GDMonoMethod::invoke(MonoObject *p_object, const Variant **p_params) {
	if (get_return_type().type_encoding != MONO_TYPE_VOID || get_parameters_count() > 0) {
		MonoArray *params = mono_array_new(GDMONO_DOMAIN, CACHED_CLASS_RAW(MonoObject), get_parameters_count());

		for (int i = 0; i < params_count; i++) {
			MonoObject *boxed_param = GDMonoMarshal::variant_to_mono_object(p_params[i], param_types[i]);
			mono_array_set(params, MonoObject *, i, boxed_param);
		}

		MonoObject *exc = NULL;
		MonoObject *return_value = mono_runtime_invoke_array(mono_method, p_object, params, &exc);

		if (exc) {
			mono_print_unhandled_exception(exc);
			return NULL;
		}

		return return_value;
	} else {
		MonoObject *exc = NULL;
		mono_runtime_invoke(mono_method, p_object, NULL, &exc);

		if (exc)
			mono_print_unhandled_exception(exc);

		return NULL;
	}
}

MonoObject *GDMonoMethod::invoke(MonoObject *p_object) {
	ERR_FAIL_COND_V(get_parameters_count() > 0, NULL);
	return invoke_raw(p_object, NULL);
}

MonoObject *GDMonoMethod::invoke_raw(MonoObject *p_object, void **p_params) {
	MonoObject *exc = NULL;
	MonoObject *return_value = mono_runtime_invoke(mono_method, p_object, p_params, &exc);

	if (exc) {
		mono_print_unhandled_exception(exc);
		return NULL;
	}

	return return_value;
}

bool GDMonoMethod::has_attribute(GDMonoClass *p_attr_class) {
	ERR_FAIL_COND_V(!p_attr_class, false);

	if (!attrs_updated)
		update_attrs();

	if (!attrs)
		return false;

	return mono_custom_attrs_has_attr(attrs, p_attr_class->get_raw());
}

MonoObject *GDMonoMethod::get_attribute(GDMonoClass *p_attr_class) {
	ERR_FAIL_COND_V(!p_attr_class, NULL);

	if (!attrs_updated)
		update_attrs();

	if (!attrs)
		return NULL;

	return mono_custom_attrs_get_attr(attrs, p_attr_class->get_raw());
}

void GDMonoMethod::update_attrs() {
	ERR_FAIL_COND(attrs != NULL);
	attrs = mono_custom_attrs_from_method(mono_method);
	attrs_updated = true;
}

GDMonoMethod::GDMonoMethod(MonoMethod *p_method) {
	mono_method = p_method;
	sig_updated = false;

	attrs_updated = false;
	attrs = NULL;
}

GDMonoMethod::~GDMonoMethod() {
	if (attrs) {
		mono_custom_attrs_free(attrs);
	}
}
