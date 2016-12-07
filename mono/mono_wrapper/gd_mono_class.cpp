#include "gd_mono_class.h"

#include "gd_mono_assembly.h"

MonoType *GDMonoClass::get_raw_type(GDMonoClass *p_class)
{
	return mono_class_get_type(p_class->get_raw());
}

bool GDMonoClass::is_assignable_from(GDMonoClass *p_from) const
{
	return mono_class_is_assignable_from(mono_class, p_from->mono_class);
}

GDMonoClass *GDMonoClass::get_parent_class()
{
	if (assembly) {
		MonoClass* parent_mono_class = mono_class_get_parent(mono_class);

		if (parent_mono_class) {
			return GDMono::get_singleton()->get_class(parent_mono_class);
		}
	}

	return NULL;
}

bool GDMonoClass::has_method(const String &p_name)
{
	return mono_class_get_method_from_name(mono_class, p_name.utf8().get_data(), -1); // -1 to ignore parameters count
}

bool GDMonoClass::has_method(const String &p_name, int p_params_count)
{
	return mono_class_get_method_from_name(mono_class, p_name.utf8().get_data(), p_params_count);
}

bool GDMonoClass::has_attribute(GDMonoClass *p_attr_class)
{
	ERR_FAIL_COND_V(!p_attr_class, false);

	if (!attrs_updated)
		update_attrs();

	if (!attrs)
		return false;

	return mono_custom_attrs_has_attr(attrs, p_attr_class->get_raw());
}

MonoObject* GDMonoClass::get_attribute(GDMonoClass *p_attr_class)
{
	ERR_FAIL_COND_V(!p_attr_class, NULL);

	if (!attrs_updated)
		update_attrs();

	if (!attrs)
		return NULL;

	return mono_custom_attrs_get_attr(attrs, p_attr_class->get_raw());
}

void GDMonoClass::update_attrs()
{
	attrs = mono_custom_attrs_from_class(get_raw());
	attrs_updated = true;
}

GDMonoMethod *GDMonoClass::get_method(MonoMethod *p_raw_method)
{
	MonoMethodSignature* sig = mono_method_signature(p_raw_method);

	int params_count = mono_signature_get_param_count(sig);
	String method_name = mono_method_get_name(p_raw_method);

	return get_method(method_name, params_count);
}

GDMonoMethod *GDMonoClass::get_method(const String &p_name, int p_params_count)
{
	MethodKey key = MethodKey(p_params_count, p_name);

	GDMonoMethod** match = methods.getptr(key);

	if (match)
		return *match;

	MonoMethod* raw_method = mono_class_get_method_from_name(mono_class, p_name.utf8().get_data(), p_params_count);

	if (raw_method) {
		GDMonoMethod* method = memnew(GDMonoMethod(raw_method));
		methods.set(key, method);

		return method;
	}

	return NULL;
}

GDMonoMethod *GDMonoClass::get_method_with_desc(const String &p_description, bool p_include_namespace)
{
	MonoMethodDesc *desc = mono_method_desc_new(p_description.utf8().get_data(), p_include_namespace);
	MonoMethod *native_base_init = mono_method_desc_search_in_class(desc, mono_class);
	mono_method_desc_free(desc);

	return get_method(native_base_init);
}

GDMonoField *GDMonoClass::get_field(const String &p_name)
{
	Map<String, GDMonoField*>::Element* result = fields.find(p_name);

	if (result)
		return result->value();

	MonoClassField* raw_field = mono_class_get_field_from_name(mono_class, p_name.utf8().get_data());

	if (raw_field) {
		GDMonoField* field = memnew(GDMonoField(raw_field, this));
		fields.insert(p_name, field);

		return field;
	}

	return NULL;
}

Vector<GDMonoField*> GDMonoClass::get_all_fields()
{
	void* iter = NULL;
	MonoClassField* raw_field = NULL;
	while ((raw_field = mono_class_get_fields(get_raw(), &iter)) != NULL) {
		String name = mono_field_get_name(raw_field);

		Map<String, GDMonoField*>::Element *match = fields.find(name);

		if (match) {
			all_fields.push_back(match->get());
		} else {
			GDMonoField* field = memnew(GDMonoField(raw_field, this));
			fields.insert(name, field);
			all_fields.push_back(field);
		}
	}

	return all_fields;
}

GDMonoClass::GDMonoClass(const String &p_namespace, const String &p_name, MonoClass *p_class, GDMonoAssembly *p_assembly)
{
	namespace_name = p_namespace;
	class_name = p_name;
	mono_class = p_class;
	assembly = p_assembly;

	attrs_updated = false;
	attrs = NULL;
	has_all_fields = false;
}

GDMonoClass::~GDMonoClass()
{
	for (Map<String, GDMonoField*>::Element* E = fields.front(); E; E = E->next()) {
		memdelete(E->value());
	}

	List<MethodKey> method_keys;
	methods.get_key_list(&method_keys);

	for (List<MethodKey>::Element* E = method_keys.front(); E; E = E->next()) {
		GDMonoMethod* method = methods.get(E->get());

		if (method)
			memdelete(method);
	}
}
