/**********************************************************************************/
/* gd_mono_assembly.h                                                             */
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
#ifndef GD_MONO_ASSEMBLY_H
#define GD_MONO_ASSEMBLY_H

#include <mono/jit/jit.h>
#include <mono/metadata/assembly.h>

#include "gd_mono_utils.h"
#include "hash_map.h"
#include "map.h"
#include "ustring.h"

class GDMonoAssembly {
	struct ClassKey {
		struct Hasher {
			static _FORCE_INLINE_ uint32_t hash(const ClassKey &p_key) {
				uint32_t hash = 0;

				GDMonoUtils::hash_combine(hash, p_key.namespace_name);
				GDMonoUtils::hash_combine(hash, p_key.class_name);

				return hash;
			}
		};

		_FORCE_INLINE_ bool operator==(const ClassKey &p_a) const {
			return p_a.class_name == class_name && p_a.namespace_name == namespace_name;
		}

		ClassKey() {}

		ClassKey(const String &p_namespace_name, const String &p_class_name) {
			namespace_name = p_namespace_name;
			class_name = p_class_name;
		}

		String namespace_name;
		String class_name;
	};

	bool loaded;

	String path;
	uint64_t modified_time;

	HashMap<ClassKey, GDMonoClass *, ClassKey::Hasher> cached_classes;
	Map<MonoClass *, GDMonoClass *> cached_raw;

	bool object_classes_updated;
	Map<String, GDMonoClass *> cached_object_classes;

#ifdef DEBUG_ENABLED
	Vector<uint8_t> mdb_data;
#endif

	friend class GDMono;

	MonoAssembly *assembly;
	MonoImage *image;

public:
	Error load(MonoDomain *p_domain);
	Error wrap_image(MonoImage *p_image);
	void unload();

	_FORCE_INLINE_ bool is_loaded() const { return loaded; }
	_FORCE_INLINE_ MonoImage *get_image() const { return image; }
	_FORCE_INLINE_ String get_path() const { return path; }
	_FORCE_INLINE_ uint64_t get_modified_time() const { return modified_time; }

	GDMonoClass *get_class(const String &p_namespace, const String &p_class);
	GDMonoClass *get_class(MonoClass *p_mono_class);

	GDMonoClass *get_object_derived_class(const String &p_class);

	GDMonoAssembly(const String &p_path);
	~GDMonoAssembly();
};

#endif // GD_MONO_ASSEMBLY_H
