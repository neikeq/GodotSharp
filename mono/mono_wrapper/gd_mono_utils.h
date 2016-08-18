#ifndef GD_MONOUTILS_H
#define GD_MONOUTILS_H

#include <mono/metadata/threads.h>

#include "core/object.h"

#include "gd_mono_header.h"

class GDMonoClass;

class GDMonoUtils
{
	GDMonoUtils();

public:
	struct ClassCache
	{
		GDMonoClass* MonoObject;
		GDMonoClass* HandleRef;
		GDMonoClass* InternalHelpers;
		GDMonoClass* Variant;
		GDMonoClass* Vector2;
		GDMonoClass* Rect2;
		GDMonoClass* Matrix32;
		GDMonoClass* Vector3;
		GDMonoClass* Matrix3;
		GDMonoClass* Quat;
		GDMonoClass* Transform;
		GDMonoClass* NodePath;
		GDMonoClass* GodotObject;
		GDMonoClass* Node;
		GDMonoClass* Control;
		GDMonoClass* Spatial;

		void clear();

		ClassCache()
		{
			cache.clear();
		}
	};

	static ClassCache cache;

	static void update_cache();
	static void clear_cache();

	template<typename T> static void hash_combine(uint32_t& p_hash, const T& p_key)
	{
		p_hash ^= HashMapHahserDefault::hash(p_key) + 0x9e3779b9 + (p_hash << 6) + (p_hash >> 2);
	}

	static String mono_to_utf8_string(MonoString* p_mono_string);
	static String mono_to_utf16_string(MonoString* p_mono_string);

	inline static MonoString* mono_from_utf8_string(const String& p_string)
	{
		return mono_string_new(mono_domain_get(), p_string.utf8().get_data());
	}

	inline static MonoString* mono_from_utf16_string(const String& p_string)
	{
		return mono_string_from_utf16((mono_unichar2*)p_string.c_str());
	}

	static void set_main_thread(MonoThread* p_thread);
	static MonoThread* get_current_thread();

	static GDMonoClass* get_object_class(MonoObject* p_object);
	static GDMonoClass* type_get_proxy_class(const String& p_type);
	static GDMonoClass* get_class_native_base(GDMonoClass* p_class);

	static MonoObject* variant_to_managed_variant(const Variant* p_var);

	static MonoObject* variant_to_mono_object(const Variant* p_var, const ManagedType& p_type);
	static Variant mono_object_to_variant(MonoObject* p_var, const ManagedType& p_type);

	static MonoObject* create_managed_for_unmanaged_object(GDMonoClass* p_class, GDMonoClass* p_native, Object* p_object);
};

#define CACHED_CLASS(m_struct) GDMonoUtils::cache.m_struct
#define RAW_CACHED_CLASS(m_struct) GDMonoUtils::cache.m_struct->get_raw_class()

#define UNBOX_FLOAT_PTR( x ) (float*) mono_object_unbox( x )

#define UNBOX_DOUBLE( x )	*(double*)		mono_object_unbox( x )
#define UNBOX_FLOAT( x )	*(float*)		mono_object_unbox( x )
#define UNBOX_INT64( x )	*(int64_t*)		mono_object_unbox( x )
#define UNBOX_INT32( x )	*(int32_t*)		mono_object_unbox( x )
#define UNBOX_INT16( x )	*(int16_t*)		mono_object_unbox( x )
#define UNBOX_INT8( x )		*(int8_t*)		mono_object_unbox( x )
#define UNBOX_UINT64( x )	*(uint64_t*)	mono_object_unbox( x )
#define UNBOX_UINT32( x )	*(uint32_t*)	mono_object_unbox( x )
#define UNBOX_UINT16( x )	*(uint16_t*)	mono_object_unbox( x )
#define UNBOX_UINT8( x )	*(uint8_t*)		mono_object_unbox( x )
#define UNBOX_BOOLEAN( x )	*(MonoBoolean*)	mono_object_unbox( x )
#define UNBOX_CHAR( x )		(wchar_t*)		mono_object_unbox( x )
#define UNBOX_PTR( x )						mono_object_unbox( x )

#define BOX_DOUBLE( x )		mono_value_box(GDMono::get_singleton()->get_domain(), mono_get_double_class(),	&x)
#define BOX_FLOAT( x )		mono_value_box(GDMono::get_singleton()->get_domain(), mono_get_single_class(),	&x)
#define BOX_INT64( x )		mono_value_box(GDMono::get_singleton()->get_domain(), mono_get_int64_class(),	&x)
#define BOX_INT32( x )		mono_value_box(GDMono::get_singleton()->get_domain(), mono_get_int32_class(),	&x)
#define BOX_INT16( x )		mono_value_box(GDMono::get_singleton()->get_domain(), mono_get_int16_class(),	&x)
#define BOX_INT8( x )		mono_value_box(GDMono::get_singleton()->get_domain(), mono_get_sbyte_class(),	&x)
#define BOX_UINT64( x )		mono_value_box(GDMono::get_singleton()->get_domain(), mono_get_uint64_class(),	&x)
#define BOX_UINT32( x )		mono_value_box(GDMono::get_singleton()->get_domain(), mono_get_uint32_class(),	&x)
#define BOX_UINT16( x )		mono_value_box(GDMono::get_singleton()->get_domain(), mono_get_uint16_class(),	&x)
#define BOX_UINT8( x )		mono_value_box(GDMono::get_singleton()->get_domain(), mono_get_byte_class(),	&x)
#define BOX_BOOLEAN( x )	mono_value_box(GDMono::get_singleton()->get_domain(), mono_get_boolean_class(),	&x)
#define BOX_CHAR( x )		mono_value_box(GDMono::get_singleton()->get_domain(), mono_get_char_class(),	&x)
#define BOX_PTR( x )		mono_value_box(GDMono::get_singleton()->get_domain(), mono_get_intptr_class(),	x)

#endif // GD_MONOUTILS_H
