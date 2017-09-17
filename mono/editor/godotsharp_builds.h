#ifndef GODOTSHARP_BUILDS_H
#define GODOTSHARP_BUILDS_H

#include "mono_bottom_panel.h"
#include "mono_build_info.h"

typedef void (*GodotSharpBuild_ExitCallback)(int);

class GodotSharpBuilds {

private:
	struct BuildProcess {
		Ref<MonoGCHandle> build_instance;
		MonoBuildInfo build_info;
		MonoBuildTab *build_tab;
		GodotSharpBuild_ExitCallback exit_callback;
		bool exited;
		int exit_code;

		void on_exit(int p_exit_code);
		void start(bool p_blocking = false);

		BuildProcess() {}
		BuildProcess(const MonoBuildInfo &p_build_info, GodotSharpBuild_ExitCallback p_callback = NULL);
	};

	HashMap<MonoBuildInfo, BuildProcess, MonoBuildInfo::Hasher> builds;

	static GodotSharpBuilds *singleton;

	friend class GDMono;
	static void _register_internal_calls();

public:
	enum APIType {
		API_CORE,
		API_EDITOR
	};

	_FORCE_INLINE_ static GodotSharpBuilds *get_singleton() { return singleton; }

	void build_exit_callback(const MonoBuildInfo &p_build_info, int p_exit_code);

	void restart_build(MonoBuildTab *p_build_tab);
	void stop_build(MonoBuildTab *p_build_tab);

	bool build(const MonoBuildInfo &p_build_info);
	bool build_async(const MonoBuildInfo &p_build_info, GodotSharpBuild_ExitCallback p_callback = NULL);

	static bool build_api_sln(const String &p_name, const String &p_api_sln_dir, const String &p_config);
	static bool copy_api_assembly(const String &p_src_dir, const String &p_dst_dir, const String &p_assembly_name);

	static bool make_api_sln(APIType p_api_type);

	GodotSharpBuilds();
	~GodotSharpBuilds();
};

#endif // GODOTSHARP_BUILDS_H
