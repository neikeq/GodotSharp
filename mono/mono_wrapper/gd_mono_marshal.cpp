#include "gd_mono_marshal.h"

#include "gd_mono.h"
#include "gd_mono_class.h"

namespace GDMonoMarshal
{

#define RETURN_BOXED_STRUCT(m_t, m_var_in) { \
		const m_t& m_in = m_var_in->operator m_t(); \
		MARSHALLED_OUT(m_t, m_in, raw); \
		return mono_value_box(mono_domain_get(), CACHED_CLASS_RAW(m_t), raw); \
	}

#define RETURN_UNBOXED_STRUCT(m_t, m_var_in) { \
		float* raw = UNBOX_FLOAT_PTR(m_var_in); \
		MARSHALLED_IN(m_t, raw, ret); \
		return ret; \
	}

String mono_to_utf8_string(MonoString *p_mono_string)
{
	MonoError error;
	char* utf8 = mono_string_to_utf8_checked(p_mono_string, &error);

	ERR_EXPLAIN("Conversion of MonoString to UTF8 failed.");
	ERR_FAIL_COND_V(!mono_error_ok(&error), String());

	String ret = String::utf8(utf8);

	mono_free(utf8);

	return ret;
}

String mono_to_utf16_string(MonoString *p_mono_string)
{
	int len = mono_string_length(p_mono_string);
	String ret;

	if (len == 0)
		return ret;

	ret.resize(len + 1);
	ret.set(len, 0);

	CharType* src = (CharType*)mono_string_chars(p_mono_string);
	CharType *dst = &(ret.operator[](0));

	for (int i = 0; i < len; i++) {
		dst[i] = src[i];
	}

	return ret;
}

MonoObject *variant_to_mono_object(const Variant *p_var)
{
	ManagedType type;

	type.type_encoding = MONO_TYPE_OBJECT;

	return variant_to_mono_object(p_var, type);
}

MonoObject *variant_to_mono_object(const Variant* p_var, const ManagedType &p_type)
{
	switch (p_type.type_encoding) {
		case MONO_TYPE_BOOLEAN: {
			bool val = p_var->operator bool();
			return BOX_BOOLEAN(val);
		}

		case MONO_TYPE_CHAR: {
			CharType val = p_var->operator CharType();
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

		case MONO_TYPE_STRING: {
			return (MonoObject*) mono_string_from_godot(p_var->operator String());
		} break;

		case MONO_TYPE_VALUETYPE: {
			GDMonoClass *tclass = p_type.type_class;

			if (tclass == CACHED_CLASS(Vector2))
				RETURN_BOXED_STRUCT(Vector2, p_var);

			if (tclass == CACHED_CLASS(Rect2))
				RETURN_BOXED_STRUCT(Rect2, p_var);

			if (tclass == CACHED_CLASS(Matrix32))
				RETURN_BOXED_STRUCT(Matrix32, p_var);

			if (tclass == CACHED_CLASS(Vector3))
				RETURN_BOXED_STRUCT(Vector3, p_var);

			if (tclass == CACHED_CLASS(Matrix3))
				RETURN_BOXED_STRUCT(Matrix3, p_var);

			if (tclass == CACHED_CLASS(Quat))
				RETURN_BOXED_STRUCT(Quat, p_var);

			if (tclass == CACHED_CLASS(Transform))
				RETURN_BOXED_STRUCT(Transform, p_var);

			if (tclass == CACHED_CLASS(AABB))
				RETURN_BOXED_STRUCT(AABB, p_var);

			if (tclass == CACHED_CLASS(Color))
				RETURN_BOXED_STRUCT(Color, p_var);

			if (tclass == CACHED_CLASS(Plane))
				RETURN_BOXED_STRUCT(Plane, p_var);

			if (tclass == CACHED_CLASS(InputEvent))
				RETURN_BOXED_STRUCT(InputEvent, p_var);
		} break;

		case MONO_TYPE_ARRAY: {
			MonoArrayType* array_type = mono_type_get_array_type(GDMonoClass::get_raw_type(p_type.type_class));

			if (array_type->eklass == CACHED_CLASS_RAW(MonoObject))
				return (MonoObject*)Array_to_mono_array(p_var->operator Array());

			if (array_type->eklass == CACHED_CLASS_RAW(int32_t))
				return (MonoObject*)IntArray_to_mono_array(p_var->operator IntArray());

			if (array_type->eklass == CACHED_CLASS_RAW(uint8_t))
				return (MonoObject*)ByteArray_to_mono_array(p_var->operator ByteArray());

			if (array_type->eklass == real_t_MonoClass)
				return (MonoObject*)RealArray_to_mono_array(p_var->operator RealArray());

			if (array_type->eklass == CACHED_CLASS_RAW(String))
				return (MonoObject*)StringArray_to_mono_array(p_var->operator StringArray());

			if (array_type->eklass == CACHED_CLASS_RAW(Color))
				return (MonoObject*)ColorArray_to_mono_array(p_var->operator ColorArray());

			if (array_type->eklass == CACHED_CLASS_RAW(Vector2))
				return (MonoObject*)Vector2Array_to_mono_array(p_var->operator Vector2Array());

			if (array_type->eklass == CACHED_CLASS_RAW(Vector3))
				return (MonoObject*)Vector3Array_to_mono_array(p_var->operator Vector3Array());

			ERR_EXPLAIN(String() + "Attempted to convert Variant to a managed array of unmarshallable element type.");
			ERR_FAIL_V(NULL);
		} break;

		case MONO_TYPE_CLASS: {
			GDMonoClass *type_class = p_type.type_class;

			// GodotObject
			if (CACHED_CLASS(GodotObject)->is_assignable_from(type_class)) {
				Object* unmanaged = p_var->operator Object *();
				MonoObject* managed = GDMonoUtils::unmanaged_get_managed(unmanaged);

				if (!managed) {
					GDMonoClass* native = NULL;

					if (type_class->get_assembly() == GDMono::get_singleton()->get_api_assembly())
						native = type_class;
					else
						native = GDMonoUtils::get_class_native_base(type_class);

					if (native)
						managed = GDMonoUtils::create_managed_for_godot_object(type_class, native->get_name(), unmanaged);
				}

				return managed;
			}

			if (CACHED_CLASS(NodePath) == type_class) {
				return GDMonoUtils::create_managed_from(p_var->operator NodePath());
			}

			if (CACHED_CLASS(Image) == type_class) {
				return GDMonoUtils::create_managed_from(p_var->operator Image());
			}

			if (CACHED_CLASS(RID) == type_class) {
				return GDMonoUtils::create_managed_from(p_var->operator RID());
			}
		} break;
		case MONO_TYPE_OBJECT: {
			// Variant
			switch (p_var->get_type()) {
				case Variant::BOOL: {
					bool val = p_var->operator bool();
					return BOX_BOOLEAN(val);
				}
				case Variant::INT: {
					int val = p_var->operator signed int();
					return BOX_INT32(val);
				}
				case Variant::REAL: {
#ifdef REAL_T_IS_DOUBLE
					double val = p_var->operator double();
					return BOX_DOUBLE(val);
#else
					float val = p_var->operator float();
					return BOX_FLOAT(val);
#endif
				}
				case Variant::STRING:
					return (MonoObject*) mono_string_from_godot(p_var->operator String());
				case Variant::VECTOR2:
					RETURN_BOXED_STRUCT(Vector2, p_var);
				case Variant::RECT2:
					RETURN_BOXED_STRUCT(Rect2, p_var);
				case Variant::VECTOR3:
					RETURN_BOXED_STRUCT(Vector3, p_var);
				case Variant::MATRIX32:
					RETURN_BOXED_STRUCT(Matrix32, p_var);
				case Variant::PLANE:
					RETURN_BOXED_STRUCT(Plane, p_var);
				case Variant::QUAT:
					RETURN_BOXED_STRUCT(Quat, p_var);
				case Variant::_AABB:
					RETURN_BOXED_STRUCT(AABB, p_var);
				case Variant::MATRIX3:
					RETURN_BOXED_STRUCT(Matrix3, p_var);
				case Variant::TRANSFORM:
					RETURN_BOXED_STRUCT(Transform, p_var);
				case Variant::COLOR:
					RETURN_BOXED_STRUCT(Color, p_var);
				case Variant::IMAGE:
					return GDMonoUtils::create_managed_from(p_var->operator Image());
				case Variant::NODE_PATH:
					return GDMonoUtils::create_managed_from(p_var->operator NodePath());
				case Variant::_RID:
					return GDMonoUtils::create_managed_from(p_var->operator RID());
				case Variant::OBJECT: {
					Object* unmanaged = p_var->operator Object *();
					MonoObject* managed = GDMonoUtils::unmanaged_get_managed(unmanaged);

					if (!managed) {
						GDMonoClass* native = NULL;
						GDMonoClass* tclass = GDMonoUtils::type_get_proxy_class(unmanaged->get_type());

						if (tclass->get_assembly() == GDMono::get_singleton()->get_api_assembly())
							native = tclass;
						else
							native = GDMonoUtils::get_class_native_base(tclass);

						if (native)
							managed = GDMonoUtils::create_managed_for_godot_object(tclass, native->get_name(), unmanaged);
					}

					return managed;
				}
				case Variant::INPUT_EVENT:
					RETURN_BOXED_STRUCT(InputEvent, p_var);
				case Variant::DICTIONARY:
					return Dictionary_to_mono_object(p_var->operator Dictionary());
				case Variant::ARRAY:
					return (MonoObject*) Array_to_mono_array(p_var->operator Array());
				case Variant::RAW_ARRAY:
					return (MonoObject*) ByteArray_to_mono_array(p_var->operator ByteArray());
				case Variant::INT_ARRAY:
					return (MonoObject*) IntArray_to_mono_array(p_var->operator IntArray());
				case Variant::REAL_ARRAY:
					return (MonoObject*) RealArray_to_mono_array(p_var->operator RealArray());
				case Variant::STRING_ARRAY:
					return (MonoObject*) StringArray_to_mono_array(p_var->operator StringArray());
				case Variant::VECTOR2_ARRAY:
					return (MonoObject*) Vector2Array_to_mono_array(p_var->operator Vector2Array());
				case Variant::VECTOR3_ARRAY:
					return (MonoObject*) Vector3Array_to_mono_array(p_var->operator Vector3Array());
				case Variant::COLOR_ARRAY:
					return (MonoObject*) ColorArray_to_mono_array(p_var->operator ColorArray());
				default:
					return NULL;
			} break;
			case MONO_TYPE_GENERICINST: {
				if (CACHED_RAW_MONO_CLASS(Dictionary) == p_type.type_class->get_raw()) {
					return Dictionary_to_mono_object(p_var->operator Dictionary());
				}
			} break;
		} break;
	}

	ERR_EXPLAIN(String() + "Attempted to convert Variant to an unmarshallable managed type. Name: \'" +
				p_type.type_class->get_name() + "\' Encoding: " + itos(p_type.type_encoding));
	ERR_FAIL_V(NULL);
}

Variant mono_object_to_variant(MonoObject *p_obj)
{
	if (!p_obj)
		return Variant();

	GDMonoClass* tclass = GDMono::get_singleton()->get_class(mono_object_get_class(p_obj));
	MonoType* raw_type = tclass->get_raw_type(tclass);

	ManagedType type;

	type.type_encoding = mono_type_get_type(raw_type);
	type.type_class = tclass;

	return mono_object_to_variant(p_obj, type);
}

Variant mono_object_to_variant(MonoObject *p_obj, const ManagedType &p_type)
{
	switch (p_type.type_encoding) {
		case MONO_TYPE_BOOLEAN:
			return UNBOX_BOOLEAN(p_obj) != 0;

		case MONO_TYPE_CHAR:
			return UNBOX_CHAR(p_obj);

		case MONO_TYPE_I1:
			return UNBOX_INT8(p_obj);
		case MONO_TYPE_I2:
			return UNBOX_INT16(p_obj);
		case MONO_TYPE_I4:
			return UNBOX_INT32(p_obj);
		case MONO_TYPE_I8:
			return UNBOX_INT64(p_obj);

		case MONO_TYPE_U1:
			return UNBOX_UINT8(p_obj);
		case MONO_TYPE_U2:
			return UNBOX_UINT16(p_obj);
		case MONO_TYPE_U4:
			return UNBOX_UINT32(p_obj);
		case MONO_TYPE_U8:
			return UNBOX_UINT64(p_obj);

		case MONO_TYPE_R4:
			return UNBOX_FLOAT(p_obj);
		case MONO_TYPE_R8:
			return UNBOX_DOUBLE(p_obj);

		case MONO_TYPE_STRING: {
			String str = mono_string_to_godot((MonoString*) p_obj);
			return str;
		} break;

		case MONO_TYPE_VALUETYPE: {
			GDMonoClass *tclass = p_type.type_class;

			if (tclass == CACHED_CLASS(Vector2))
				RETURN_UNBOXED_STRUCT(Vector2, p_obj);

			if (tclass == CACHED_CLASS(Rect2))
				RETURN_UNBOXED_STRUCT(Rect2, p_obj);

			if (tclass == CACHED_CLASS(Matrix32))
				RETURN_UNBOXED_STRUCT(Matrix32, p_obj);

			if (tclass == CACHED_CLASS(Vector3))
				RETURN_UNBOXED_STRUCT(Vector3, p_obj);

			if (tclass == CACHED_CLASS(Matrix3))
				RETURN_UNBOXED_STRUCT(Matrix3, p_obj);

			if (tclass == CACHED_CLASS(Quat))
				RETURN_UNBOXED_STRUCT(Quat, p_obj);

			if (tclass == CACHED_CLASS(Transform))
				RETURN_UNBOXED_STRUCT(Transform, p_obj);

			if (tclass == CACHED_CLASS(AABB))
				RETURN_UNBOXED_STRUCT(AABB, p_obj);

			if (tclass == CACHED_CLASS(Color))
				RETURN_UNBOXED_STRUCT(Color, p_obj);

			if (tclass == CACHED_CLASS(Plane))
				RETURN_UNBOXED_STRUCT(Plane, p_obj);

			if (tclass == CACHED_CLASS(InputEvent)) {
				char* raw = UNBOX_CHAR_PTR(p_obj);
				MARSHALLED_IN(InputEvent, raw, ret);
				return ret;
			}
		} break;

		case MONO_TYPE_ARRAY: {
			MonoArrayType* array_type = mono_type_get_array_type(GDMonoClass::get_raw_type(p_type.type_class));

			if (array_type->eklass == CACHED_CLASS_RAW(MonoObject))
				return mono_array_to_Array((MonoArray*)p_obj);

			if (array_type->eklass == CACHED_CLASS_RAW(int32_t))
				return mono_array_to_IntArray((MonoArray*)p_obj);

			if (array_type->eklass == CACHED_CLASS_RAW(uint8_t))
				return mono_array_to_ByteArray((MonoArray*)p_obj);

			if (array_type->eklass == real_t_MonoClass)
				return mono_array_to_RealArray((MonoArray*)p_obj);

			if (array_type->eklass == CACHED_CLASS_RAW(String))
				return mono_array_to_StringArray((MonoArray*)p_obj);

			if (array_type->eklass == CACHED_CLASS_RAW(Color))
				return mono_array_to_ColorArray((MonoArray*)p_obj);

			if (array_type->eklass == CACHED_CLASS_RAW(Vector2))
				return mono_array_to_Vector2Array((MonoArray*)p_obj);

			if (array_type->eklass == CACHED_CLASS_RAW(Vector3))
				return mono_array_to_Vector3Array((MonoArray*)p_obj);

			ERR_EXPLAIN(String() + "Attempted to convert a managed array of unmarshallable element type to Variant.");
			ERR_FAIL_V(Variant());
		} break;

		case MONO_TYPE_CLASS: {
			GDMonoClass *type_class = p_type.type_class;

			// GodotObject
			if (CACHED_CLASS(GodotObject)->is_assignable_from(type_class)) {
				GDMonoField *ptr_field = GDMonoUtils::cache.field_GodotObject_ptr;

				ERR_FAIL_COND_V(!ptr_field, Variant());

				void *ptr_to_unmanaged = UNBOX_PTR(ptr_field->get_value(p_obj));

				if (!ptr_to_unmanaged) // IntPtr.Zero
					return Variant();

				Object* object_ptr = static_cast<Object*>(ptr_to_unmanaged);

				if (!object_ptr)
					return Variant();

				return object_ptr;
			}

			if (CACHED_CLASS(NodePath) == type_class) {
				return UNBOX_PTR(CACHED_FIELD(NodePath, ptr)->get_value(p_obj));
			}

			if (CACHED_CLASS(Image) == type_class) {
				return UNBOX_PTR(CACHED_FIELD(Image, ptr)->get_value(p_obj));
			}

			if (CACHED_CLASS(RID) == type_class) {
				return UNBOX_PTR(CACHED_FIELD(RID, ptr)->get_value(p_obj));
			}
		} break;

		case MONO_TYPE_GENERICINST: {
			if (CACHED_RAW_MONO_CLASS(Dictionary) == p_type.type_class->get_raw()) {
				return mono_object_to_Dictionary(p_obj);
			}
		} break;
	}

	ERR_EXPLAIN(String() + "Attempted to convert an unmarshallable managed type to Variant. Name: \'" +
				p_type.type_class->get_name() + "\' Encoding: " + itos(p_type.type_encoding));
	ERR_FAIL_V(Variant());
}

MonoArray *Array_to_mono_array(const Array &p_array)
{
	MonoArray *ret = mono_array_new(GDMONO_DOMAIN, CACHED_CLASS_RAW(MonoObject), p_array.size());

	for (int i = 0; i < p_array.size(); i++) {
		MonoObject* boxed = variant_to_mono_object(p_array[i]);
		mono_array_set(ret, MonoObject*, i, boxed);
	}

	return ret;
}

Array mono_array_to_Array(MonoArray *p_array)
{
	Array ret;
	int length = mono_array_length(p_array);

	for (int i = 0; i < length; i++) {
		MonoObject* elem = mono_array_get(p_array, MonoObject*, i);
		ret.push_back(mono_object_to_variant(elem));
	}

	return ret;
}

MonoArray *IntArray_to_mono_array(const IntArray &p_array)
{
	MonoArray *ret = mono_array_new(GDMONO_DOMAIN, CACHED_CLASS_RAW(int32_t), p_array.size());

	for (int i = 0; i < p_array.size(); i++) {
		mono_array_set(ret, int32_t, i, p_array[i]);
	}

	return ret;
}

IntArray mono_array_to_IntArray(MonoArray *p_array)
{
	IntArray ret;
	int length = mono_array_length(p_array);

	for (int i = 0; i < length; i++) {
		int32_t elem = mono_array_get(p_array, int32_t, i);
		ret.push_back(elem);
	}

	return ret;
}

MonoArray *ByteArray_to_mono_array(const ByteArray &p_array)
{
	MonoArray *ret = mono_array_new(GDMONO_DOMAIN, CACHED_CLASS_RAW(uint8_t), p_array.size());

	for (int i = 0; i < p_array.size(); i++) {
		mono_array_set(ret, uint8_t, i, p_array[i]);
	}

	return ret;
}

ByteArray mono_array_to_ByteArray(MonoArray *p_array)
{
	ByteArray ret;
	int length = mono_array_length(p_array);

	for (int i = 0; i < length; i++) {
		uint8_t elem = mono_array_get(p_array, uint8_t, i);
		ret.push_back(elem);
	}

	return ret;
}

MonoArray *RealArray_to_mono_array(const RealArray &p_array)
{
	MonoArray *ret = mono_array_new(GDMONO_DOMAIN, real_t_MonoClass, p_array.size());

	for (int i = 0; i < p_array.size(); i++) {
		mono_array_set(ret, real_t, i, p_array[i]);
	}

	return ret;
}

RealArray mono_array_to_RealArray(MonoArray *p_array)
{
	RealArray ret;
	int length = mono_array_length(p_array);

	for (int i = 0; i < length; i++) {
		real_t elem = mono_array_get(p_array, real_t, i);
		ret.push_back(elem);
	}

	return ret;
}

MonoArray *StringArray_to_mono_array(const StringArray &p_array)
{
	MonoArray *ret = mono_array_new(GDMONO_DOMAIN, CACHED_CLASS_RAW(String), p_array.size());

	for (int i = 0; i < p_array.size(); i++) {
		MonoString* boxed = mono_string_from_godot(p_array[i]);
		mono_array_set(ret, MonoString*, i, boxed);
	}

	return ret;
}

StringArray mono_array_to_StringArray(MonoArray *p_array)
{
	StringArray ret;
	int length = mono_array_length(p_array);

	for (int i = 0; i < length; i++) {
		MonoString* elem = mono_array_get(p_array, MonoString*, i);
		ret.push_back(mono_string_to_godot(elem));
	}

	return ret;
}

MonoArray *ColorArray_to_mono_array(const ColorArray &p_array)
{
	MonoArray *ret = mono_array_new(GDMONO_DOMAIN, CACHED_CLASS_RAW(Color), p_array.size());

	for (int i = 0; i < p_array.size(); i++) {
#ifdef YOLOCOPY
		mono_array_set(ret, Color, i, p_array[i]);
#else
		real_t *raw = (real_t*)mono_array_addr_with_size(ret, sizeof(real_t) * 4, i);
		const Color& elem = p_array[i];
		raw[0] = elem.r;
		raw[4] = elem.g;
		raw[8] = elem.b;
		raw[12] = elem.a;
#endif
	}

	return ret;
}

ColorArray mono_array_to_ColorArray(MonoArray *p_array)
{
	ColorArray ret;
	int length = mono_array_length(p_array);

	for (int i = 0; i < length; i++) {
		real_t* raw_elem = mono_array_get(p_array, real_t*, i);
		MARSHALLED_IN(Color, raw_elem, elem);
		ret.push_back(elem);
	}

	return ret;
}

MonoArray *Vector2Array_to_mono_array(const Vector2Array &p_array)
{
	MonoArray *ret = mono_array_new(GDMONO_DOMAIN, CACHED_CLASS_RAW(Vector2), p_array.size());

	for (int i = 0; i < p_array.size(); i++) {
#ifdef YOLOCOPY
		mono_array_set(ret, Vector2, i, p_array[i]);
#else
		real_t *raw = (real_t*)mono_array_addr_with_size(ret, sizeof(real_t) * 2, i);
		const Vector2& elem = p_array[i];
		raw[0] = elem.x;
		raw[4] = elem.y;
#endif
	}

	return ret;
}

Vector2Array mono_array_to_Vector2Array(MonoArray *p_array)
{
	Vector2Array ret;
	int length = mono_array_length(p_array);

	for (int i = 0; i < length; i++) {
		real_t* raw_elem = mono_array_get(p_array, real_t*, i);
		MARSHALLED_IN(Vector2, raw_elem, elem);
		ret.push_back(elem);
	}

	return ret;
}

MonoArray *Vector3Array_to_mono_array(const Vector3Array &p_array)
{
	MonoArray *ret = mono_array_new(GDMONO_DOMAIN, CACHED_CLASS_RAW(Vector3), p_array.size());

	for (int i = 0; i < p_array.size(); i++) {
#ifdef YOLOCOPY
		mono_array_set(ret, Vector3, i, p_array[i]);
#else
		real_t *raw = (real_t*)mono_array_addr_with_size(ret, sizeof(real_t) * 3, i);
		const Vector3& elem = p_array[i];
		raw[0] = elem.x;
		raw[4] = elem.y;
		raw[8] = elem.z;
#endif
	}

	return ret;
}

Vector3Array mono_array_to_Vector3Array(MonoArray *p_array)
{
	Vector3Array ret;
	int length = mono_array_length(p_array);

	for (int i = 0; i < length; i++) {
		real_t* raw_elem = mono_array_get(p_array, real_t*, i);
		MARSHALLED_IN(Vector3, raw_elem, elem);
		ret.push_back(elem);
	}

	return ret;
}

MonoObject *Dictionary_to_mono_object(const Dictionary &p_dict)
{
	MonoArray* keys = mono_array_new(GDMONO_DOMAIN, CACHED_CLASS_RAW(MonoObject), p_dict.size());
	MonoArray* values = mono_array_new(GDMONO_DOMAIN, CACHED_CLASS_RAW(MonoObject), p_dict.size());

	int i = 0;
	const Variant *dkey = NULL;
	while((dkey = p_dict.next(dkey))) {
		mono_array_set(keys, MonoObject*, i, variant_to_mono_object(dkey));
		mono_array_set(values, MonoObject*, i, variant_to_mono_object(p_dict[*dkey]));
		i++;
	}

	GDMonoUtils::ArraysToDictFunc arrays_to_dict = CACHED_METHOD_THUNK(MarshalUtils, ArraysToDictionary);

	MonoObject* exc;
	MonoObject* ret = arrays_to_dict(keys, values, &exc);

	if (exc) {
		mono_print_unhandled_exception(exc);
		ERR_FAIL_V(NULL);
	}

	return ret;
}

Dictionary mono_object_to_Dictionary(MonoObject *p_dict)
{
	Dictionary ret;

	GDMonoUtils::DictToArraysFunc dict_to_arrays = CACHED_METHOD_THUNK(MarshalUtils, DictionaryToArrays);

	MonoArray* keys = NULL;
	MonoArray* values = NULL;
	MonoObject* exc = NULL;
	dict_to_arrays(p_dict, &keys, &values, &exc);

	if (exc) {
		mono_print_unhandled_exception(exc);
		ERR_FAIL_V(Dictionary());
	}

	int length = mono_array_length(keys);

	for (int i = 0; i < length; i++) {
		MonoObject* key_obj = mono_array_get(keys, MonoObject*, i);
		MonoObject* value_obj = mono_array_get(values, MonoObject*, i);

		Variant key = key_obj ? mono_object_to_variant(key_obj) : Variant();
		Variant value = value_obj ? mono_object_to_variant(value_obj) : Variant();

		ret[key] = value;
	}

	return ret;
}

}
