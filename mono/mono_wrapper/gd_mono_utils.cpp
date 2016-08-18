#include "gd_mono_utils.h"

#include "core/reference.h"

#include "csharp_script.h"
#include "gd_mono.h"
#include "gd_mono_class.h"

GDMonoUtils::ClassCache GDMonoUtils::cache;

void GDMonoUtils::ClassCache::clear()
{
	cache.MonoObject = NULL;
	cache.HandleRef = NULL;
	cache.InternalHelpers = NULL;
	cache.Variant = NULL;
	cache.Vector2 = NULL;
	cache.Matrix32 = NULL;
	cache.NodePath = NULL;
	cache.GodotObject = NULL;
	cache.Node = NULL;
	cache.Control = NULL;
	cache.Spatial = NULL;
}

void GDMonoUtils::update_cache()
{
	cache.MonoObject = GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_object_class());
	cache.HandleRef = GDMono::get_singleton()->get_corlib_assembly()->get_class("System", "HandleRef");
	cache.InternalHelpers = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "InternalHelpers");
	cache.Variant = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Variant");
	cache.Vector2 = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Vector2");
	cache.Rect2 = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Rect2");
	cache.Matrix32 = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Matrix32");
	cache.Vector3 = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Vector3");
	cache.Matrix3 = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Matrix3");
	cache.Quat = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Quat");
	cache.Transform = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Transform");
	cache.NodePath = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "NodePath");
	cache.GodotObject = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Object");
	cache.Node = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Node");
	cache.Control = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Control");
	cache.Spatial = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Spatial");
}

void GDMonoUtils::clear_cache()
{
	cache.clear();
}

String GDMonoUtils::mono_to_utf16_string(MonoString *p_mono_string)
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

String GDMonoUtils::mono_to_utf8_string(MonoString *p_mono_string)
{
	MonoError error;
	char* utf8 = mono_string_to_utf8_checked(p_mono_string, &error);

	ERR_EXPLAIN("Conversion of MonoString to UTF8 failed.");
	ERR_FAIL_COND_V(!mono_error_ok(&error), String());

	String ret = String::utf8(utf8);

	mono_free(utf8);

	return ret;
}

void GDMonoUtils::set_main_thread(MonoThread *p_thread)
{
	mono_thread_set_main(p_thread);
}

MonoThread *GDMonoUtils::get_current_thread()
{
	return mono_thread_current();
}

GDMonoClass *GDMonoUtils::get_object_class(MonoObject *p_object)
{
	return GDMono::get_singleton()->get_class(mono_object_get_class(p_object));
}

GDMonoClass *GDMonoUtils::type_get_proxy_class(const String &p_type)
{
	String class_name = p_type;

	// TODO There has to be a way to avoid this...
	if (class_name.begins_with("_"))
		class_name = class_name.substr(1, class_name.length());

	return GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", class_name);
}

GDMonoClass *GDMonoUtils::get_class_native_base(GDMonoClass* p_class)
{
	GDMonoClass* klass = p_class;

	while ((klass = klass->get_parent_class()) != NULL) {
		if (klass->get_assembly() == GDMono::get_singleton()->get_api_assembly() && klass->get_namespace() == "GodotEngine")
			return klass;
	}

	return NULL;
}

MonoObject *GDMonoUtils::variant_to_managed_variant(const Variant *p_var)
{
	MonoObject *mono_object = mono_object_new(mono_domain_get(), cache.Variant->get_raw_class());

	if (!mono_object)
		return NULL;

	// Call default constructor if any
	mono_runtime_object_init(mono_object);

	GDMonoMethod* ctor_method = cache.Variant->get_method_with_desc(":.ctor(intptr,bool)", false);

	bool memown = true;

	void *params[2];
	params[0] = &p_var;
	params[1] = &memown;
	ctor_method->invoke_raw(mono_object, params);

	return mono_object;
}

MonoObject *GDMonoUtils::variant_to_mono_object(const Variant *p_var, const ManagedType &p_type)
{
	switch (p_type.type_encoding) {
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

		case MONO_TYPE_STRING: {
			const String& varstr = p_var->operator String();

			if (sizeof(CharType) == 2) {
				return (MonoObject*)mono_from_utf16_string(varstr);
			}

			return (MonoObject*)mono_from_utf8_string(varstr);
		} break;

		case MONO_TYPE_VALUETYPE: {
			GDMonoClass *tclass = p_type.type_class;

			if (tclass == CACHED_CLASS(Vector2)) {
				Vector2 val = p_var->operator Vector2();
				real_t raw[2] = { val.x, val.y };
				return mono_value_box(mono_domain_get(), RAW_CACHED_CLASS(Vector2), raw);
			}

			if (tclass == CACHED_CLASS(Rect2)) {
				Rect2 val = p_var->operator Rect2();
				real_t raw[4] = { val.pos.x, val.pos.y, val.size.width, val.size.height };
				return mono_value_box(mono_domain_get(), RAW_CACHED_CLASS(Rect2), raw);
			}

			if (tclass == CACHED_CLASS(Matrix32)) {
				Matrix32 val = p_var->operator Matrix32();
				real_t raw[6] = { val[0].x, val[0].y, val[1].x, val[1].y, val[2].x, val[2].y };
				return mono_value_box(mono_domain_get(), RAW_CACHED_CLASS(Matrix32), raw);
			}

			if (tclass == CACHED_CLASS(Vector3)) {
				Vector3 val = p_var->operator Vector3();
				real_t raw[3] = { val.x, val.y, val.z };
				return mono_value_box(mono_domain_get(), RAW_CACHED_CLASS(Vector3), raw);
			}

			if (tclass == CACHED_CLASS(Matrix3)) {
				Matrix3 val = p_var->operator Matrix3();
				real_t raw[9] = {
					val[0].x, val[0].y, val[0].z,
					val[1].x, val[1].y, val[1].z,
					val[2].x, val[2].y, val[2].z
				};
				return mono_value_box(mono_domain_get(), RAW_CACHED_CLASS(Matrix3), raw);
			}

			if (tclass == CACHED_CLASS(Quat)) {
				Quat val = p_var->operator Quat();
				real_t raw[4] = { val.x, val.y, val.z, val.w };
				return mono_value_box(mono_domain_get(), RAW_CACHED_CLASS(Quat), raw);
			}

			if (tclass == CACHED_CLASS(Transform)) {
				Transform val = p_var->operator Transform();
				real_t raw[12] = {
					val.basis[0].x, val.basis[0].y, val.basis[0].z,
					val.basis[1].x, val.basis[1].y, val.basis[1].z,
					val.basis[2].x, val.basis[2].y, val.basis[2].z,
					val.origin.x, val.origin.y, val.origin.z
				};
				return mono_value_box(mono_domain_get(), RAW_CACHED_CLASS(Transform), raw);
			}
		} break;

		case MONO_TYPE_CLASS: {
			GDMonoClass *type_class = p_type.type_class;

			// Object
			if (CACHED_CLASS(GodotObject)->is_assignable_from(type_class)) {
				Object* unmanaged = p_var->operator Object *();
				MonoObject* managed = unmanaged_get_managed(unmanaged);

				if (!managed) {
					GDMonoClass* native = NULL;

					if (type_class->get_assembly() == GDMono::get_singleton()->get_api_assembly())
						native = type_class;
					else
						native = GDMonoUtils::get_class_native_base(type_class);

					if (native)
						managed = create_managed_for_unmanaged_object(type_class, native, unmanaged);
				}

				return managed;
			}

			// Variant
			if (CACHED_CLASS(Variant)->is_assignable_from(type_class)) {
				return variant_to_managed_variant(p_var);
			}
		} break;
	}

	return NULL;
}

Variant GDMonoUtils::mono_object_to_variant(MonoObject *p_var, const ManagedType &p_type)
{
	switch (p_type.type_encoding) {
		case MONO_TYPE_BOOLEAN:
			return UNBOX_BOOLEAN(p_var) == 1;

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

		case MONO_TYPE_STRING: {
			if (sizeof(CharType) == 2) {
				return mono_to_utf16_string((MonoString*)p_var);
			}

			return mono_to_utf8_string((MonoString*)p_var);
		} break;

		case MONO_TYPE_VALUETYPE: {
			GDMonoClass *tclass = p_type.type_class;

			if (tclass == CACHED_CLASS(Vector2)) {
				float* raw = UNBOX_FLOAT_PTR(p_var);
				return Vector2(raw[0], raw[1]);
			}

			if (tclass == CACHED_CLASS(Rect2)) {
				float* raw = UNBOX_FLOAT_PTR(p_var);
				return Rect2(raw[0], raw[1], raw[2], raw[3]);
			}

			if (tclass == CACHED_CLASS(Matrix32)) {
				float* raw = UNBOX_FLOAT_PTR(p_var);
				Matrix32 m;
				m[0][0] = raw[0];
				m[0][1] = raw[1];
				m[1][0] = raw[2];
				m[1][1] = raw[3];
				m[2][0] = raw[4];
				m[2][1] = raw[5];
				return m;
			}

			if (tclass == CACHED_CLASS(Vector3)) {
				float* raw = UNBOX_FLOAT_PTR(p_var);
				return Vector3(raw[0], raw[1], raw[2]);
			}

			if (tclass == CACHED_CLASS(Matrix3)) {
				float* raw = UNBOX_FLOAT_PTR(p_var);
				Matrix3 m;
				m.set(raw[0], raw[1], raw[2], raw[3], raw[4], raw[5], raw[6], raw[7], raw[8]);
				return m;
			}

			if (tclass == CACHED_CLASS(Quat)) {
				float* raw = UNBOX_FLOAT_PTR(p_var);
				return Quat(raw[0], raw[1], raw[2], raw[3]);
			}

			if (tclass == CACHED_CLASS(Transform)) {
				float* raw = UNBOX_FLOAT_PTR(p_var);
				Transform t;
				t.basis.set(raw[0], raw[1], raw[2], raw[3], raw[4], raw[5], raw[6], raw[7], raw[8]);
				t.origin.x = raw[9];
				t.origin.y = raw[10];
				t.origin.z = raw[11];
				return t;
			}
		} break;

		case MONO_TYPE_CLASS: {
			GDMonoClass *type_class = p_type.type_class;

			// Object
			if (cache.GodotObject->is_assignable_from(type_class)) {
				GDMonoField *cptr_field = cache.GodotObject->get_field("swigCPtr");

				ERR_FAIL_COND_V(!cptr_field, Variant());

				MonoObject *handle_ref = cptr_field->get_value(p_var);
				GDMonoField *ptr_field = cache.HandleRef->get_field("handle");
				MonoObject *ptr_to_unmanaged = ptr_field->get_value(handle_ref);

				if (!ptr_to_unmanaged)
					break; // Variant()

				Object* object_ptr = static_cast<Object*>(UNBOX_PTR(ptr_to_unmanaged));

				if (!object_ptr)
					break; // Variant()

				return object_ptr;
			}

			// Variant
			if (cache.Variant->is_assignable_from(type_class)) {
				GDMonoField *cptr_field = type_class->get_field("swigCPtr");

				ERR_FAIL_COND_V(!cptr_field, Variant());

				MonoObject *handle_ref = cptr_field->get_value(p_var);
				GDMonoField *ptr_field = cache.HandleRef->get_field("handle");
				MonoObject *ptr_to_unmanaged = ptr_field->get_value(handle_ref);

				if (!ptr_to_unmanaged)
					break; // Variant()

				Variant* variant_ptr = static_cast<Variant*>(UNBOX_PTR(ptr_to_unmanaged));

				if (!variant_ptr)
					break; // Variant()

				return *variant_ptr;
			}
		} break;
	}

	return Variant();
}

MonoObject *GDMonoUtils::create_managed_for_unmanaged_object(GDMonoClass *p_class, GDMonoClass *p_native, Object *p_object)
{
	String native_name = p_native->get_name();
	String object_type = p_object->get_type_name();

	// TODO There has to be a way to avoid this...
	if (object_type.begins_with("_"))
		object_type = object_type.substr(1, object_type.length());

	if (!ObjectTypeDB::is_type(object_type, native_name)) {
		ERR_EXPLAIN("Type inherits from native type '" + native_name + "', so it can't be instanced in object of type: '" + p_object->get_type() + "'");
		ERR_FAIL_V(NULL);
	}

	MonoObject *mono_object = mono_object_new(GDMono::get_singleton()->get_domain(), p_class->get_raw_class());

	ERR_FAIL_COND_V(!mono_object, NULL);


	// Initialize pointers in the native base classes before constructing the object
	GDMonoMethod* native_init_method = p_native->get_method_with_desc(":internal_init(intptr)", false);

	void *params[1];
	params[0] = &p_object;
	native_init_method->invoke_raw(mono_object, params);

	// Call default constructor if any
	mono_runtime_object_init(mono_object);

	// Tie managed to unmanaged
	bool strong_handle = true;

	if (p_object->cast_to<Reference>()) {
		strong_handle = p_object->get_script_instance() && dynamic_cast<CSharpInstance*>(p_object->get_script_instance());
	}

	Ref<CSharpGCHandle> gchandle(memnew(CSharpGCHandle(mono_object, !strong_handle)));
	p_object->set_meta("__mono_gchandle__", gchandle);

	return mono_object;
}
