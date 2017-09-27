#include "godotsharp_builds.h"

#include "../godotsharp_dirs.h"
#include "../mono_wrapper/gd_mono_class.h"
#include "../mono_wrapper/gd_mono_marshal.h"
#include "../utils/path_utils.h"
#include "bindings_generator.h"
#include "godotsharp_editor.h"
#include "main/main.h"

void godot_icall_BuildInstance_ExitCallback(MonoString *p_solution, MonoString *p_config, int p_exit_code) {

	String solution = GDMonoMarshal::mono_string_to_godot(p_solution);
	String config = GDMonoMarshal::mono_string_to_godot(p_config);
	GodotSharpBuilds::get_singleton()->build_exit_callback(MonoBuildInfo(solution, config), p_exit_code);
}

MonoString *godot_icall_BuildInstance_get_MSBuildPath() {

	GodotSharpBuilds::BuildTool build_tool = GodotSharpBuilds::BuildTool(int(EditorSettings::get_singleton()->get("mono/builds/build_tool")));
#ifdef WINDOWS_ENABLED
	switch (build_tool) {
		case GodotSharpBuilds::MSBUILD_MONO: {
			String msbuild_path = GDMono::get_singleton()->get_mono_reg_info().bin_dir.plus_file("msbuild.bat");

			if (!FileAccess::exists(msbuild_path)) {
				WARN_PRINTS("Cannot find msbuild ('mono/builds/build_tool'). Tried with path: " + msbuild_path);
			}

			return GDMonoMarshal::mono_string_from_godot(msbuild_path);
		}
		case GodotSharpBuilds::MSBUILD: {
			String msbuild_tools_path = MonoRegUtils::find_msbuild_tools_path();

			if (msbuild_tools_path.ends_with("\\"))
				msbuild_tools_path += "MSBuild.exe";
			else
				msbuild_tools_path += "\\MSBuild.exe";

			return GDMonoMarshal::mono_string_from_godot(msbuild_tools_path);
		}
		case GodotSharpBuilds::XBUILD: {
			String xbuild_path = GDMono::get_singleton()->get_mono_reg_info().bin_dir.plus_file("xbuild.bat");

			if (!FileAccess::exists(xbuild_path)) {
				WARN_PRINTS("Cannot find xbuild ('mono/builds/build_tool'). Tried with path: " + xbuild_path);
			}

			return GDMonoMarshal::mono_string_from_godot(xbuild_path);
		}
		default:
			ERR_EXPLAIN("You don't deserve to live");
			CRASH_NOW();
	}
#else
	bool msbuild_found = path_which("msbuild").length();

	if (build_tool != GodotSharpBuilds::XBUILD && !msbuild_found) {
		WARN_PRINT("Cannot find msbuild ('mono/builds/build_tool').");
	}

	return GDMonoMarshal::mono_string_from_godot(build_tool != GodotSharpBuilds::XBUILD ? "msbuild" : "xbuild");
#endif
}

void GodotSharpBuilds::_register_internal_calls() {

	mono_add_internal_call("GodotSharpTools.Build.BuildSystem::godot_icall_BuildInstance_ExitCallback", (void *)godot_icall_BuildInstance_ExitCallback);
	mono_add_internal_call("GodotSharpTools.Build.BuildInstance::godot_icall_BuildInstance_get_MSBuildPath", (void *)godot_icall_BuildInstance_get_MSBuildPath);
}

void GodotSharpBuilds::show_build_error_dialog(const String &p_message) {

	GodotSharpEditor::get_singleton()->show_error_dialog(p_message, "Build error");
	MonoBottomPanel::get_singleton()->show_build_tab();
}

bool GodotSharpBuilds::build_api_sln(const String &p_name, const String &p_api_sln_dir, const String &p_config) {

	String api_sln_file = p_api_sln_dir.plus_file(p_name + ".sln");
	String api_assembly_dir = p_api_sln_dir.plus_file("bin").plus_file(p_config);
	String api_assembly_file = api_assembly_dir.plus_file(p_name + ".dll");

	if (!FileAccess::exists(api_assembly_file)) {
		MonoBuildInfo api_build_info(api_sln_file, p_config);
		api_build_info.custom_props.push_back("NoWarn=1591"); // Ignore missing documentation warnings

		if (!GodotSharpBuilds::get_singleton()->build(api_build_info)) {
			show_build_error_dialog("Failed to build " + p_name + " solution.");
			return false;
		}
	}

	return true;
}

bool GodotSharpBuilds::copy_api_assembly(const String &p_src_dir, const String &p_dst_dir, const String &p_assembly_name) {

	String assembly_file = p_assembly_name + ".dll";
	String assembly_src = p_src_dir.plus_file(assembly_file);
	String assembly_dst = p_dst_dir.plus_file(assembly_file);

	if (!FileAccess::exists(assembly_dst) || FileAccess::get_modified_time(assembly_src) > FileAccess::get_modified_time(assembly_dst)) {
		DirAccess *da = DirAccess::create(DirAccess::ACCESS_FILESYSTEM);

		String xml_file = p_assembly_name + ".xml";
		if (da->copy(p_src_dir.plus_file(xml_file), p_dst_dir.plus_file(xml_file)) != OK)
			WARN_PRINTS("Failed to copy " + xml_file);

		String pdb_file = p_assembly_name + ".pdb";
		if (da->copy(p_src_dir.plus_file(pdb_file), p_dst_dir.plus_file(pdb_file)) != OK)
			WARN_PRINTS("Failed to copy " + pdb_file);

		Error err = da->copy(assembly_src, assembly_dst);

		memdelete(da);

		if (err != OK) {
			show_build_error_dialog("Failed to copy " API_ASSEMBLY_NAME ".dll");
			return false;
		}
	}

	return true;
}

bool GodotSharpBuilds::make_api_sln(GodotSharpBuilds::APIType p_api_type) {

	String api_name = p_api_type == API_CORE ? API_ASSEMBLY_NAME : EDITOR_API_ASSEMBLY_NAME;
	String api_build_config = "Release";

	EditorProgress pr("mono_build_release_" + api_name, "Building " + api_name + " solution...", 4);

	pr.step("Generating " + api_name + " solution");

	uint64_t core_hash = GDMono::get_singleton()->get_api_core_hash();
	uint64_t editor_hash = GDMono::get_singleton()->get_api_editor_hash();

	String core_api_sln_dir = GodotSharpDirs::get_mono_solutions_dir().plus_file(API_ASSEMBLY_NAME "_" + itos(core_hash));
	String editor_api_sln_dir = GodotSharpDirs::get_mono_solutions_dir().plus_file(EDITOR_API_ASSEMBLY_NAME "_" + itos(editor_hash));

	String api_sln_dir = p_api_type == API_CORE ? core_api_sln_dir : editor_api_sln_dir;
	String api_sln_file = api_sln_dir.plus_file(api_name + ".sln");

	if (!DirAccess::exists(api_sln_dir) || !FileAccess::exists(api_sln_file)) {
		String core_api_assembly;

		if (p_api_type == API_EDITOR) {
			core_api_assembly = core_api_sln_dir.plus_file("bin")
										.plus_file(api_build_config)
										.plus_file(API_ASSEMBLY_NAME ".dll");
		}

#ifndef DEBUG_METHODS_ENABLED
#error "How am I supposed to generate the bindings?"
#endif

		BindingsGenerator &gen = BindingsGenerator::get_singleton();
		bool gen_verbose = OS::get_singleton()->is_stdout_verbose();

		Error err = p_api_type == API_CORE ?
							gen.generate_cs_core_project(api_sln_dir, gen_verbose) :
							gen.generate_cs_editor_project(api_sln_dir, core_api_assembly, gen_verbose);

		if (err != OK) {
			show_build_error_dialog("Failed to generate " + api_name + " solution. Error: " + itos(err));
			return false;
		}
	}

	pr.step("Building " + api_name + " solution");

	if (!GodotSharpBuilds::build_api_sln(api_name, api_sln_dir, api_build_config))
		return false;

	pr.step("Copying " + api_name + " assembly");

	String res_assemblies_dir = GodotSharpDirs::get_res_assemblies_dir();

	// Create assemblies directory if needed
	if (!DirAccess::exists(res_assemblies_dir)) {
		DirAccess *da = DirAccess::create_for_path(res_assemblies_dir);
		Error err = da->make_dir_recursive(res_assemblies_dir);
		memdelete(da);

		if (err != OK) {
			show_build_error_dialog("Failed to create assemblies directory. Error: " + itos(err));
			return false;
		}
	}

	// Copy the built assembly to the assemblies directory
	String api_assembly_dir = api_sln_dir.plus_file("bin").plus_file(api_build_config);
	if (!GodotSharpBuilds::copy_api_assembly(api_assembly_dir, res_assemblies_dir, api_name))
		return false;

	pr.step("Done");

	return true;
}

bool godotsharp_build_callback() {

	if (!FileAccess::exists(GodotSharpDirs::get_project_sln_path()))
		return true; // No solution to build

	if (!GodotSharpBuilds::make_api_sln(GodotSharpBuilds::API_CORE))
		return false;

	if (!GodotSharpBuilds::make_api_sln(GodotSharpBuilds::API_EDITOR))
		return false;

	EditorProgress pr("mono_project_debug_build", "Building project solution...", 2);

	pr.step("Building project solution");

	MonoBuildInfo build_info(GodotSharpDirs::get_project_sln_path(), "Tools");
	if (!GodotSharpBuilds::get_singleton()->build(build_info)) {
		GodotSharpBuilds::show_build_error_dialog("Failed to build project solution");
		return false;
	}

	pr.step("Done");

	return true;
}

GodotSharpBuilds *GodotSharpBuilds::singleton = NULL;

void GodotSharpBuilds::build_exit_callback(const MonoBuildInfo &p_build_info, int p_exit_code) {

	BuildProcess *match = builds.getptr(p_build_info);
	ERR_FAIL_COND(!match);

	BuildProcess &bp = *match;
	bp.on_exit(p_exit_code);
}

void GodotSharpBuilds::restart_build(MonoBuildTab *p_build_tab) {
}

void GodotSharpBuilds::stop_build(MonoBuildTab *p_build_tab) {
}

bool GodotSharpBuilds::build(const MonoBuildInfo &p_build_info) {

	BuildProcess *match = builds.getptr(p_build_info);

	if (match) {
		BuildProcess &bp = *match;
		bp.start(true);
		return bp.exit_code == 0;
	} else {
		BuildProcess bp = BuildProcess(p_build_info);
		bp.start(true);
		builds.set(p_build_info, bp);
		return bp.exit_code == 0;
	}
}

bool GodotSharpBuilds::build_async(const MonoBuildInfo &p_build_info, GodotSharpBuild_ExitCallback p_callback) {

	BuildProcess *match = builds.getptr(p_build_info);

	if (match) {
		BuildProcess &bp = *match;
		bp.start();
		return !bp.exited; // failed to start
	} else {
		BuildProcess bp = BuildProcess(p_build_info, p_callback);
		bp.start();
		builds.set(p_build_info, bp);
		return !bp.exited; // failed to start
	}
}

GodotSharpBuilds::GodotSharpBuilds() {

	singleton = this;

	EditorNode::get_singleton()->add_build_callback(&godotsharp_build_callback);

	// Build tool settings
	EditorSettings *ed_settings = EditorSettings::get_singleton();
	if (!ed_settings->has("mono/builds/build_tool")) {
		ed_settings->set("mono/builds/build_tool", MSBUILD_MONO);
	}
	ed_settings->add_property_hint(PropertyInfo(Variant::INT, "mono/builds/build_tool", PROPERTY_HINT_ENUM, "MSBuild (Mono),MSBuild (.NET Framework),xbuild"));
}

GodotSharpBuilds::~GodotSharpBuilds() {

	singleton = NULL;
}

void GodotSharpBuilds::BuildProcess::on_exit(int p_exit_code) {

	exited = true;
	exit_code = p_exit_code;
	build_tab->on_build_exit(p_exit_code == 0 ? MonoBuildTab::RESULT_SUCCESS : MonoBuildTab::RESULT_ERROR);
	build_instance.unref();

	if (exit_callback)
		exit_callback(exit_code);
}

void GodotSharpBuilds::BuildProcess::start(bool p_blocking) {

	_GDMONO_SCOPE_DOMAIN_(TOOLS_DOMAIN)

	exit_code = -1;

	String logs_dir = GodotSharpDirs::get_build_logs_dir().plus_file(build_info.solution.md5_text() + "_" + build_info.configuration);

	if (build_tab) {
		build_tab->on_build_start();
	} else {
		build_tab = memnew(MonoBuildTab(build_info, logs_dir));
		MonoBottomPanel::get_singleton()->add_build_tab(build_tab);
	}

	if (p_blocking) {
		// Required in order to update the build tasks list
		Main::iteration();
	}

	if (!exited) {
		ERR_PRINT("BuildProcess::start called, but process still running");
		exited = true;
		build_tab->on_build_exec_failed("!exited");
		return;
	}

	exited = false;

	// Remove old issues file

	String issues_file = "msbuild_issues.csv";
	DirAccessRef d = DirAccess::create_for_path(logs_dir);
	if (d->file_exists(issues_file)) {
		Error err = d->remove(issues_file);
		if (err != OK) {
			ERR_PRINTS("Cannot remove file: " + logs_dir.plus_file(issues_file));
			exited = true;
			build_tab->on_build_exec_failed("Cannot remove file: " + issues_file);
			return;
		}
	}

	GDMonoClass *klass = GDMono::get_singleton()->get_editor_tools_assembly()->get_class("GodotSharpTools.Build", "BuildInstance");

	MonoObject *mono_object = mono_object_new(mono_domain_get(), klass->get_raw());

	// Construct

	Variant solution = build_info.solution;
	Variant config = build_info.configuration;

	const Variant *ctor_args[2] = { &solution, &config };

	MonoObject *ex = NULL;
	GDMonoMethod *ctor = klass->get_method(".ctor", 2);
	ctor->invoke(mono_object, ctor_args, &ex);

	if (ex) {
		exited = true;
		build_tab->on_build_exec_failed("The build constructor threw an exception.\n" + GDMonoUtils::get_exception_name_and_message(ex));
		ERR_FAIL();
	}

	// Call Build

	Variant logger_assembly = OS::get_singleton()->get_executable_path().get_base_dir().plus_file(EDITOR_TOOLS_ASSEMBLY_NAME) + ".dll";
	Variant logger_output_dir = logs_dir;
	Variant custom_props = build_info.custom_props;

	const Variant *args[3] = { &logger_assembly, &logger_output_dir, &custom_props };

	ex = NULL;
	GDMonoMethod *build_method = klass->get_method(p_blocking ? "Build" : "BuildAsync", 3);
	build_method->invoke(mono_object, args, &ex);

	if (ex) {
		exited = true;
		build_tab->on_build_exec_failed("The build method threw an exception.\n" + GDMonoUtils::get_exception_name_and_message(ex));
		ERR_FAIL();
	}

	// Build returned

	if (p_blocking) {
		exited = true;
		exit_code = klass->get_field("exitCode")->get_int_value(mono_object);
		build_tab->on_build_exit(exit_code == 0 ? MonoBuildTab::RESULT_SUCCESS : MonoBuildTab::RESULT_ERROR);
	} else {
		build_instance = MonoGCHandle::create_strong(mono_object);
		exited = false;
	}
}

GodotSharpBuilds::BuildProcess::BuildProcess(const MonoBuildInfo &p_build_info, GodotSharpBuild_ExitCallback p_callback) {

	build_info = p_build_info;
	build_tab = NULL;
	exit_callback = p_callback;
	exited = true;
	exit_code = -1;
}
