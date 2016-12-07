#include "gd_mono_utils.h"

#include "core/reference.h"

#include "../csharp_script.h"
#include "gd_mono.h"
#include "gd_mono_class.h"

namespace GDMonoUtils
{

Cache cache;

void Cache::clear()
{
	class_MonoObject = NULL;
	class_int32_t = NULL;
	class_uint8_t = NULL;
	class_float = NULL;
	class_double = NULL;
	class_String = NULL;
	class_Vector2 = NULL;
	class_Rect2 = NULL;
	class_Matrix32 = NULL;
	class_Vector3 = NULL;
	class_Matrix3 = NULL;
	class_Quat = NULL;
	class_Transform = NULL;
	class_AABB = NULL;
	class_Color = NULL;
	class_Plane = NULL;
	class_InputEvent = NULL;
	class_NodePath = NULL;
	class_Image = NULL;
	class_RID = NULL;
	class_GodotObject = NULL;
	class_Node = NULL;
	class_Control = NULL;
	class_Spatial = NULL;
	class_WeakRef = NULL;
	rawclass_Dictionary = NULL;
	class_List = NULL;
	class_PropertyInfo = NULL;
	class_Tool = NULL;
	class_MarshalUtils = NULL;

	field_GodotObject_ptr = NULL;
	field_NodePath_ptr = NULL;
	field_Image_ptr = NULL;
	field_RID_ptr = NULL;
	field_PropertyInfo_type = NULL;
	field_PropertyInfo_hint = NULL;
	field_PropertyInfo_hint_string = NULL;
	field_PropertyInfo_usage = NULL;

	thunk_MarshalUtils_GetDictionaryType = NULL;
	thunk_MarshalUtils_DictionaryToArrays = NULL;
	thunk_MarshalUtils_ArraysToDictionary = NULL;
}

#define GODOT_API_CLASS(m_class) GDMono::get_singleton()->get_api_assembly()->get_class(BINDINGS_NAMESPACE, #m_class);

void update_cache()
{
	cache.class_MonoObject = GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_object_class());
	cache.class_int32_t = GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_int32_class());
	cache.class_uint8_t = GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_byte_class());
	cache.class_float = GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_single_class());
	cache.class_double = GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_double_class());
	cache.class_String = GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_string_class());
	cache.class_Vector2 = GODOT_API_CLASS(Vector2);
	cache.class_Rect2 = GODOT_API_CLASS(Rect2);
	cache.class_Matrix32 = GODOT_API_CLASS(Matrix32);
	cache.class_Vector3 = GODOT_API_CLASS(Vector3);
	cache.class_Matrix3 = GODOT_API_CLASS(Matrix3);
	cache.class_Quat = GODOT_API_CLASS(Quat);
	cache.class_Transform = GODOT_API_CLASS(Transform);
	cache.class_AABB = GODOT_API_CLASS(AABB);
	cache.class_Color = GODOT_API_CLASS(Color);
	cache.class_Plane = GODOT_API_CLASS(Plane);
	cache.class_InputEvent = GODOT_API_CLASS(InputEvent);
	cache.class_NodePath = GODOT_API_CLASS(NodePath);
	cache.class_Image = GODOT_API_CLASS(NodePath);
	cache.class_RID = GODOT_API_CLASS(NodePath);
	cache.class_GodotObject = GODOT_API_CLASS(Object);
	cache.class_Node = GODOT_API_CLASS(Node);
	cache.class_Control = GODOT_API_CLASS(Control);
	cache.class_Spatial = GODOT_API_CLASS(Spatial);
	cache.class_WeakRef = GODOT_API_CLASS(WeakRef);
	cache.class_List = GDMono::get_singleton()->get_corlib_assembly()->get_class("System.Collections.Generic", "List");
	cache.class_PropertyInfo = GODOT_API_CLASS(PropertyInfo);
	cache.class_Tool = GODOT_API_CLASS(Tool);
	cache.class_MarshalUtils = GODOT_API_CLASS(MarshalUtils);

	cache.field_GodotObject_ptr = CACHED_CLASS(GodotObject)->get_field(BINDINGS_PTR_FIELD);
	cache.field_NodePath_ptr = CACHED_CLASS(NodePath)->get_field(BINDINGS_PTR_FIELD);
	cache.field_Image_ptr = CACHED_CLASS(Image)->get_field(BINDINGS_PTR_FIELD);
	cache.field_RID_ptr = CACHED_CLASS(RID)->get_field(BINDINGS_PTR_FIELD);
	cache.field_PropertyInfo_type = CACHED_CLASS(PropertyInfo)->get_field("type");
	cache.field_PropertyInfo_hint = CACHED_CLASS(PropertyInfo)->get_field("hint");
	cache.field_PropertyInfo_hint_string = CACHED_CLASS(PropertyInfo)->get_field("hint_string");
	cache.field_PropertyInfo_usage = CACHED_CLASS(PropertyInfo)->get_field("usage");

	cache.thunk_MarshalUtils_GetDictionaryType = (GetDictTypeFunc)CACHED_CLASS(MarshalUtils)->get_method("GetDictionaryType", 0)->get_thunk();
	cache.thunk_MarshalUtils_DictionaryToArrays = (DictToArraysFunc)CACHED_CLASS(MarshalUtils)->get_method("DictionaryToArrays", 3)->get_thunk();
	cache.thunk_MarshalUtils_ArraysToDictionary = (ArraysToDictFunc)CACHED_CLASS(MarshalUtils)->get_method("ArraysToDictionary", 2)->get_thunk();

	MonoObject* exc;
	MonoReflectionType* dict_refl_type = cache.thunk_MarshalUtils_GetDictionaryType(&exc);

	if (!exc) {
		MonoType* dict_type = mono_reflection_type_get_type(dict_refl_type);
		cache.rawclass_Dictionary = mono_class_from_mono_type(dict_type);
	} else {
		ERR_PRINT("Could not get the Dictionary class. This is bad!");
	}
}

void clear_cache()
{
	cache.clear();
}

MonoObject *unmanaged_get_managed(Object *unmanaged)
{
	if (unmanaged) {
		ScriptInstance *script_instance = unmanaged->get_script_instance();

		if (script_instance) {
			CSharpInstance *cs_instance = castCSharpInstance(script_instance);

			if (cs_instance) {
				return cs_instance->get_mono_object();
			}
		}

		if (unmanaged->has_meta("__mono_gchandle__")) {
			Ref<CSharpGCHandle> gchandle = unmanaged->get_meta("__mono_gchandle__");

			if (gchandle.is_valid())
				return gchandle->get_target();
		}

		GDMonoClass *type_class = type_get_proxy_class(unmanaged->get_type());

		if (type_class)
			return create_managed_for_godot_object(type_class, type_class->get_name(), unmanaged);
	}

	return NULL;
}

void tie_managed_to_unmanaged(MonoObject* managed, Object *unmanaged)
{
	if (unmanaged) {
		Ref<CSharpGCHandle> gchandle(memnew(CSharpGCHandle(managed)));
		unmanaged->set_meta("__mono_gchandle__", gchandle);

		if (unmanaged->get_script().is_null()) {
			// All mono objects whose state needs to be kept must have a script
			GDMonoClass* klass = get_object_class(managed);
			Ref<CSharpScript> script = CSharpScript::create_for_managed_type(klass);
			unmanaged->set_script(script.get_ref_ptr());
		}
	}
}

void set_main_thread(MonoThread *p_thread)
{
	mono_thread_set_main(p_thread);
}

MonoThread *get_current_thread()
{
	return mono_thread_current();
}

GDMonoClass *get_object_class(MonoObject *p_object)
{
	return GDMono::get_singleton()->get_class(mono_object_get_class(p_object));
}

GDMonoClass *type_get_proxy_class(const String &p_type)
{
	String class_name = p_type;

	if (class_name[0] == '_')
		class_name = class_name.substr(1, class_name.length());

	return GDMono::get_singleton()->get_api_assembly()->get_class(BINDINGS_NAMESPACE, class_name);
}

GDMonoClass *get_class_native_base(GDMonoClass* p_class)
{
	GDMonoClass* klass = p_class;

	while ((klass = klass->get_parent_class()) != NULL) {
		if (klass->get_assembly() == GDMono::get_singleton()->get_api_assembly())
			return klass;
	}

	return NULL;
}

MonoObject *create_managed_for_godot_object(GDMonoClass *p_class, const String& p_native, Object *p_object)
{
	String native_name = p_native;
	String object_type = p_object->get_type_name();

	if (object_type[0] == '_')
		object_type = object_type.substr(1, object_type.length());

	if (!ObjectTypeDB::is_type(object_type, native_name)) {
		ERR_EXPLAIN("Type inherits from native type '" + native_name + "', so it can't be instanced in object of type: '" + p_object->get_type() + "'");
		ERR_FAIL_V(NULL);
	}

	MonoObject *mono_object = mono_object_new(GDMONO_DOMAIN, p_class->get_raw());
	ERR_FAIL_COND_V(!mono_object, NULL);

	cache.field_GodotObject_ptr->set_value_raw(mono_object, p_object);

	// Construct
	mono_runtime_object_init(mono_object);

	// Tie managed to unmanaged
	bool strong_handle = true;
	Reference* ref = p_object->cast_to<Reference>();

	if (ref) {
		if (!ref->get_script_instance() || !castCSharpInstance(ref->get_script_instance())) {
			strong_handle = false;
			// The managed side will unreference it when disposed
			ref->reference();
		}
		// Otherwise the script instance will take care of its lifetime
	}

	Ref<CSharpGCHandle> gchandle(memnew(CSharpGCHandle(mono_object, !strong_handle)));
	p_object->set_meta("__mono_gchandle__", gchandle);

	return mono_object;
}

MonoObject *create_managed_from(const NodePath& p_from)
{
	MonoObject *mono_object = mono_object_new(GDMONO_DOMAIN, CACHED_CLASS_RAW(NodePath));
	ERR_FAIL_COND_V(!mono_object, NULL);

	// Construct
	mono_runtime_object_init(mono_object);

	CACHED_FIELD(NodePath, ptr)->set_value_raw(mono_object, memnew(NodePath(p_from)));

	return mono_object;
}

MonoObject *create_managed_from(const Image& p_from)
{
	MonoObject *mono_object = mono_object_new(GDMONO_DOMAIN, CACHED_CLASS_RAW(Image));
	ERR_FAIL_COND_V(!mono_object, NULL);

	// Construct
	mono_runtime_object_init(mono_object);

	CACHED_FIELD(Image, ptr)->set_value_raw(mono_object, memnew(Image(p_from)));

	return mono_object;
}

MonoObject *create_managed_from(const RID& p_from)
{
	MonoObject *mono_object = mono_object_new(GDMONO_DOMAIN, CACHED_CLASS_RAW(RID));
	ERR_FAIL_COND_V(!mono_object, NULL);

	// Construct
	mono_runtime_object_init(mono_object);

	CACHED_FIELD(RID, ptr)->set_value_raw(mono_object, memnew(RID(p_from)));

	return mono_object;
}

}
