#ifndef GD_MONO_H
#define GD_MONO_H

#include "gd_mono_assembly.h"

class GDMono
{
	static GDMono* singleton;

	bool initialized;

	MonoDomain* domain;

	GDMonoAssembly* corlib_assembly;
	GDMonoAssembly* api_assembly;
	GDMonoAssembly* project_assembly;

	Map<String, GDMonoAssembly*> assemblies;

	void register_internal_calls();

public:
	static GDMono* get_singleton() { return singleton; }

	inline bool is_initialized() const { return initialized; }

	inline MonoDomain* get_domain() { return domain; }

	inline GDMonoAssembly* get_corlib_assembly() const { return corlib_assembly; }
	inline GDMonoAssembly* get_api_assembly() const { return api_assembly; }
	inline GDMonoAssembly* get_project_assembly() const { return project_assembly; }

	GDMonoClass* get_class(MonoClass* p_class);

	void initialize(const String& p_assemblies_path);

	GDMono();
	~GDMono();
};

// Internal Calls

MonoObject *unmanaged_get_managed(void *unmanaged);
void tie_managed_to_unmanaged(MonoObject* managed, void *unmanaged);

#endif // GD_MONO_H
