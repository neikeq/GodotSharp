#ifndef GD_MONO_H
#define GD_MONO_H

#include "gd_mono_assembly.h"
#include "../godotsharp_defs.h"

#define GDMONO_DOMAIN GDMono::get_singleton()->get_domain()

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
	enum MemberVisibility
	{
		PRIVATE,
		PROTECTED_AND_INTERNAL, // FAM_AND_ASSEM
		INTERNAL, // ASSEMBLY
		PROTECTED, // FAMILY
		PUBLIC
	};

	static GDMono* get_singleton() { return singleton; }

	_FORCE_INLINE_ bool is_initialized() const { return initialized; }

	_FORCE_INLINE_ MonoDomain* get_domain() { return domain; }

	_FORCE_INLINE_ GDMonoAssembly* get_corlib_assembly() const { return corlib_assembly; }
	_FORCE_INLINE_ GDMonoAssembly* get_api_assembly() const { return api_assembly; }
	_FORCE_INLINE_ GDMonoAssembly* get_project_assembly() const { return project_assembly; }

	GDMonoClass* get_class(MonoClass* p_class);

	void initialize(const String& p_assemblies_path);

	GDMono();
	~GDMono();
};

#endif // GD_MONO_H
