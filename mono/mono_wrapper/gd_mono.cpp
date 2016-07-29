#include "gd_mono.h"

#include <mono/metadata/mono-config.h>
#include <mono/metadata/threads.h>

#include "globals.h"
#include "os/file_access.h"
#include "os/os.h"

#include "gd_mono_utils.h"
#include "csharp_script.h"

GDMono* GDMono::singleton = NULL;

void GDMono::initialize(const String& p_assemblies_path)
{
	OS::get_singleton()->print("Initializing mono...\n");

	mono_config_parse(NULL);
	domain = mono_jit_init_version("GodotEngineMono", "v4.0.30319");

	ERR_EXPLAIN("Mono: Could not initialize jit");
	ERR_FAIL_COND(!domain);

	GDMonoUtils::set_main_thread(GDMonoUtils::get_current_thread());

	register_internal_calls();

	if (!corlib_assembly) {
		corlib_assembly = memnew(GDMonoAssembly("corlib"));
		Error error = corlib_assembly->wrap_from_image(mono_get_corlib());

		if (error != OK) {
			memdelete(corlib_assembly);
			corlib_assembly = NULL;
			ERR_EXPLAIN("Mono: Failed to load corlib");
			ERR_FAIL();
		}
	}

	String project_assembly_name = Globals::get_singleton()->get("application/name");
	String project_assembly_path = p_assemblies_path + "/" + project_assembly_name + ".dll";

	if (FileAccess::exists(project_assembly_path)) {
		GDMonoUtils::clear_cache();

		// Load API assembly
		String api_assembly_name = "Assembly-CSharp";
		String api_assembly_path = p_assemblies_path + "/" + api_assembly_name + ".dll";

		ERR_EXPLAIN("Mono: Game assembly found but the API assembly is missing");
		ERR_FAIL_COND(!FileAccess::exists(api_assembly_path));

		api_assembly = memnew(GDMonoAssembly(api_assembly_path));
		api_assembly->load(domain);

		if (!api_assembly->is_loaded()) {
			memdelete(api_assembly);
			ERR_EXPLAIN("Mono: Failed to load assembly " + api_assembly_path);
			ERR_FAIL();
		}

		// Load project assembly
		project_assembly = memnew(GDMonoAssembly(project_assembly_path));
		project_assembly->load(domain);

		if (!project_assembly->is_loaded()) {
			memdelete(project_assembly);
			ERR_EXPLAIN("Mono: Failed to load assembly " + project_assembly_path);
			ERR_FAIL();
		}

		mono_assembly_set_main(project_assembly->assembly);

		assemblies.insert(api_assembly_name, api_assembly);
		assemblies.insert(project_assembly_name, project_assembly);

		GDMonoUtils::update_cache();

		initialized = true;

		OS::get_singleton()->print("Mono: Successfully initialized\n");
	} else {
		OS::get_singleton()->print("Mono: Game assembly not found\n");
	}
}

void GDMono::register_internal_calls()
{
	mono_add_internal_call("GodotEngine.InternalHelpers::UnmanagedGetManaged(intptr)", (const void*)unmanaged_get_managed);
	mono_add_internal_call("GodotEngine.InternalHelpers::TieManagedToUnmanaged(object,intptr)", (const void*)tie_managed_to_unmanaged);
}

GDMonoClass *GDMono::get_class(MonoClass *p_class)
{
	GDMonoClass* mono_class = NULL;

	for (Map<String, GDMonoAssembly*>::Element* E = assemblies.front(); E; E = E->next()) {
		mono_class = E->value()->get_class(p_class);

		if(mono_class)
			return mono_class;
	}

	return corlib_assembly->get_class(p_class);
}

GDMono::GDMono()
{
	ERR_FAIL_COND(singleton);
	singleton = this;

	initialized = false;
	domain = NULL;
	corlib_assembly = NULL;
	api_assembly = NULL;
	project_assembly = NULL;
}

GDMono::~GDMono()
{
	for (Map<String, GDMonoAssembly*>::Element* E = assemblies.front(); E; E = E->next()) {
		memdelete(E->value());
	}

	if (initialized) {
		mono_jit_cleanup(domain);
		domain = NULL;
	}

	initialized = false;
}

MonoObject *unmanaged_get_managed(void *unmanaged)
{
	Object *object = (Object *) unmanaged;

	if (object) {
		Reference *ref = object->cast_to<Reference>();

		ScriptInstance *script_instance = object->get_script_instance();

		if (script_instance) {
			CSharpInstance *cs_instance = dynamic_cast<CSharpInstance*>(script_instance);

			if (cs_instance) {
				if (ref) {
					// reference() was called previously to temporally avoid deleting the reference,
					// but a reference declared in the managed world must not reference the unmanaged side
					// in order to avoid a circular reference. The script will take responsibility of deleting
					// the unmanaged reference when the managed side gets GCed.
					ref->unreference();
				}

				return cs_instance->get_mono_object();
			}
		}

		if (object->has_meta("__mono_gchandle__")) {
			Ref<CSharpGCHandle> gchandle = object->get_meta("__mono_gchandle__");

			if (gchandle.is_valid())
				return gchandle->get_object();
		}

		GDMonoClass *type_class = GDMonoUtils::type_get_proxy_class(object->get_type());

		if (type_class)
			return GDMonoUtils::create_managed_for_unmanaged_object(type_class, type_class, object);
	}

	return NULL;
}

void tie_managed_to_unmanaged(MonoObject* managed, void *unmanaged)
{
	Object *object = (Object*) unmanaged;
	if (object) {
		Reference *ref = object->cast_to<Reference>();

		Ref<CSharpGCHandle> gchandle(memnew(CSharpGCHandle(managed)));
		object->set_meta("__mono_gchandle__", gchandle);

		if (object->get_script().is_null()) {
			// All mono objects whose state needs to be kept must have a script
			GDMonoClass* klass = GDMonoUtils::get_object_class(managed);
			Ref<CSharpScript> script = CSharpScript::create_for_managed_type(klass);
			object->set_script(script.get_ref_ptr());
		}

		if (ref) {
			// reference() was called previously to temporally avoid deleting the reference,
			// but a reference declared in the managed world must not reference the unmanaged side
			// in order to avoid a circular reference. The script will take responsibility of deleting
			// the unmanaged reference when the managed side gets GCed.
			ref->unreference();
		}
	}
}
