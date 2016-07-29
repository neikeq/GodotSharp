#ifndef GD_MONO_CLASS_H
#define GD_MONO_CLASS_H

#include <mono/metadata/debug-helpers.h>

#include "core/map.h"
#include "core/ustring.h"

#include "gd_mono_header.h"
#include "gd_mono_field.h"
#include "gd_mono_method.h"
#include "gd_mono_utils.h"

class GDMonoClass
{
	struct MethodKey
	{
		struct Hasher
		{
			static _FORCE_INLINE_ uint32_t hash(const MethodKey& p_key)
			{
				uint32_t hash = 0;

				GDMonoUtils::hash_combine(hash, p_key.params_count);
				GDMonoUtils::hash_combine(hash, p_key.name);

				return hash;
			}
		};

		inline bool operator==(const MethodKey& p_a) const
		{
			return p_a.params_count == params_count && p_a.name == name;
		}

		MethodKey() {}

		MethodKey(int p_params_count, const String& p_name)
		{
			params_count = p_params_count;
			name = p_name;
		}

		int params_count;
		String name;
	};

	String namespace_name;
	String class_name;

	MonoClass* mono_class;
	GDMonoAssembly* assembly;

	Map<String, GDMonoField*> fields;
	HashMap<MethodKey, GDMonoMethod*, MethodKey::Hasher> methods;

friend class GDMonoAssembly;
	GDMonoClass(const String& p_namespace, const String& p_name, MonoClass* p_class, GDMonoAssembly* p_assembly);

public:
	bool is_assignable_from(GDMonoClass* p_from) const;

	String get_namespace() const { return namespace_name; }
	String get_name() const { return class_name; }

	inline MonoClass* get_raw_class() { return mono_class; }
	inline const GDMonoAssembly* get_assembly() const { return assembly; }

	GDMonoClass* get_parent_class();

	bool has_method(const String& p_name);
	bool has_method(const String& p_name, int p_params_count);

	GDMonoMethod* get_method(MonoMethod* p_raw_method);
	GDMonoMethod* get_method(const String& p_name, int p_params_count);
	GDMonoMethod* get_method_with_desc(const String& p_description, bool p_includes_namespace);

	GDMonoField* get_field(const String& p_name);

	~GDMonoClass();
};

#endif // GD_MONO_CLASS_H
