#ifndef GD_MONOUTILS_H
#define GD_MONOUTILS_H

#include <mono/metadata/threads.h>

#include "core/object.h"
#include "gd_mono_header.h"

class GDMonoClass;

namespace GDMonoUtils
{

typedef MonoReflectionType* (*GetDictTypeFunc)(MonoObject**);
typedef MonoObject* (*DictToArraysFunc)(MonoObject*, MonoArray**, MonoArray**, MonoObject**);
typedef MonoObject* (*ArraysToDictFunc)(MonoArray*, MonoArray*, MonoObject**);

struct Cache
{
	GDMonoClass* class_MonoObject;
	GDMonoClass* class_int32_t;
	GDMonoClass* class_uint8_t;
	GDMonoClass* class_float;
	GDMonoClass* class_double;
	GDMonoClass* class_String;
	GDMonoClass* class_Vector2;
	GDMonoClass* class_Rect2;
	GDMonoClass* class_Matrix32;
	GDMonoClass* class_Vector3;
	GDMonoClass* class_Matrix3;
	GDMonoClass* class_Quat;
	GDMonoClass* class_Transform;
	GDMonoClass* class_AABB;
	GDMonoClass* class_Color;
	GDMonoClass* class_Plane;
	GDMonoClass* class_InputEvent;
	GDMonoClass* class_NodePath;
	GDMonoClass* class_Image;
	GDMonoClass* class_RID;
	GDMonoClass* class_GodotObject;
	GDMonoClass* class_Node;
	GDMonoClass* class_Control;
	GDMonoClass* class_Spatial;
	GDMonoClass* class_WeakRef;
	GDMonoClass* class_List;
	GDMonoClass* class_PropertyInfo;
	GDMonoClass* class_Tool;
	GDMonoClass* class_MarshalUtils;

	GDMonoField* field_GodotObject_ptr;
	GDMonoField* field_NodePath_ptr;
	GDMonoField* field_Image_ptr;
	GDMonoField* field_RID_ptr;
	GDMonoField* field_PropertyInfo_type;
	GDMonoField* field_PropertyInfo_hint;
	GDMonoField* field_PropertyInfo_hint_string;
	GDMonoField* field_PropertyInfo_usage;

	GetDictTypeFunc thunk_MarshalUtils_GetDictionaryType;
	DictToArraysFunc thunk_MarshalUtils_DictionaryToArrays;
	ArraysToDictFunc thunk_MarshalUtils_ArraysToDictionary;

	MonoClass* rawclass_Dictionary;

	void clear();

	Cache()
	{
		clear();
	}
};

extern Cache cache;

void update_cache();
void clear_cache();

template<typename T> void hash_combine(uint32_t& p_hash, const T& p_key)
{
	p_hash ^= HashMapHahserDefault::hash(p_key) + 0x9e3779b9 + (p_hash << 6) + (p_hash >> 2);
}

MonoObject *unmanaged_get_managed(Object *unmanaged);
void tie_managed_to_unmanaged(MonoObject* managed, Object *unmanaged);

void set_main_thread(MonoThread* p_thread);
MonoThread* get_current_thread();

GDMonoClass* get_object_class(MonoObject* p_object);
GDMonoClass* type_get_proxy_class(const String& p_type);
GDMonoClass* get_class_native_base(GDMonoClass* p_class);

MonoObject* create_managed_for_godot_object(GDMonoClass* p_class, const String& p_native, Object* p_object);

MonoObject *create_managed_from(const NodePath& p_from);
MonoObject *create_managed_from(const Image& p_from);
MonoObject *create_managed_from(const RID& p_from);

}

#define CACHED_CLASS(m_class) (GDMonoUtils::cache.class_ ## m_class)
#define CACHED_CLASS_RAW(m_class) (GDMonoUtils::cache.class_ ## m_class->get_raw())
#define CACHED_RAW_MONO_CLASS(m_class) (GDMonoUtils::cache.rawclass_ ## m_class)
#define CACHED_FIELD(m_class, m_field) (GDMonoUtils::cache.field_ ## m_class ## _ ## m_field)
#define CACHED_METHOD_THUNK(m_class, m_method) (GDMonoUtils::cache.thunk_ ## m_class ## _ ## m_method)

#ifdef REAL_T_IS_DOUBLE
#define real_t_MonoClass CACHED_CLASS_RAW(double)
#else
#define real_t_MonoClass CACHED_CLASS_RAW(float)
#endif

#endif // GD_MONOUTILS_H
