/**********************************************************************************/
/* gd_mono_utils.cpp                                                              */
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
#include "gd_mono_utils.h"

#include "global_config.h"
#include "os/dir_access.h"
#include "reference.h"

#include "../csharp_script.h"
#include "gd_mono.h"
#include "gd_mono_class.h"

namespace GDMonoUtils {

MonoCache mono_cache;

#define CACHE_AND_CHECK(m_var, m_val)                                                        \
	{                                                                                        \
		m_var = m_val;                                                                       \
		if (!m_var) ERR_PRINT("Mono Cache: Member " #m_var " is null. This is really bad!"); \
	}

#define CACHE_CLASS_AND_CHECK(m_class, m_val) CACHE_AND_CHECK(GDMonoUtils::mono_cache.class_##m_class, m_val)
#define CACHE_NS_CLASS_AND_CHECK(m_ns, m_class, m_val) CACHE_AND_CHECK(GDMonoUtils::mono_cache.class_##m_ns##_##m_class, m_val)
#define CACHE_RAW_MONO_CLASS_AND_CHECK(m_class, m_val) CACHE_AND_CHECK(GDMonoUtils::mono_cache.rawclass_##m_class, m_val)
#define CACHE_FIELD_AND_CHECK(m_class, m_field, m_val) CACHE_AND_CHECK(GDMonoUtils::mono_cache.field_##m_class##_##m_field, m_val)
#define CACHE_METHOD_THUNK_AND_CHECK(m_class, m_method, m_val) CACHE_AND_CHECK(GDMonoUtils::mono_cache.methodthunk_##m_class##_##m_method, m_val)

void MonoCache::clear_members() {
	class_MonoObject = NULL;
	class_bool = NULL;
	class_int8_t = NULL;
	class_int16_t = NULL;
	class_int32_t = NULL;
	class_int64_t = NULL;
	class_uint8_t = NULL;
	class_uint16_t = NULL;
	class_uint32_t = NULL;
	class_uint64_t = NULL;
	class_float = NULL;
	class_double = NULL;
	class_String = NULL;
	class_IntPtr = NULL;

	class_Vector2 = NULL;
	class_Rect2 = NULL;
	class_Transform2D = NULL;
	class_Vector3 = NULL;
	class_Basis = NULL;
	class_Quat = NULL;
	class_Transform = NULL;
	class_Rect3 = NULL;
	class_Color = NULL;
	class_Plane = NULL;
	class_NodePath = NULL;
	class_RID = NULL;
	class_GodotObject = NULL;
	class_Node = NULL;
	class_Control = NULL;
	class_Spatial = NULL;
	class_WeakRef = NULL;
	class_MarshalUtils = NULL;

	class_Export = NULL;
	field_Export_hint = NULL;
	field_Export_hint_string = NULL;
	field_Export_usage = NULL;
	class_Tool = NULL;
	class_Remote = NULL;
	class_Sync = NULL;
	class_Master = NULL;
	class_Slave = NULL;

	field_GodotObject_ptr = NULL;
	field_NodePath_ptr = NULL;
	field_Image_ptr = NULL;
	field_RID_ptr = NULL;

	methodthunk_MarshalUtils_DictionaryToArrays = NULL;
	methodthunk_MarshalUtils_ArraysToDictionary = NULL;
	methodthunk_Guid_NewGuid = NULL;
	methodthunk_GodotObject__AwaitedSignalCallback = NULL;
	methodthunk_SignalAwaiter_FailureCallback = NULL;
	methodthunk_GodotTaskScheduler_Activate = NULL;

	rawclass_Dictionary = NULL;

	sync_context_handle = Ref<MonoGCHandle>();
}

#define GODOT_API_CLASS(m_class) (GDMono::get_singleton()->get_api_assembly()->get_class(BINDINGS_NAMESPACE, #m_class))

void update_cache() {
	CACHE_CLASS_AND_CHECK(MonoObject, GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_object_class()));
	CACHE_CLASS_AND_CHECK(bool, GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_boolean_class()));
	CACHE_CLASS_AND_CHECK(int8_t, GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_sbyte_class()));
	CACHE_CLASS_AND_CHECK(int16_t, GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_int16_class()));
	CACHE_CLASS_AND_CHECK(int32_t, GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_int32_class()));
	CACHE_CLASS_AND_CHECK(int64_t, GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_int64_class()));
	CACHE_CLASS_AND_CHECK(uint8_t, GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_byte_class()));
	CACHE_CLASS_AND_CHECK(uint16_t, GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_uint16_class()));
	CACHE_CLASS_AND_CHECK(uint32_t, GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_uint32_class()));
	CACHE_CLASS_AND_CHECK(uint64_t, GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_uint64_class()));
	CACHE_CLASS_AND_CHECK(float, GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_single_class()));
	CACHE_CLASS_AND_CHECK(double, GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_double_class()));
	CACHE_CLASS_AND_CHECK(String, GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_string_class()));
	CACHE_CLASS_AND_CHECK(IntPtr, GDMono::get_singleton()->get_corlib_assembly()->get_class(mono_get_intptr_class()));
	CACHE_CLASS_AND_CHECK(Vector2, GODOT_API_CLASS(Vector2));
	CACHE_CLASS_AND_CHECK(Rect2, GODOT_API_CLASS(Rect2));
	CACHE_CLASS_AND_CHECK(Transform2D, GODOT_API_CLASS(Transform2D));
	CACHE_CLASS_AND_CHECK(Vector3, GODOT_API_CLASS(Vector3));
	CACHE_CLASS_AND_CHECK(Basis, GODOT_API_CLASS(Basis));
	CACHE_CLASS_AND_CHECK(Quat, GODOT_API_CLASS(Quat));
	CACHE_CLASS_AND_CHECK(Transform, GODOT_API_CLASS(Transform));
	CACHE_CLASS_AND_CHECK(Rect3, GODOT_API_CLASS(Rect3));
	CACHE_CLASS_AND_CHECK(Color, GODOT_API_CLASS(Color));
	CACHE_CLASS_AND_CHECK(Plane, GODOT_API_CLASS(Plane));
	CACHE_CLASS_AND_CHECK(NodePath, GODOT_API_CLASS(NodePath));
	CACHE_CLASS_AND_CHECK(RID, GODOT_API_CLASS(NodePath));
	CACHE_CLASS_AND_CHECK(GodotObject, GODOT_API_CLASS(Object));
	CACHE_CLASS_AND_CHECK(Node, GODOT_API_CLASS(Node));
	CACHE_CLASS_AND_CHECK(Control, GODOT_API_CLASS(Control));
	CACHE_CLASS_AND_CHECK(Spatial, GODOT_API_CLASS(Spatial));
	CACHE_CLASS_AND_CHECK(WeakRef, GODOT_API_CLASS(WeakRef));
	CACHE_CLASS_AND_CHECK(MarshalUtils, GODOT_API_CLASS(MarshalUtils));

	// Attributes
	CACHE_CLASS_AND_CHECK(Export, GODOT_API_CLASS(Export));
	CACHE_FIELD_AND_CHECK(Export, hint, CACHED_CLASS(Export)->get_field("hint"));
	CACHE_FIELD_AND_CHECK(Export, hint_string, CACHED_CLASS(Export)->get_field("hint_string"));
	CACHE_FIELD_AND_CHECK(Export, usage, CACHED_CLASS(Export)->get_field("usage"));
	CACHE_CLASS_AND_CHECK(Tool, GODOT_API_CLASS(Tool));
	CACHE_CLASS_AND_CHECK(Remote, GODOT_API_CLASS(Remote));
	CACHE_CLASS_AND_CHECK(Sync, GODOT_API_CLASS(Sync));
	CACHE_CLASS_AND_CHECK(Master, GODOT_API_CLASS(Master));
	CACHE_CLASS_AND_CHECK(Slave, GODOT_API_CLASS(Slave));

	CACHE_FIELD_AND_CHECK(GodotObject, ptr, CACHED_CLASS(GodotObject)->get_field(BINDINGS_PTR_FIELD));
	CACHE_FIELD_AND_CHECK(NodePath, ptr, CACHED_CLASS(NodePath)->get_field(BINDINGS_PTR_FIELD));
	CACHE_FIELD_AND_CHECK(RID, ptr, CACHED_CLASS(RID)->get_field(BINDINGS_PTR_FIELD));

	CACHE_METHOD_THUNK_AND_CHECK(MarshalUtils, DictionaryToArrays, (MarshalUtils_DictToArrays)CACHED_CLASS(MarshalUtils)->get_method("DictionaryToArrays", 3)->get_thunk());
	CACHE_METHOD_THUNK_AND_CHECK(MarshalUtils, ArraysToDictionary, (MarshalUtils_ArraysToDict)CACHED_CLASS(MarshalUtils)->get_method("ArraysToDictionary", 2)->get_thunk());
	CACHE_METHOD_THUNK_AND_CHECK(Guid, NewGuid, (Guid_NewGuid)GDMono::get_singleton()->get_corlib_assembly()->get_class("System", "Guid")->get_method("NewGuid", 0)->get_thunk());
	CACHE_METHOD_THUNK_AND_CHECK(GodotObject, _AwaitedSignalCallback, (GodotObject__AwaitedSignalCallback)CACHED_CLASS(GodotObject)->get_method("_AwaitedSignalCallback", 2)->get_thunk());
	CACHE_METHOD_THUNK_AND_CHECK(SignalAwaiter, FailureCallback, (SignalAwaiter_FailureCallback)GODOT_API_CLASS(SignalAwaiter)->get_method("FailureCallback", 0)->get_thunk());
	CACHE_METHOD_THUNK_AND_CHECK(GodotTaskScheduler, Activate, (GodotTaskScheduler_Activate)GODOT_API_CLASS(GodotTaskScheduler)->get_method("Activate", 0)->get_thunk());

	{
		/*
		 * TODO Right now we only support Dictionary<object, object>.
		 * It would be great if we could support other key/value types
		 * without forcing the user to copy the entries.
		 */
		GDMonoMethod *method_get_dict_type = CACHED_CLASS(MarshalUtils)->get_method("GetDictionaryType", 0);
		ERR_FAIL_NULL(method_get_dict_type);
		MonoReflectionType *dict_refl_type = (MonoReflectionType *)method_get_dict_type->invoke(NULL);
		ERR_FAIL_NULL(dict_refl_type);
		MonoType *dict_type = mono_reflection_type_get_type(dict_refl_type);
		ERR_FAIL_NULL(dict_type);

		CACHE_RAW_MONO_CLASS_AND_CHECK(Dictionary, mono_class_from_mono_type(dict_type));
	}

	MonoObject *sync_context = mono_object_new(SCRIPT_DOMAIN, GODOT_API_CLASS(GodotTaskScheduler)->get_raw());
	mono_runtime_object_init(sync_context);
	mono_cache.sync_context_handle = MonoGCHandle::create_strong(sync_context);
}

void clear_cache() {
	mono_cache.cleanup();
	mono_cache.clear_members();
}

MonoObject *reference_get_managed_unsafe(Reference *p_ref) {
	// This method assumes the p_ref refcount was manually increased to keep it alive when being returned from a ptrcall
	// If p_ref is not null, its refcount will be manually decreased before returning
	if (p_ref) {
		MonoObject *mono_object = GDMonoUtils::unmanaged_get_managed(p_ref->cast_to<Object>());

		if (p_ref->unreference()) {
			// Either someone have been playing with unreference() the wrong way,
			// or create_managed_for_godot_object() failed for whatever reason.
			// Maybe something else, let's just wish it never happens.
			ERR_PRINT("reference_get_managed_unsafe: unreference() returned true, deleting...");
			memdelete(p_ref);
			return NULL;
		}

		return mono_object;
	}

	return NULL;
}

MonoObject *unmanaged_get_managed(Object *unmanaged) {
	if (unmanaged) {
		ScriptInstance *script_instance = unmanaged->get_script_instance();

		if (script_instance) {
			CSharpInstance *cs_instance = CAST_CSHARP_INSTANCE(script_instance);

			if (cs_instance) {
				return cs_instance->get_mono_object();
			}
		}

		if (unmanaged->has_meta("__mono_gchandle__")) {
			Ref<MonoGCHandle> gchandle = unmanaged->get_meta("__mono_gchandle__");

			if (gchandle.is_valid()) {
				return gchandle->get_target();
			}
		}

		String type_name = unmanaged->get_class();

		GDMonoClass *type_class = type_get_proxy_class(type_name);

		if (type_class) {
			return create_managed_for_godot_object(type_class, type_name, unmanaged);
		}
	}

	return NULL;
}

void tie_managed_to_unmanaged(MonoObject *managed, Object *unmanaged) {
	if (unmanaged) {
		Ref<MonoGCHandle> gchandle = MonoGCHandle::create_strong(managed);
		unmanaged->set_meta("__mono_gchandle__", gchandle);

		if (unmanaged->get_script().is_null()) {
			// All mono objects whose state needs to be kept when not referenced in the managed world must have a csharp script
			GDMonoClass *klass = get_object_class(managed);
			Ref<CSharpScript> script = CSharpScript::create_for_managed_type(klass);
			unmanaged->set_script(script.get_ref_ptr());
		}
	}
}

void set_main_thread(MonoThread *p_thread) {
	mono_thread_set_main(p_thread);
}

void attach_current_thread() {
	ERR_FAIL_COND(!GDMono::get_singleton()->is_runtime_initialized());
	MonoThread *mono_thread = mono_thread_attach(SCRIPT_DOMAIN);
	ERR_FAIL_COND(!mono_thread);
}

void detach_current_thread() {
	ERR_FAIL_COND(!GDMono::get_singleton()->is_runtime_initialized());
	MonoThread *mono_thread = mono_thread_current();
	ERR_FAIL_COND(!mono_thread);
	mono_thread_detach(mono_thread);
}

MonoThread *get_current_thread() {
	return mono_thread_current();
}

GDMonoClass *get_object_class(MonoObject *p_object) {
	return GDMono::get_singleton()->get_class(mono_object_get_class(p_object));
}

GDMonoClass *type_get_proxy_class(const String &p_type) {
	String class_name = p_type;

	if (class_name[0] == '_')
		class_name = class_name.substr(1, class_name.length());

	return GDMono::get_singleton()->get_api_assembly()->get_class(BINDINGS_NAMESPACE, class_name);
}

GDMonoClass *get_class_native_base(GDMonoClass *p_class) {
	GDMonoClass *klass = p_class;

	while ((klass = klass->get_parent_class()) != NULL) {
		if (klass->get_assembly() == GDMono::get_singleton()->get_api_assembly())
			return klass;
	}

	return NULL;
}

MonoObject *create_managed_for_godot_object(GDMonoClass *p_class, const String &p_native, Object *p_object) {
	String native_name = p_native;
	String object_type = p_object->get_class_name();

	if (object_type[0] == '_')
		object_type = object_type.substr(1, object_type.length());

	if (!ClassDB::is_parent_class(object_type, native_name)) {
		ERR_EXPLAIN("Type inherits from native type '" + native_name + "', so it can't be instanced in object of type: '" + p_object->get_class() + "'");
		ERR_FAIL_V(NULL);
	}

	MonoObject *mono_object = mono_object_new(SCRIPT_DOMAIN, p_class->get_raw());
	ERR_FAIL_COND_V(!mono_object, NULL);

	CACHED_FIELD(GodotObject, ptr)->set_value_raw(mono_object, p_object);

	// Construct
	mono_runtime_object_init(mono_object);

	// Tie managed to unmanaged
	bool strong_handle = true;
	Reference *ref = p_object->cast_to<Reference>();

	if (ref) {
		if (!ref->get_script_instance() || !CAST_CSHARP_INSTANCE(ref->get_script_instance())) {
			strong_handle = false;
			// The managed side will unreference it when disposed
			ref->reference();
		} // else the script instance will take care of its lifetime
	}

	Ref<MonoGCHandle> gchandle = strong_handle ? MonoGCHandle::create_strong(mono_object) :
												 MonoGCHandle::create_weak(mono_object);
	p_object->set_meta("__mono_gchandle__", gchandle);

	return mono_object;
}

MonoObject *create_managed_from(const NodePath &p_from) {
	MonoObject *mono_object = mono_object_new(SCRIPT_DOMAIN, CACHED_CLASS_RAW(NodePath));
	ERR_FAIL_COND_V(!mono_object, NULL);

	// Construct
	mono_runtime_object_init(mono_object);

	CACHED_FIELD(NodePath, ptr)
			->set_value_raw(mono_object, memnew(NodePath(p_from)));

	return mono_object;
}

MonoObject *create_managed_from(const RID &p_from) {
	MonoObject *mono_object = mono_object_new(SCRIPT_DOMAIN, CACHED_CLASS_RAW(RID));
	ERR_FAIL_COND_V(!mono_object, NULL);

	// Construct
	mono_runtime_object_init(mono_object);

	CACHED_FIELD(RID, ptr)
			->set_value_raw(mono_object, memnew(RID(p_from)));

	return mono_object;
}

namespace {

void _find_wildcard_files(const String &p_wildcard, DirAccess *p_da, List<String> *r_result) {
	Error err = p_da->list_dir_begin();
	ERR_FAIL_COND(err != OK);

	String current_dir = p_da->get_current_dir();

	int sep_idx = p_wildcard.find("/");
	bool is_file = sep_idx == -1;
	String current_wildcard = p_wildcard.substr(0, is_file ? p_wildcard.length() : sep_idx);

	String current_elem;
	while ((current_elem = p_da->get_next()).length()) {
		bool elem_is_dir = p_da->current_is_dir();

		if (is_file) {
			if (!elem_is_dir && current_elem.match(current_wildcard))
				r_result->push_back(p_da->get_current_dir().plus_file(current_elem));
			continue;
		}

		if (!elem_is_dir)
			continue;

		if (current_elem.match(current_wildcard)) {
			DirAccessRef auxdir = DirAccess::create(DirAccess::ACCESS_FILESYSTEM);
			auxdir->change_dir(current_elem == "." ? current_dir : current_dir.plus_file(current_elem));
			_find_wildcard_files(p_wildcard.substr(sep_idx + 1, p_wildcard.length()), auxdir.f, r_result);
			auxdir->list_dir_end();
		}
	}
}
}

void expand_wildcard(const String &p_wildcard, List<String> *r_result) {
	String wildcard = p_wildcard.replace("\\", "/");
	while (true) { // in case of using 2 or more slash
		String compare = wildcard.replace("//", "/");
		if (wildcard == compare)
			break;
		else
			wildcard = compare;
	}

	DirAccess *da = DirAccess::create(DirAccess::ACCESS_FILESYSTEM);

	if (wildcard.begins_with("/")) {
		da->change_dir("/");
		wildcard = wildcard.substr(1, wildcard.length());
	} else {
		da->change_dir(GlobalConfig::get_singleton()->globalize_path("res://"));
	}

	_find_wildcard_files(wildcard, da, r_result);

	da->list_dir_end();
	memdelete(da);
}
}
