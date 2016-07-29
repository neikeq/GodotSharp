#ifndef GDMONOFIELD_H
#define GDMONOFIELD_H

#include "gd_mono_header.h"
#include "gd_mono.h"

class GDMonoField
{
	MonoClassField* mono_field;

	ManagedType type;

public:
	ManagedType get_type() const { return type; }

	void set_value(MonoObject* p_object, const Variant& p_value);
	MonoObject* get_value(MonoObject* p_object);

	GDMonoField(MonoClassField* p_raw_field);
};

#endif // GDMONOFIELD_H
