#ifndef GD_MONO_METHOD_H
#define GD_MONO_METHOD_H

#include "gd_mono_header.h"
#include "gd_mono.h"

class GDMonoMethod
{
	bool sig_updated;

	bool instance;
	int params_count;
	ManagedType return_type;
	Vector<ManagedType> param_types;

	void update_signature();

friend class GDMonoClass;

	MonoMethod* mono_method;

public:
	bool is_static();
	int get_parameters_count();
	ManagedType get_return_type();

	void* get_thunk();

	MonoObject* invoke(MonoObject* p_object, const Variant **p_params);
	MonoObject* invoke(MonoObject *p_object);
	MonoObject* invoke_raw(MonoObject* p_object, void **p_params);

	GDMonoMethod(MonoMethod* p_method);
};

#endif // GD_MONO_METHOD_H
