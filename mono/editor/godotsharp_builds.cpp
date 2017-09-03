#include "godotsharp_builds.h"

#include "../godotsharp_dirs.h"
#include "../mono_wrapper/gd_mono_class.h"
#include "../mono_wrapper/gd_mono_marshal.h"
#include "bindings_generator.h"
#include "godotsharp_editor.h"
#include "main/main.h"

void godot_icall_BuildInstance_ExitCallback(MonoString *p_solution, MonoString *p_config, int p_exit_code) {

	String solution = GDMonoMarshal::mono_string_to_godot(p_solution);
	String config = GDMonoMarshal::mono_string_to_godot(p_config);
	GodotSharpBuilds::get_singleton()->build_exit_callback(MonoBuildInfo(solution, config), p_exit_code);
}

MonoString *godot_icall_BuildInstance_get_MSBuildPath() {
#if defined(WINDOWS_ENABLED) && (defined(DEBUG_ENABLED) || defined(TOOLS_ENABLED))
	String msbuild_tools_path = MonoRegUtils::find_msbuild_tools_path();

	if (msbuild_tools_path.ends_with("\\"))
		msbuild_tools_path += "MSBuild.exe";
	else
		msbuild_tools_path += "\\MSBuild.exe";

	return GDMonoMarshal::mono_string_from_godot(msbuild_tools_path);
#else
	return GDMonoMarshal::mono_string_from_godot("msbuild");
#endif
}

void GodotSharpBuilds::_register_internal_calls() {

	mono_add_internal_call("GodotSharpTools.Build.BuildSystem::godot_icall_BuildInstance_ExitCallback", (void *)godot_icall_BuildInstance_ExitCallback);
	mono_add_internal_call("GodotSharpTools.Build.BuildInstance::godot_icall_BuildInstance_get_MSBuildPath", (void *)godot_icall_BuildInstance_get_MSBuildPath);
}

bool GodotSharpBuilds::build_core_api_sln(const String &p_api_sln_dir, const String &p_config) {

	String api_sln_file = p_api_sln_dir.plus_file(API_ASSEMBLY_NAME ".sln");
	String api_assembly_dir = p_api_sln_dir.plus_file("bin").plus_file(p_config);
	String api_assembly_file = api_assembly_dir.plus_file(API_ASSEMBLY_NAME ".dll");

	if (!FileAccess::exists(api_assembly_file)) {
		MonoBuildInfo api_build_info(api_sln_file, p_config);
		api_build_info.name = "Core API";
		api_build_info.custom_props = "NoWarn=1591"; // Ignore missing documentation warnings

		if (!GodotSharpBuilds::get_singleton()->build(api_build_info)) {
			GodotSharpEditor::get_singleton()->show_error("Failed to build API solution.", "Build error");
			return false;
		}
	}
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
			GodotSharpEditor::get_singleton()->show_error("Failed to copy " API_ASSEMBLY_NAME ".dll", "Build error");
			return false;
		}
	}
}

bool godotsharp_build_callback() {

	EditorProgress pr("mono_project_debug_build", "Building solution...", 4);

	pr.step("Generating API solution");

	String api_sln_dir = GodotSharpDirs::get_mono_solutions_dir()
								 .plus_file(API_ASSEMBLY_NAME "_" + itos(GDMono::get_singleton()->get_api_core_hash()));
	String api_sln_file = api_sln_dir.plus_file(API_ASSEMBLY_NAME ".sln");

	if (!DirAccess::exists(api_sln_dir) || !FileAccess::exists(api_sln_file)) {
		Error err = BindingsGenerator::get_singleton().generate_cs_core_project(api_sln_dir, OS::get_singleton()->is_stdout_verbose());

		if (err != OK) {
			GodotSharpEditor::get_singleton()->show_error("Failed to generate API solution. Error: " + itos(err), "Build error");
			return false;
		}
	}

	pr.step("Building API solution");

	String api_build_config = "Release";

	if (!GodotSharpBuilds::build_core_api_sln(api_sln_dir, api_build_config))
		return false;

	pr.step("Copying API assembly");

	String res_assemblies_dir = GodotSharpDirs::get_res_assemblies_dir();

	// Create assemblies directory if needed
	if (!DirAccess::exists(res_assemblies_dir)) {
		DirAccess *da = DirAccess::create_for_path(res_assemblies_dir);
		Error err = da->make_dir_recursive(res_assemblies_dir);
		memdelete(da);

		if (err != OK) {
			GodotSharpEditor::get_singleton()->show_error("Failed to create assemblies directory. Error: " + itos(err), "Build error");
			return false;
		}
	}

	// Copy the built assembly to the assemblies directory
	String api_assembly_dir = api_sln_dir.plus_file("bin").plus_file(api_build_config);
	if (!GodotSharpBuilds::copy_api_assembly(api_assembly_dir, res_assemblies_dir, API_ASSEMBLY_NAME))
		return false;

	pr.step("Building project solution");

	MonoBuildInfo build_info(GodotSharpDirs::get_project_sln_path(), "Debug");
	build_info.name = "Project";
	if (!GodotSharpBuilds::get_singleton()->build(build_info)) {
		GodotSharpEditor::get_singleton()->show_error("Failed to build project solution [Debug]", "Build error");
		return false;
	}

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

	MonoObject *exc = NULL;
	GDMonoMethod *ctor = klass->get_method(".ctor", 2);
	ctor->invoke(mono_object, ctor_args, &exc);

	if (exc) {
		mono_print_unhandled_exception(exc);
		exited = true;
		build_tab->on_build_exec_failed(ctor->get_full_name() + " threw an exception");
		return;
	}

	// Call Build

	Variant logger_assembly = OS::get_singleton()->get_executable_path().get_base_dir().plus_file(EDITOR_TOOLS_ASSEMBLY_NAME) + ".dll";
	Variant logger_output_dir = logs_dir;
	Variant custom_props = build_info.custom_props;

	const Variant *args[3] = { &logger_assembly, &logger_output_dir, &custom_props };

	exc = NULL;
	GDMonoMethod *build_method = klass->get_method(p_blocking ? "Build" : "BuildAsync", 3);
	build_method->invoke(mono_object, args, &exc);

	if (exc) {
		mono_print_unhandled_exception(exc);
		exited = true;
		build_tab->on_build_exec_failed(build_method->get_full_name() + " threw an exception");
		return;
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
