#include "gd_mono_field.h"

#include "gd_mono_class.h"

void GDMonoField::set_value(MonoObject *p_object, const Variant &p_value)
{
	switch (type.type_encoding) {
		case MONO_TYPE_BOOLEAN: {
			bool val = p_value.operator bool();
			mono_field_set_value(p_object, mono_field, &val);
		} break;

		case MONO_TYPE_CHAR: {
			wchar_t val = p_value.operator CharType();
			mono_field_set_value(p_object, mono_field, &val);
		} break;

		case MONO_TYPE_I1: {
			char val = p_value.operator signed char();
			mono_field_set_value(p_object, mono_field, &val);
		} break;
		case MONO_TYPE_I2: {
			short val = p_value.operator signed short();
			mono_field_set_value(p_object, mono_field, &val);
		} break;
		case MONO_TYPE_I4: {
			int val = p_value.operator signed int();
			mono_field_set_value(p_object, mono_field, &val);
		} break;
		case MONO_TYPE_I8: {
			int64_t val = p_value.operator int64_t();
			mono_field_set_value(p_object, mono_field, &val);
		} break;

		case MONO_TYPE_U1: {
			char val = p_value.operator unsigned char();
			mono_field_set_value(p_object, mono_field, &val);
		} break;
		case MONO_TYPE_U2: {
			short val = p_value.operator unsigned short();
			mono_field_set_value(p_object, mono_field, &val);
		} break;
		case MONO_TYPE_U4: {
			int val = p_value.operator unsigned int();
			mono_field_set_value(p_object, mono_field, &val);
		} break;
		case MONO_TYPE_U8: {
			uint64_t val = p_value.operator uint64_t();
			mono_field_set_value(p_object, mono_field, &val);
		} break;

		case MONO_TYPE_R4: {
			float val = p_value.operator float();
			mono_field_set_value(p_object, mono_field, &val);
		} break;

		case MONO_TYPE_R8: {
			double val = p_value.operator double();
			mono_field_set_value(p_object, mono_field, &val);
		} break;

		case MONO_TYPE_STRING: {
			String val_str = p_value.operator String();

			MonoString* mono_string = NULL;

			if (sizeof(CharType) == 2) {
				mono_string = mono_string_from_utf16((mono_unichar2*)val_str.c_str());
			} else {
				mono_string = mono_string_new(mono_domain_get(), val_str.utf8().get_data());
			}

			mono_field_set_value(p_object, mono_field, mono_string);
		} break;

		case MONO_TYPE_VALUETYPE: {
			// Vector2
			if (GDMonoUtils::cache.vector2 == type.type_class) {
				Vector2 val = p_value.operator Vector2();
				mono_field_set_value(p_object, mono_field, &val);
				break;
			}
		} break;

		case MONO_TYPE_CLASS: {
			GDMonoClass* type_class = type.type_class;

			// Object
			if (GDMonoUtils::cache.object_godot->is_assignable_from(type_class)) {
				Object* unmanaged = p_value.operator Object *();
				MonoObject* managed = unmanaged_get_managed(unmanaged);

				if (!managed) {
					GDMonoClass* native = NULL;
					if (type_class->get_assembly() == GDMono::get_singleton()->get_api_assembly())
						native = type_class;
					else
						native = GDMonoUtils::get_class_native_base(type_class);

					if (native)
						managed = GDMonoUtils::create_managed_for_unmanaged_object(type_class, native, unmanaged);
				}

				mono_field_set_value(p_object, mono_field, managed);
				break;
			}

			// Variant
			if (GDMonoUtils::cache.variant->is_assignable_from(type_class)) {
				MonoObject* managed =  GDMonoUtils::variant_to_managed_variant(&p_value);
				mono_field_set_value(p_object, mono_field, managed);
				break;
			}
		} break;
	}
}

MonoObject *GDMonoField::get_value(MonoObject *p_object)
{
	return mono_field_get_value_object(GDMono::get_singleton()->get_domain(), mono_field, p_object);
}

GDMonoField::GDMonoField(MonoClassField* p_raw_field)
{
	mono_field = p_raw_field;
	MonoType* field_type = mono_field_get_type(mono_field);
	type.type_encoding = mono_type_get_type(field_type);
	MonoClass* field_type_class = mono_class_from_mono_type(field_type);
	type.type_class = GDMono::get_singleton()->get_class(field_type_class);
}

