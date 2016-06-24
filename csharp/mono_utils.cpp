/**********************************************************************************/
/* mono_utils.cpp                                                                 */
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

#include "mono_utils.h"

#include <mono/jit/jit.h>
#include <mono/metadata/debug-helpers.h>

MonoObject *variant_to_managed_of_type(const Variant* p_var, MonoType *p_type)
{
	int basic_type = mono_type_get_type(p_type);

	switch (basic_type) {
		case MONO_TYPE_BOOLEAN: {
			bool val = p_var->operator bool();
			return BOX_BOOLEAN(val);
		}

		case MONO_TYPE_CHAR: {
			wchar_t val = p_var->operator CharType();
			return BOX_CHAR(val);
		}

		case MONO_TYPE_I1: {
			char val = p_var->operator signed char();
			return BOX_INT8(val);
		}
		case MONO_TYPE_I2: {
			short val = p_var->operator signed short();
			return BOX_INT16(val);
		}
		case MONO_TYPE_I4: {
			int val = p_var->operator signed int();
			return BOX_INT32(val);
		}
		case MONO_TYPE_I8: {
			int64_t val = p_var->operator int64_t();
			return BOX_INT64(val);
		}

		case MONO_TYPE_U1: {
			char val = p_var->operator unsigned char();
			return BOX_UINT8(val);
		}
		case MONO_TYPE_U2: {
			short val = p_var->operator unsigned short();
			return BOX_UINT16(val);
		}
		case MONO_TYPE_U4: {
			int val = p_var->operator unsigned int();
			return BOX_UINT32(val);
		}
		case MONO_TYPE_U8: {
			uint64_t val = p_var->operator uint64_t();
			return BOX_UINT64(val);
		}

		case MONO_TYPE_R4: {
			float val = p_var->operator float();
			return BOX_FLOAT(val);
		}
		case MONO_TYPE_R8: {
			double val = p_var->operator double();
			return BOX_DOUBLE(val);
		}

		case MONO_TYPE_STRING:
			break; // TODO String marshalling

		case MONO_TYPE_VALUETYPE: {
			// TODO Cache this...
			MonoImage *api_image = CSharpLanguage::get_singleton()->get_api_image();
			MonoClass *vector2_class = mono_class_from_name(api_image, "GodotEngine", "Vector2");
			// ...

			MonoClass *type_class = mono_type_get_class(p_type);

			// Vector2
			if (vector2_class == type_class) {
				Vector2 val = p_var->operator Vector2();
				return mono_value_box(mono_domain_get(), vector2_class, &val);
			}
		} break;

		case MONO_TYPE_CLASS: {
			// TODO Cache this...
			MonoImage *api_image = CSharpLanguage::get_singleton()->get_api_image();
			MonoClass *object_class = mono_class_from_name(api_image, "GodotEngine", "Object");
			MonoClass *variant_class = mono_class_from_name(api_image, "GodotEngine", "Variant");
			// ...

			MonoClass *type_class = mono_type_get_class(p_type);

			// Object
			if (mono_class_is_assignable_from(object_class, type_class) == TRUE) {
				Object* unmanaged = p_var->operator Object *();
				MonoObject* managed = unmanaged_get_managed(unmanaged);

				if (!managed) {
					MonoClass* native = NULL;
					if (mono_class_get_namespace(type_class) == String("GodotEngine"))
						native = type_class;
					else
						mono_class_get_native_class(type_class);

					if (native)
						managed = create_managed_for_unmanaged(type_class, native, unmanaged);
				}

				return managed;
			}

			// Variant
			if (mono_class_is_assignable_from(variant_class, type_class) == TRUE) {
				return variant_to_managed_variant(variant_class, p_var);
			}
		} break;
	}

	return NULL;
}

void mono_field_set_from_variant(MonoObject* p_object, MonoClassField* p_field, const Variant* p_var)
{
	MonoType *type = mono_field_get_type(p_field);
	if (!type)
		return;

	int basic_type = mono_type_get_type(type);

	switch (basic_type) {
		case MONO_TYPE_BOOLEAN: {
			bool val = p_var->operator bool();
			mono_field_set_value(p_object, p_field, &val);
		} break;

		case MONO_TYPE_CHAR: {
			wchar_t val = p_var->operator CharType();
			mono_field_set_value(p_object, p_field, &val);
		} break;

		case MONO_TYPE_I1: {
			char val = p_var->operator signed char();
			mono_field_set_value(p_object, p_field, &val);
		} break;
		case MONO_TYPE_I2: {
			short val = p_var->operator signed short();
			mono_field_set_value(p_object, p_field, &val);
		} break;
		case MONO_TYPE_I4: {
			int val = p_var->operator signed int();
			mono_field_set_value(p_object, p_field, &val);
		} break;
		case MONO_TYPE_I8: {
			int64_t val = p_var->operator int64_t();
			mono_field_set_value(p_object, p_field, &val);
		} break;

		case MONO_TYPE_U1: {
			char val = p_var->operator unsigned char();
			mono_field_set_value(p_object, p_field, &val);
		} break;
		case MONO_TYPE_U2: {
			short val = p_var->operator unsigned short();
			mono_field_set_value(p_object, p_field, &val);
		} break;
		case MONO_TYPE_U4: {
			int val = p_var->operator unsigned int();
			mono_field_set_value(p_object, p_field, &val);
		} break;
		case MONO_TYPE_U8: {
			uint64_t val = p_var->operator uint64_t();
			mono_field_set_value(p_object, p_field, &val);
		} break;

		case MONO_TYPE_R4: {
			float val = p_var->operator float();
			mono_field_set_value(p_object, p_field, &val);
		} break;

		case MONO_TYPE_R8: {
			double val = p_var->operator double();
			mono_field_set_value(p_object, p_field, &val);
		} break;

		case MONO_TYPE_STRING:
			break; // TODO String marshalling

		case MONO_TYPE_VALUETYPE: {
			// TODO Cache this...
			MonoImage *api_image = CSharpLanguage::get_singleton()->get_api_image();
			MonoClass *vector2_class = mono_class_from_name(api_image, "GodotEngine", "Vector2");
			// ...

			MonoClass *type_class = mono_type_get_class(type);

			// Vector2
			if (vector2_class == type_class) {
				Vector2 val = p_var->operator Vector2();
				mono_field_set_value(p_object, p_field, &val);
				break;
			}
		} break;

		case MONO_TYPE_CLASS: {
			// TODO Cache this...
			MonoImage *api_image = CSharpLanguage::get_singleton()->get_api_image();
			MonoClass *object_class = mono_class_from_name(api_image, "GodotEngine", "Object");
			MonoClass *variant_class = mono_class_from_name(api_image, "GodotEngine", "Variant");
			// ...

			MonoClass *type_class = mono_type_get_class(type);

			// Object
			if (mono_class_is_assignable_from(object_class, type_class) == TRUE) {
				Object* unmanaged = p_var->operator Object *();
				MonoObject* managed = unmanaged_get_managed(unmanaged);

				if (!managed) {
					MonoClass* native = NULL;
					if (mono_class_get_namespace(type_class) == String("GodotEngine"))
						native = type_class;
					else
						mono_class_get_native_class(type_class);

					if (native)
						managed = create_managed_for_unmanaged(type_class, native, unmanaged);
				}

				mono_field_set_value(p_object, p_field, managed);
				break;
			}

			// Variant
			if (mono_class_is_assignable_from(variant_class, type_class) == TRUE) {
				MonoObject* managed =  variant_to_managed_variant(variant_class, p_var);
				mono_field_set_value(p_object, p_field, managed);
				break;
			}
		} break;
	}
}

Variant managed_to_variant(MonoObject* p_var, MonoType *p_type)
{
	int basic_type = mono_type_get_type(p_type);

	switch (basic_type) {
		case MONO_TYPE_BOOLEAN:
			return UNBOX_BOOLEAN(p_var) == TRUE;

		case MONO_TYPE_CHAR:
			return UNBOX_CHAR(p_var);

		case MONO_TYPE_I1:
			return UNBOX_INT8(p_var);
		case MONO_TYPE_I2:
			return UNBOX_INT16(p_var);
		case MONO_TYPE_I4:
			return UNBOX_INT32(p_var);
		case MONO_TYPE_I8:
			return UNBOX_INT64(p_var);

		case MONO_TYPE_U1:
			return UNBOX_UINT8(p_var);
		case MONO_TYPE_U2:
			return UNBOX_UINT16(p_var);
		case MONO_TYPE_U4:
			return UNBOX_UINT32(p_var);
		case MONO_TYPE_U8:
			return UNBOX_UINT64(p_var);

		case MONO_TYPE_R4:
			return UNBOX_FLOAT(p_var);
		case MONO_TYPE_R8:
			return UNBOX_DOUBLE(p_var);

		case MONO_TYPE_STRING:
			break; // TODO String marshalling

		case MONO_TYPE_VALUETYPE: {
			// TODO Cache this...
			MonoImage *api_image = CSharpLanguage::get_singleton()->get_api_image();
			MonoClass *vector2_class = mono_class_from_name(api_image, "GodotEngine", "Vector2");
			// ...

			MonoClass *type_class = mono_type_get_class(p_type);

			// Vector2
			if (vector2_class == type_class) {
				return *static_cast<Vector2*>(mono_object_unbox(p_var));
			}
		} break;

		case MONO_TYPE_CLASS: {
			// TODO Cache this...
			MonoImage *api_image = CSharpLanguage::get_singleton()->get_api_image();
			MonoClass *object_class = mono_class_from_name(api_image, "GodotEngine", "Object");
			MonoClass *variant_class = mono_class_from_name(api_image, "GodotEngine", "Variant");
			// ...

			MonoClass *type_class = mono_type_get_class(p_type);

			// Object
			if (mono_class_is_assignable_from(object_class, type_class) == TRUE) {
				MonoClassField *refField = mono_class_get_field_from_name(object_class, "swigCPtr");

				ERR_FAIL_COND_V(!refField, Variant());

				MonoObject *refManaged = mono_field_get_value_object(mono_domain_get(), refField, p_var);

				// TODO Cache this...
				MonoType *refType = mono_field_get_type(refField);
				MonoClass *refClass = mono_type_get_class(refType);
				MonoClassField *ptrField = mono_class_get_field_from_name(refClass, "handle");
				MonoObject *ptrManaged = mono_field_get_value_object(mono_domain_get(), ptrField, refManaged);
				// ...

				Object* object_ptr = static_cast<Object*>(UNBOX_PTR(ptrManaged));

				if (!object_ptr)
					break; // Variant()

				return object_ptr;
			}

			// Variant
			if (mono_class_is_assignable_from(variant_class, type_class) == TRUE) {
				MonoClassField *refField = mono_class_get_field_from_name(type_class, "swigCPtr");

				ERR_FAIL_COND_V(!refField, Variant());

				MonoObject *refManaged = mono_field_get_value_object(mono_domain_get(), refField, p_var);

				// TODO Cache this...
				MonoType *refType = mono_field_get_type(refField);
				MonoClass *refClass = mono_type_get_class(refType);
				MonoClassField *ptrField = mono_class_get_field_from_name(refClass, "handle");
				MonoObject *ptrManaged = mono_field_get_value_object(mono_domain_get(), ptrField, refManaged);
				// ...

				Variant* variant_ptr = static_cast<Variant*>(UNBOX_PTR(ptrManaged));

				if (!variant_ptr)
					break; // Variant()

				return *variant_ptr;
			}
		} break;
	}

	return Variant();
}

MonoObject *variant_to_managed_variant(MonoClass* vclass, const Variant* p_var)
{
	MonoObject *mono_object = mono_object_new(mono_domain_get(), vclass);

	if (!mono_object)
		return NULL;

	MonoMethodDesc *desc = mono_method_desc_new (":.ctor(intptr,bool)", FALSE);
	MonoMethod *ctor_method = mono_method_desc_search_in_class (desc, vclass);
	mono_method_desc_free (desc);

	bool memown = true;

	void *args [2];
	args [0] = &p_var;
	args [1] = &memown;
	mono_runtime_invoke (ctor_method, mono_object, args, NULL);

	return mono_object;
}

MonoObject *create_managed_for_unmanaged(MonoClass* p_class, MonoClass* p_native, Object* p_object)
{
	String native_name = mono_class_get_name(p_native);
	String object_type = p_object->get_type_name();
	if (object_type.begins_with("_"))
		object_type = object_type.substr(1, object_type.length());
	if (!ObjectTypeDB::is_type(object_type, native_name)) {
		ERR_EXPLAIN("Type inherits from native type '" + native_name + "', so it can't be instanced in object of type: '" + p_object->get_type() + "'");
		ERR_FAIL_V(NULL);
	}

	MonoObject *mono_object = mono_object_new(mono_domain_get(), p_class);

	ERR_FAIL_COND_V(!mono_object, NULL);

	// Initialize pointers in the native base classes before constructing the object
	MonoMethodDesc *desc = mono_method_desc_new (":internal_init(intptr)", FALSE);
	MonoMethod *native_base_init = mono_method_desc_search_in_class(desc, p_native);
	mono_method_desc_free (desc);

	void *args [1];
	args [0] = &p_object;
	mono_runtime_invoke(native_base_init, mono_object, args, NULL);

	// Call default constructor if any
	mono_runtime_object_init(mono_object);

	// Tie managed to unmanaged
	Reference *ref = p_object->cast_to<Reference>();
	bool strong = !ref || (ref->get_script_instance() && dynamic_cast<CSharpInstance*>(ref->get_script_instance()));
	Ref<CSharpGCHandle> gchandle(memnew(CSharpGCHandle(mono_object, !strong)));
	p_object->set_meta("__mono_gchandle__", gchandle);

	return mono_object;
}

MonoClass *mono_class_get_native_class(MonoClass *script_class)
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
	ERR_EXPLAIN("Reference has been garbage collected?");
	ERR_FAIL_COND(!mono_object);

	MonoMethod *method = mono_class_get_method_from_name(clazz, String(p_method).utf8(), p_argcount);

	if (!method)
		return;

	if (p_argcount > 0) {
		MonoMethodSignature *sig = mono_method_signature(method);

		int i = 0;
		gpointer iter = NULL;
		MonoType *paramType;

		MonoArray *args = mono_array_new(mono_domain_get(), mono_get_object_class(), p_argcount);

		while ((paramType = mono_signature_get_params(sig, &iter))) {
			MonoObject* boxed_arg = variant_to_managed_of_type(p_args[i], paramType);
			mono_array_set(args, MonoObject*, i, boxed_arg);
			i++;
		}

		MonoObject *exc = NULL;
		mono_runtime_invoke_array(method, mono_object, args, &exc);
		if (exc) {
			mono_print_unhandled_exception(exc);
		}
	} else {
		// There is no need for variant marshalling, no arguments are passed and no return is expected
		MonoObject *exc = NULL;
		mono_runtime_invoke(method, mono_object, NULL, &exc);
		if (exc) {
			mono_print_unhandled_exception(exc);
		}
	}
}

MonoObject *unmanaged_get_managed(void *unmanaged)
{
	Object *object = (Object *) unmanaged;

	if (object) {
		Reference *ref = object->cast_to<Reference>();

		ScriptInstance *script_instance = object->get_script_instance();

		if (script_instance) {
			CSharpInstance *cs_instance = dynamic_cast<CSharpInstance*>(script_instance);

			if (cs_instance) {
				if (ref) {
					// reference() was called previously to temporally avoid deleting the reference,
					// but a reference declared in the managed world cannot reference the unmanaged side
					// to avoid a circular reference. The script will take responsibility of deleting the
					// unmanaged reference when the managed side gets GCed.
					ref->unreference();
				}
				return cs_instance->get_mono_object();
			}
		}

		if (object->has_meta("__mono_gchandle__")) {
			Ref<CSharpGCHandle> gchandle = object->get_meta("__mono_gchandle__");

			if (gchandle.is_valid())
				return gchandle->get_object();
		}

		MonoClass *type_class = mono_class_from_unmanaged(object);

		if (type_class)
			return create_managed_for_unmanaged(type_class, type_class, object);
	}

	return NULL;
}

MonoClass *mono_class_from_unmanaged(Object *unmanaged)
{
	String unmanaged_name = unmanaged->get_type_name();
	if (unmanaged_name.begins_with("_"))
		unmanaged_name = unmanaged_name.substr(1, unmanaged_name.length());

	MonoImage* api_image = CSharpLanguage::get_singleton()->get_api_image();
	return mono_class_from_name(api_image, "GodotEngine", unmanaged_name.utf8());
}

void tie_managed_to_unmanaged(MonoObject* managed, void *unmanaged)
{
	Object *object = (Object*) unmanaged;
	if (object) {
		Reference *ref = object->cast_to<Reference>();
		//bool strong = !ref || (ref->get_script_instance() && dynamic_cast<CSharpInstance*>(ref->get_script_instance()));

		Ref<CSharpGCHandle> gchandle(memnew(CSharpGCHandle(managed/*, !strong*/)));
		object->set_meta("__mono_gchandle__", gchandle);

		if (object->get_script().is_null()) {
			// All C# objects whose state needs to be kept must has a C# script
			String class_name = mono_class_get_name(mono_object_get_class(managed));
			Ref<CSharpScript> script=memnew(CSharpScript(class_name));
			object->set_script(script.get_ref_ptr());
		}

		//if (strong) {
		if (ref) {
			// reference() was called previously to temporally avoid deleting the reference,
			// but a reference declared in the managed world cannot reference the unmanaged side
			// to avoid a circular reference. The script will take responsibility of deleting the
			// unmanaged reference when the managed side gets GCed.
			ref->unreference();
		}
	}
}

void register_mono_internal_calls()
{
	mono_add_internal_call("GodotEngine.InternalHelpers::UnmanagedGetManaged(intptr)", (const void*)unmanaged_get_managed);
	mono_add_internal_call("GodotEngine.InternalHelpers::TieManagedToUnmanaged(object,intptr)", (const void*)tie_managed_to_unmanaged);
}
