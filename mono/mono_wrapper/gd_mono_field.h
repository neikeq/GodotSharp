#ifndef GDMONOFIELD_H
#define GDMONOFIELD_H

#include "gd_mono_header.h"
#include "gd_mono.h"

class GDMonoField
{
	GDMonoClass* owner;
	MonoClassField* mono_field;

	String name;
	ManagedType type;

	bool attrs_updated;
	MonoCustomAttrInfo* attrs;

public:
	_FORCE_INLINE_ String get_name() const { return name; }
	_FORCE_INLINE_ ManagedType get_type() const { return type; }

	_FORCE_INLINE_ MonoClassField* get_raw() const { return mono_field; }

	void set_value_raw(MonoObject *p_object, void* p_ptr);
	void set_value(MonoObject* p_object, const Variant& p_value);

	_FORCE_INLINE_ MonoObject* get_value(MonoObject* p_object)
	{
		return mono_field_get_value_object(GDMONO_DOMAIN, mono_field, p_object);
	}

	bool get_bool_value(MonoObject *p_object);
	int get_int_value(MonoObject *p_object);
	String get_string_value(MonoObject *p_object);

	bool has_attribute(GDMonoClass* p_attr_class);
	MonoObject* get_attribute(GDMonoClass* p_attr_class);
	void update_attrs();

	bool is_static();
	GDMono::MemberVisibility get_visibility();

	GDMonoField(MonoClassField* p_raw_field, GDMonoClass* p_owner);
};

#endif // GDMONOFIELD_H
