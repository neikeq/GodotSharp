#include "gd_mono_utils.h"

#include "core/reference.h"

#include "csharp_script.h"
#include "gd_mono.h"
#include "gd_mono_class.h"

GDMonoUtils::ClassCache GDMonoUtils::cache;

void GDMonoUtils::ClassCache::clear()
{
	cache.object_system = NULL;
	cache.handle_ref = NULL;
	cache.internal_helpers = NULL;
	cache.variant = NULL;
	cache.vector2 = NULL;
	cache.matrix32 = NULL;
	cache.node_path = NULL;
	cache.object_godot = NULL;
	cache.node = NULL;
	cache.control = NULL;
	cache.spatial = NULL;
}

void GDMonoUtils::update_cache()
{
	cache.object_system = GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_object_class());
	cache.handle_ref = GDMono::get_singleton()->get_corlib_assembly()->get_class("System", "HandleRef");
	cache.internal_helpers = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "InternalHelpers");
	cache.variant = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Variant");
	cache.vector2 = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Vector2");
	cache.matrix32 = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Matrix32");
	cache.node_path = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "NodePath");
	cache.object_godot = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Object");
	cache.node = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Node");
	cache.control = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Control");
	cache.spatial = GDMono::get_singleton()->get_api_assembly()->get_class("GodotEngine", "Spatial");
}

void GDMonoUtils::clear_cache()
{
	cache.clear();
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
	MonoObject *mono_object = mono_object_new(mono_domain_get(), cache.variant->get_raw_class());

	if (!mono_object)
		return NULL;

	// Call default constructor if any
	mono_runtime_object_init(mono_object);

	GDMonoMethod* ctor_method = cache.variant->get_method_with_desc(":.ctor(intptr,bool)", false);

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
			String val_str = p_var->operator String();

			MonoString* mono_string = NULL;

			if (sizeof(CharType) == 2) {
				mono_string = mono_string_from_utf16((mono_unichar2*)val_str.c_str());
			} else {
				mono_string = mono_string_new(mono_domain_get(), val_str.utf8().get_data());
			}

			return (MonoObject*)mono_string;
		} break;

		case MONO_TYPE_VALUETYPE: {
			// Vector2
			if (p_type.type_class == GDMonoUtils::cache.vector2) {
				Vector2 val = p_var->operator Vector2();
				return mono_value_box(mono_domain_get(), GDMonoUtils::cache.vector2->get_raw_class(), &val);
			}
		} break;

		case MONO_TYPE_CLASS: {
			GDMonoClass *type_class = p_type.type_class;

			// Object
			if (GDMonoUtils::cache.object_system->is_assignable_from(type_class)) {
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
			if (GDMonoUtils::cache.variant->is_assignable_from(type_class)) {
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
			MonoObject *exec = NULL;
			MonoString *mono_string = mono_object_to_string(p_var, &exec);

			if (exec) {
				mono_print_unhandled_exception(exec);
			} else {
				return String::utf8(mono_string_to_utf8(mono_string));
			}
		} break;

		case MONO_TYPE_VALUETYPE: {
			GDMonoClass *type_class = p_type.type_class;

			// Vector2
			if (cache.vector2 == type_class) {
				return *static_cast<Vector2*>(mono_object_unbox(p_var));
			}
		} break;

		case MONO_TYPE_CLASS: {
			GDMonoClass *type_class = p_type.type_class;

			// Object
			if (cache.object_godot->is_assignable_from(type_class)) {
				GDMonoField *cptr_field = cache.object_godot->get_field("swigCPtr");

				ERR_FAIL_COND_V(!cptr_field, Variant());

				MonoObject *handle_ref = cptr_field->get_value(p_var);
				GDMonoField *ptr_field = cache.handle_ref->get_field("handle");
				MonoObject *ptr_to_unmanaged = ptr_field->get_value(handle_ref);

				if (!ptr_to_unmanaged)
					break; // Variant()

				Object* object_ptr = static_cast<Object*>(UNBOX_PTR(ptr_to_unmanaged));

				if (!object_ptr)
					break; // Variant()

				return object_ptr;
			}

			// Variant
			if (cache.variant->is_assignable_from(type_class)) {
				GDMonoField *cptr_field = type_class->get_field("swigCPtr");

				ERR_FAIL_COND_V(!cptr_field, Variant());

				MonoObject *handle_ref = cptr_field->get_value(p_var);
				GDMonoField *ptr_field = cache.handle_ref->get_field("handle");
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
