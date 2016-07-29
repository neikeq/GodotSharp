#ifndef GD_MONO_ASSEMBLY_H
#define GD_MONO_ASSEMBLY_H

#include <mono/jit/jit.h>
#include <mono/metadata/assembly.h>

#include "core/hash_map.h"
#include "core/map.h"
#include "core/ustring.h"
#include "gd_mono_utils.h"

class GDMonoAssembly
{
	struct ClassKey
	{
		struct Hasher
		{
			static _FORCE_INLINE_ uint32_t hash(const ClassKey& p_key)
			{
				uint32_t hash = 0;

				GDMonoUtils::hash_combine(hash, p_key.namespace_name);
				GDMonoUtils::hash_combine(hash, p_key.class_name);

				return hash;
			}
		};

		inline bool operator==(const ClassKey& p_a) const
		{
			return p_a.class_name == class_name && p_a.namespace_name == namespace_name;
		}

		ClassKey() {}

		ClassKey(const String& p_namespace_name, const String& p_class_name)
		{
			namespace_name = p_namespace_name;
			class_name = p_class_name;
		}

		String namespace_name;
		String class_name;
	};

	bool loaded;

	String path;

	HashMap<ClassKey, GDMonoClass*, ClassKey::Hasher> cached_classes;
	Map<MonoClass*, GDMonoClass*> cached_raw;

	bool object_classes_updated;
	Map<String, GDMonoClass*> cached_object_classes;

#ifdef DEBUG_ENABLED
	Vector<uint8_t> mdb_data;
#endif

friend class GDMono;

	MonoAssembly* assembly;
	MonoImage* image;

public:
	Error load(MonoDomain* p_domain);
	Error wrap_image(MonoImage* p_image);
	void unload();

	inline bool is_loaded() const { return loaded; }
	inline MonoImage* get_image() const { return image; }

	GDMonoClass* get_class(const String& p_namespace, const String& p_class);
	GDMonoClass* get_class(MonoClass* p_mono_class);

	GDMonoClass* get_object_derived_class(const String& p_class);

	GDMonoAssembly(const String& p_path);
	~GDMonoAssembly();
};

#endif // GD_MONO_ASSEMBLY_H
