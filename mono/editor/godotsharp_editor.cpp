/**********************************************************************************/
/* godotsharp_editor.cpp                                                          */
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
#include "godotsharp_editor.h"

#include "main/main.h"
#include "scene/gui/control.h"
#include "scene/main/node.h"

#include "../csharp_script.h"
#include "../godotsharp_dirs.h"
#include "../mono_wrapper/gd_mono_class.h"
#include "../mono_wrapper/gd_mono_marshal.h"
#include "bindings_generator.h"
#include "csharp_project.h"
#include "net_solution.h"

#ifdef WINDOWS_ENABLED
#include "../utils/mono_reg_utils.h"
#endif

class MonoReloadNode : public Node {
	GDCLASS(MonoReloadNode, Node)

protected:
	void _notification(int p_what) {
		switch (p_what) {
			case MainLoop::NOTIFICATION_WM_FOCUS_IN: {
				CSharpLanguage::get_singleton()->reload_assemblies_if_needed(true);
			} break;
			default: {
			} break;
		};
	}
};

void godot_icall_BuildInstance_ExitCallback(MonoString *, MonoString *, int);

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

bool godotsharp_build_callback();

GodotSharpEditor *GodotSharpEditor::singleton = NULL;

void GodotSharpEditor::_register_internal_calls() {

	mono_add_internal_call("GodotSharpTools.Build.BuildSystem::godot_icall_BuildInstance_ExitCallback", (void *)godot_icall_BuildInstance_ExitCallback);
	mono_add_internal_call("GodotSharpTools.Build.BuildInstance::godot_icall_BuildInstance_get_MSBuildPath", (void *)godot_icall_BuildInstance_get_MSBuildPath);
}

void GodotSharpEditor::_menu_option_pressed(int p_id) {

	switch (p_id) {
		case MENU_CREATE_SLN: {

			editor->progress_add_task("create_csharp_solution", "Generating solution...", 2);

			editor->progress_task_step("create_csharp_solution", "Generating C# project...", 1);

			String path = OS::get_singleton()->get_resource_dir();
			String name = ProjectSettings::get_singleton()->get("application/config/name");
			String guid = CSharpProject::generate_game_project(path, name);

			if (guid.length()) {

				NETSolution solution(name);

				if (!solution.set_path(path)) {
					show_error("Failed to create solution.");
				}

				Vector<String> extra_configs;
				extra_configs.push_back("Tools");

				solution.add_new_project(name, guid, extra_configs);

				Error sln_error = solution.save();

				if (sln_error != OK) {
					show_error("Failed to save solution.");
				}

				menu_popup->remove_item(menu_popup->get_item_index(MENU_CREATE_SLN));

				if (menu_popup->get_item_count() == 0)
					menu_button->hide();

			} else {
				show_error("Failed to create C# project.");
			}

			editor->progress_end_task("create_csharp_solution");
		} break;
		default:
			ERR_FAIL();
	}
}

void GodotSharpEditor::_bind_methods() {

	ClassDB::bind_method(D_METHOD("_menu_option_pressed"), &GodotSharpEditor::_menu_option_pressed);
}

void GodotSharpEditor::show_error(const String &p_message, const String &p_title) {

	error_dialog->set_title(p_title);
	error_dialog->set_text(p_message);
	error_dialog->popup_centered_minsize();
}

GodotSharpEditor::GodotSharpEditor(EditorNode *p_editor) {

	singleton = this;

	editor = p_editor;

	menu_button = memnew(MenuButton);
	menu_button->set_text("Mono");
	menu_popup = menu_button->get_popup();

	if (!FileAccess::exists(GodotSharpDirs::get_project_sln_path())) {
		menu_popup->add_item("Create C# solution", MENU_CREATE_SLN);
	}

	menu_popup->connect("id_pressed", this, "_menu_option_pressed");

	if (menu_popup->get_item_count() == 0)
		menu_button->hide();

	editor->get_menu_hb()->add_child(menu_button);

	error_dialog = memnew(AcceptDialog);
	editor->get_gui_base()->add_child(error_dialog);

	editor->add_bottom_panel_item("Mono", memnew(MonoBottomPanel(editor)));

	editor->add_build_callback(&godotsharp_build_callback);

	godotsharp_builds = memnew(GodotSharpBuilds);

	editor->add_child(memnew(MonoReloadNode));
}

GodotSharpEditor::~GodotSharpEditor() {

	singleton = NULL;

	memdelete(godotsharp_builds);
}

void godot_icall_BuildInstance_ExitCallback(MonoString *p_solution, MonoString *p_config, int p_exit_code) {

	String solution = GDMonoMarshal::mono_string_to_godot(p_solution);
	String config = GDMonoMarshal::mono_string_to_godot(p_config);
	GodotSharpBuilds::get_singleton()->build_exit_callback(solution, config, p_exit_code);
}

bool godotsharp_build_callback() {

	EditorProgress pr("mono_project_debug_build", "Building solution...", 4);

	pr.step("Generating API solution");

	String api_sln_dir = GodotSharpDirs::get_mono_solutions_dir()
								 .plus_file(API_ASSEMBLY_NAME "_" + itos(GDMono::get_singleton()->get_api_core_hash()));
	String api_sln_file = api_sln_dir.plus_file(API_ASSEMBLY_NAME ".sln");

	if (!DirAccess::exists(api_sln_dir) || !FileAccess::exists(api_sln_file)) {
		Error error = BindingsGenerator::get_singleton().generate_cs_core_project(api_sln_dir, OS::get_singleton()->is_stdout_verbose());

		if (error != OK) {
			GodotSharpEditor::get_singleton()->show_error("Failed to generate API solution.", "Build error");
			return false;
		}
	}

	pr.step("Building API solution");

	String api_build_config = "Release";

	String api_assembly_dir = api_sln_dir.plus_file("bin").plus_file(api_build_config);
	String api_assembly_file = api_assembly_dir.plus_file(API_ASSEMBLY_NAME ".dll");

	if (!FileAccess::exists(api_assembly_file)) {
		MonoBuildInfo api_build_info(api_sln_file, api_build_config);
		api_build_info.name = "Core API";
		api_build_info.custom_props = "NoWarn=1591"; // Ignore missing documentation warnings
		if (!GodotSharpBuilds::get_singleton()->build(api_build_info)) {
			GodotSharpEditor::get_singleton()->show_error("Failed to build API solution.", "Build error");
			return false;
		}
	}

	pr.step("Copying API assembly");

	String res_assemblies_dir = GodotSharpDirs::get_res_assemblies_dir();

	if (!DirAccess::exists(res_assemblies_dir)) {
		DirAccess *da = DirAccess::create_for_path(res_assemblies_dir);
		Error err = da->make_dir_recursive(res_assemblies_dir);
		memdelete(da);

		if (err != OK) {
			GodotSharpEditor::get_singleton()->show_error("Failed to create assemblies directory.", "Build error");
			return false;
		}
	}

	String res_core_assembly_file = res_assemblies_dir.plus_file(API_ASSEMBLY_NAME ".dll");

	if (!FileAccess::exists(res_core_assembly_file) || FileAccess::get_modified_time(api_assembly_file) > FileAccess::get_modified_time(res_core_assembly_file)) {
		DirAccess *da = DirAccess::create(DirAccess::ACCESS_FILESYSTEM);

		if (da->copy(api_assembly_dir.plus_file(API_ASSEMBLY_NAME ".xml"), res_assemblies_dir.plus_file(API_ASSEMBLY_NAME ".xml")))
			WARN_PRINT("Failed to copy " API_ASSEMBLY_NAME ".xml");

		if (da->copy(api_assembly_dir.plus_file(API_ASSEMBLY_NAME ".pdb"), res_assemblies_dir.plus_file(API_ASSEMBLY_NAME ".pdb")) != OK)
			WARN_PRINT("Failed to copy " API_ASSEMBLY_NAME ".pdb");

		Error err = da->copy(api_assembly_file, res_core_assembly_file);

		memdelete(da);

		if (err != OK) {
			GodotSharpEditor::get_singleton()->show_error("Failed to copy API assembly.", "Build error");
			return false;
		}
	}

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

void GodotSharpBuilds::build_exit_callback(const String &p_solution, const String &p_config, int p_exit_code) {

	BuildProcess *match = builds.getptr(MonoBuildInfo(p_solution, p_config));
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

	exc = NULL;
	Variant logger_assembly = OS::get_singleton()->get_executable_path().get_base_dir().plus_file(EDITOR_TOOLS_ASSEMBLY_NAME) + ".dll";
	Variant logger_output_dir = logs_dir;
	Variant custom_props = build_info.custom_props;
	const Variant *args[3] = { &logger_assembly, &logger_output_dir, &custom_props };
	GDMonoMethod *build_method = klass->get_method(p_blocking ? "Build" : "BuildAsync", 3);
	build_method->invoke(mono_object, args, &exc);
	if (exc) {
		mono_print_unhandled_exception(exc);
		exited = true;
		build_tab->on_build_exec_failed(build_method->get_full_name() + " threw an exception");
		return;
	}

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
