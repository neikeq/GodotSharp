/**********************************************************************************/
/* gd_mono_utils.h                                                                */
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
#ifndef GD_MONOUTILS_H
#define GD_MONOUTILS_H

#include <mono/metadata/threads.h>

#include "../mono_gc_handle.h"
#include "gd_mono_header.h"

#include "object.h"
#include "reference.h"

namespace GDMonoUtils {

typedef MonoObject *(*MarshalUtils_DictToArrays)(MonoObject *, MonoArray **, MonoArray **, MonoObject **);
typedef MonoObject *(*MarshalUtils_ArraysToDict)(MonoArray *, MonoArray *, MonoObject **);
typedef MonoObject *(*Guid_NewGuid)(MonoObject **);
typedef MonoObject *(*GodotObject__AwaitedSignalCallback)(MonoObject *, MonoArray **, MonoObject *, MonoObject **);
typedef MonoObject *(*SignalAwaiter_FailureCallback)(MonoObject *, MonoObject **);
typedef MonoObject *(*GodotTaskScheduler_Activate)(MonoObject *, MonoObject **);

struct MonoCache {
	// Format for cached classes in the GodotEngine namespace: class_<Class>
	// Macro: CACHED_CLASS(<Class>)

	// Format for cached classes in a different namespace: class_<Namespace>_<Class>
	// Macro: CACHED_NS_CLASS(<Namespace>, <Class>)

	// -----------------------------------------------
	// Let's use the no-namespace format for these too
	// -----------------------------------------------
	GDMonoClass *class_MonoObject;
	GDMonoClass *class_bool;
	GDMonoClass *class_int8_t;
	GDMonoClass *class_int16_t;
	GDMonoClass *class_int32_t;
	GDMonoClass *class_int64_t;
	GDMonoClass *class_uint8_t;
	GDMonoClass *class_uint16_t;
	GDMonoClass *class_uint32_t;
	GDMonoClass *class_uint64_t;
	GDMonoClass *class_float;
	GDMonoClass *class_double;
	GDMonoClass *class_String;
	GDMonoClass *class_IntPtr;
	// -----------------------------------------------

	GDMonoClass *class_Vector2;
	GDMonoClass *class_Rect2;
	GDMonoClass *class_Transform2D;
	GDMonoClass *class_Vector3;
	GDMonoClass *class_Basis;
	GDMonoClass *class_Quat;
	GDMonoClass *class_Transform;
	GDMonoClass *class_Rect3;
	GDMonoClass *class_Color;
	GDMonoClass *class_Plane;
	GDMonoClass *class_NodePath;
	GDMonoClass *class_RID;
	GDMonoClass *class_GodotObject;
	GDMonoClass *class_Node;
	GDMonoClass *class_Control;
	GDMonoClass *class_Spatial;
	GDMonoClass *class_WeakRef;
	GDMonoClass *class_MarshalUtils;

	GDMonoClass *class_Export;
	GDMonoField *field_Export_hint;
	GDMonoField *field_Export_hint_string;
	GDMonoField *field_Export_usage;
	GDMonoClass *class_Tool;
	GDMonoClass *class_Remote;
	GDMonoClass *class_Sync;
	GDMonoClass *class_Master;
	GDMonoClass *class_Slave; // omg! did he just use the S word?! ヽ(゜Q。)ノ

	GDMonoField *field_GodotObject_ptr;
	GDMonoField *field_NodePath_ptr;
	GDMonoField *field_Image_ptr;
	GDMonoField *field_RID_ptr;

	MarshalUtils_DictToArrays methodthunk_MarshalUtils_DictionaryToArrays;
	MarshalUtils_ArraysToDict methodthunk_MarshalUtils_ArraysToDictionary;
	Guid_NewGuid methodthunk_Guid_NewGuid;
	GodotObject__AwaitedSignalCallback methodthunk_GodotObject__AwaitedSignalCallback;
	SignalAwaiter_FailureCallback methodthunk_SignalAwaiter_FailureCallback;
	GodotTaskScheduler_Activate methodthunk_GodotTaskScheduler_Activate;

	MonoClass *rawclass_Dictionary;

	Ref<MonoGCHandle> sync_context_handle;

	void clear_members();
	void cleanup() {}

	MonoCache() {
		clear_members();
	}
};

extern MonoCache mono_cache;

void update_cache();
void clear_cache();

template <typename T>
void hash_combine(uint32_t &p_hash, const T &p_key) {
	p_hash ^= HashMapHasherDefault::hash(p_key) + 0x9e3779b9 + (p_hash << 6) + (p_hash >> 2);
}

MonoObject *reference_get_managed_unsafe(Reference *p_ref);
MonoObject *unmanaged_get_managed(Object *unmanaged);
void tie_managed_to_unmanaged(MonoObject *managed, Object *unmanaged);

void set_main_thread(MonoThread *p_thread);
void attach_current_thread();
void detach_current_thread();
MonoThread *get_current_thread();

GDMonoClass *get_object_class(MonoObject *p_object);
GDMonoClass *type_get_proxy_class(const String &p_type);
GDMonoClass *get_class_native_base(GDMonoClass *p_class);

MonoObject *create_managed_for_godot_object(GDMonoClass *p_class, const String &p_native, Object *p_object);

MonoObject *create_managed_from(const NodePath &p_from);
MonoObject *create_managed_from(const RID &p_from);

void expand_wildcard(const String &p_wildcard, List<String> *r_result);

} // GDMonoUtils

#define NATIVE_GDMONOCLASS_NAME(m_class) (GDMonoMarshal::mono_string_to_godot((MonoString *)m_class->get_field("nativeName")->get_value(NULL)))

#define CACHED_CLASS(m_class) (GDMonoUtils::mono_cache.class_##m_class)
#define CACHED_CLASS_RAW(m_class) (GDMonoUtils::mono_cache.class_##m_class->get_raw())
#define CACHED_NS_CLASS(m_ns, m_class) (GDMonoUtils::mono_cache.class_##m_ns##_##m_class)
#define CACHED_RAW_MONO_CLASS(m_class) (GDMonoUtils::mono_cache.rawclass_##m_class)
#define CACHED_FIELD(m_class, m_field) (GDMonoUtils::mono_cache.field_##m_class##_##m_field)
#define CACHED_METHOD_THUNK(m_class, m_method) (GDMonoUtils::mono_cache.methodthunk_##m_class##_##m_method)

#ifdef REAL_T_IS_DOUBLE
#define REAL_T_MONOCLASS CACHED_CLASS_RAW(double)
#else
#define REAL_T_MONOCLASS CACHED_CLASS_RAW(float)
#endif

#endif // GD_MONOUTILS_H
