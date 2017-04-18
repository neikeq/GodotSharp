/**********************************************************************************/
/* gd_mono_method.h                                                               */
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
#ifndef GD_MONO_METHOD_H
#define GD_MONO_METHOD_H

#include "gd_mono.h"
#include "gd_mono_header.h"

class GDMonoMethod {
	bool sig_updated;

	bool instance;
	int params_count;
	ManagedType return_type;
	Vector<ManagedType> param_types;

	bool attrs_updated;
	MonoCustomAttrInfo *attrs;

	void update_signature();

	friend class GDMonoClass;

	MonoMethod *mono_method;

public:
	bool is_static();
	int get_parameters_count();
	ManagedType get_return_type();

	void *get_thunk();

	MonoObject *invoke(MonoObject *p_object, const Variant **p_params);
	MonoObject *invoke(MonoObject *p_object);
	MonoObject *invoke_raw(MonoObject *p_object, void **p_params);

	bool has_attribute(GDMonoClass *p_attr_class);
	MonoObject *get_attribute(GDMonoClass *p_attr_class);
	void update_attrs();

	GDMonoMethod(MonoMethod *p_method);
	~GDMonoMethod();
};

#endif // GD_MONO_METHOD_H
