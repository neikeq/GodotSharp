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

#include "csharp_script.h"

MonoObject *variant_to_managed_of_type(const Variant* p_var, MonoType *p_type);

void mono_field_set_from_variant(MonoObject* p_object, MonoClassField* p_field, const Variant* p_var);

MonoObject *create_managed_for_unmanaged(MonoClass* p_class, MonoClass* p_native, Object* p_object);

Variant managed_to_variant(MonoObject* p_var, MonoType *p_type);

MonoObject *variant_to_managed_variant(MonoClass *vclass, const Variant* p_var);

MonoClass *mono_class_get_native_class(MonoClass *script_class);

void mono_void_call(MonoClass *clazz, MonoObject *mono_object, const StringName &p_method, const Variant **p_args, int p_argcount);

MonoObject *unmanaged_get_managed(void *unmanaged);

MonoClass *mono_class_from_unmanaged(Object *unmanaged);

void tie_managed_to_unmanaged(MonoObject* managed, void *unmanaged);

void register_mono_internal_calls();

#define UNBOX_DOUBLE( x ) *(double *) mono_object_unbox( x )
#define UNBOX_FLOAT( x ) *(float *) mono_object_unbox( x )
#define UNBOX_INT64( x ) *(int64_t *) mono_object_unbox( x )
#define UNBOX_INT32( x ) *(int32_t *) mono_object_unbox( x )
#define UNBOX_INT16( x ) *(int16_t *) mono_object_unbox( x )
#define UNBOX_INT8( x ) *(int8_t *) mono_object_unbox( x )
#define UNBOX_UINT64( x ) *(uint64_t *) mono_object_unbox( x )
#define UNBOX_UINT32( x ) *(uint32_t *) mono_object_unbox( x )
#define UNBOX_UINT16( x ) *(uint16_t *) mono_object_unbox( x )
#define UNBOX_UINT8( x ) *(uint8_t *) mono_object_unbox( x )
#define UNBOX_BOOLEAN( x ) *(MonoBoolean *) mono_object_unbox( x )
#define UNBOX_CHAR( x ) (wchar_t *) mono_object_unbox( x )
#define UNBOX_PTR( x ) mono_object_unbox( x )

#define BOX_DOUBLE( x ) mono_value_box(mono_domain_get(), mono_get_double_class(), &x)
#define BOX_FLOAT( x ) mono_value_box(mono_domain_get(), mono_get_single_class(), &x)
#define BOX_INT64( x ) mono_value_box(mono_domain_get(), mono_get_int64_class(), &x)
#define BOX_INT32( x ) mono_value_box(mono_domain_get(), mono_get_int32_class(), &x)
#define BOX_INT16( x ) mono_value_box(mono_domain_get(), mono_get_int16_class(), &x)
#define BOX_INT8( x ) mono_value_box(mono_domain_get(), mono_get_sbyte_class(), &x)
#define BOX_UINT64( x ) mono_value_box(mono_domain_get(), mono_get_uint64_class(), &x)
#define BOX_UINT32( x ) mono_value_box(mono_domain_get(), mono_get_uint32_class(), &x)
#define BOX_UINT16( x ) mono_value_box(mono_domain_get(), mono_get_uint16_class(), &x)
#define BOX_UINT8( x ) mono_value_box(mono_domain_get(), mono_get_byte_class(), &x)
#define BOX_BOOLEAN( x ) mono_value_box(mono_domain_get(), mono_get_boolean_class(), &x)
#define BOX_CHAR( x ) mono_value_box(mono_domain_get(), mono_get_char_class(), &x)
#define BOX_PTR( x ) mono_value_box(mono_domain_get(), mono_get_intptr_class(), x)

#endif // MONO_UTILS_H

