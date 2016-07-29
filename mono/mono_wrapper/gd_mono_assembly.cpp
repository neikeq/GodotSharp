#include "mono_wrapper/gd_mono_assembly.h"

#include <mono/metadata/mono-debug.h>
#include <mono/metadata/tokentype.h>

#include "core/os/file_access.h"
#include "core/list.h"

#include "gd_mono_class.h"

Error GDMonoAssembly::load(MonoDomain *p_domain)
{
	ERR_FAIL_COND_V(loaded, ERR_FILE_ALREADY_IN_USE);

	Vector<uint8_t> data = FileAccess::get_file_as_array(path);
	ERR_FAIL_COND_V(data.empty(), ERR_FILE_CANT_READ);

	String image_name(path.get_file());

	MonoImageOpenStatus status;

    image = mono_image_open_from_data_with_name(
        (char*) &data[0], data.size(),
        true, &status, false,
        image_name.utf8().get_data()
	);

	ERR_FAIL_COND_V(status != MONO_IMAGE_OK || image == NULL, ERR_FILE_CANT_OPEN);

#ifdef DEBUG_ENABLED
	String mdb_path(path + ".mdb");

	if (FileAccess::exists(mdb_path)) {
		mdb_data.clear();
		mdb_data = FileAccess::get_file_as_array(mdb_path);
		mono_debug_open_image_from_memory(image, &mdb_data[0], mdb_data.size());
	}
#endif

	assembly = mono_assembly_load_from_full(image, image_name.utf8().get_data(), &status, false);

	ERR_FAIL_COND_V(status != MONO_IMAGE_OK || assembly == NULL, ERR_FILE_CANT_OPEN);

	mono_jit_exec(p_domain, assembly, 0, NULL);

	loaded = true;

	return OK;
}

Error GDMonoAssembly::wrap_image(MonoImage *p_image)
{
	ERR_FAIL_COND_V(loaded, ERR_FILE_ALREADY_IN_USE);

	assembly = mono_image_get_assembly(p_image);
	ERR_FAIL_COND_V(!assembly, FAILED);

	image = p_image;

	loaded = true;

	return OK;
}

void GDMonoAssembly::unload()
{
	ERR_FAIL_COND(!loaded);

#ifdef DEBUG_ENABLED
	if (mdb_data.size()) {
		mono_debug_close_image(image);
		mdb_data.clear();
	}
#endif

	for (Map<MonoClass*, GDMonoClass*>::Element *E = cached_raw.front(); E; E = E->next()) {
		memdelete(E->value());
	}

	cached_classes.clear();
	cached_raw.clear();

	assembly = NULL;
	image = NULL;
	loaded = false;
}

GDMonoClass *GDMonoAssembly::get_class(const String &p_namespace, const String &p_name)
{
	ERR_FAIL_COND_V(!loaded, NULL);

	ClassKey key(p_namespace, p_name);

	GDMonoClass** match = cached_classes.getptr(key);

	if (match)
		return *match;

	MonoClass* mono_class = mono_class_from_name(image, p_namespace.utf8(), p_name.utf8());

	if (!mono_class)
		return NULL;

	GDMonoClass* wrapped_class = memnew(GDMonoClass(p_namespace, p_name, mono_class, this));
	cached_classes[key] = wrapped_class;
	cached_raw[mono_class] = wrapped_class;

	return wrapped_class;
}

GDMonoClass *GDMonoAssembly::get_class(MonoClass *p_mono_class)
{
	ERR_FAIL_COND_V(!loaded, NULL);

	Map<MonoClass*, GDMonoClass*>::Element *match = cached_raw.find(p_mono_class);

	if (match)
		return match->value();

	String namespace_name = mono_class_get_namespace(p_mono_class);
	String class_name = mono_class_get_name(p_mono_class);

	GDMonoClass* wrapped_class = memnew(GDMonoClass(namespace_name, class_name, p_mono_class, this));

	cached_classes[ClassKey(namespace_name, class_name)] = wrapped_class;
	cached_raw[p_mono_class] = wrapped_class;

	return wrapped_class;
}

GDMonoClass *GDMonoAssembly::get_object_derived_class(const String &p_class)
{
	GDMonoClass* match = NULL;

	if (object_classes_updated) {
		Map<String, GDMonoClass*>::Element* result = cached_object_classes.find(p_class);

		if (result)
			match = result->get();
	} else {
		List<GDMonoClass*> nested_classes;

		int rows = mono_image_get_table_rows(image, MONO_TABLE_TYPEDEF);

		for(int i = 1; i < rows; i++) {
			MonoClass* mono_class = mono_class_get(image, (i + 1) | MONO_TOKEN_TYPE_DEF);

			if (!mono_class_is_assignable_from(GDMonoUtils::cache.object_godot->get_raw_class(), mono_class))
				continue;

			GDMonoClass* current = get_class(mono_class);

			if (!current)
				continue;

			nested_classes.push_back(current);

			if (!match && current->get_name() == p_class)
				match = current;

			while (!nested_classes.empty()) {
				GDMonoClass* current_nested = nested_classes.front()->get();
				nested_classes.pop_back();

				void* iter = NULL;

				while (true) {
					MonoClass* raw_nested = mono_class_get_nested_types(current_nested->get_raw_class(), &iter);

					if (!raw_nested)
						break;

					GDMonoClass* nested_class = get_class(raw_nested);

					if (nested_class) {
						cached_object_classes.insert(nested_class->get_name(), nested_class);
						nested_classes.push_back(nested_class);
					}
				}
			}

			cached_object_classes.insert(current->get_name(), current);
		}

		object_classes_updated = true;
	}

	return match;
}

GDMonoAssembly::GDMonoAssembly(const String &p_path)
{
	loaded = false;
	object_classes_updated = false;
	path = p_path;
	assembly = NULL;
	image = NULL;
}

GDMonoAssembly::~GDMonoAssembly()
{
	if (loaded)
		unload();
}
