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

#include "scene/gui/control.h"
#include "scene/main/node.h"

#include "../csharp_script.h"
#include "../godotsharp_dirs.h"
#include "../mono_wrapper/gd_mono.h"
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

GodotSharpEditor *GodotSharpEditor::singleton = NULL;

bool GodotSharpEditor::_create_project_solution() {

	EditorProgress pr("create_csharp_solution", "Generating solution...", 2);

	pr.step("Generating C# project...");

	String path = OS::get_singleton()->get_resource_dir();
	String name = ProjectSettings::get_singleton()->get("application/config/name");
	String guid = CSharpProject::generate_game_project(path, name);

	if (guid.length()) {

		NETSolution solution(name);

		if (!solution.set_path(path)) {
			show_error("Failed to create solution.");
			return false;
		}

		Vector<String> extra_configs;
		extra_configs.push_back("Tools");

		solution.add_new_project(name, guid, extra_configs);

		Error sln_error = solution.save();

		if (sln_error != OK) {
			show_error("Failed to save solution.");
			return false;
		}

		if (!GodotSharpBuilds::make_api_sln(GodotSharpBuilds::API_CORE))
			return false;

		if (!GodotSharpBuilds::make_api_sln(GodotSharpBuilds::API_EDITOR))
			return false;

		call_deferred("_remove_create_sln_menu_option");

	} else {
		show_error("Failed to create C# project.");
	}

	pr.step("Done");

	return true;
}

void GodotSharpEditor::_remove_create_sln_menu_option() {

	menu_popup->remove_item(menu_popup->get_item_index(MENU_CREATE_SLN));

	if (menu_popup->get_item_count() == 0)
		menu_button->hide();
}

void GodotSharpEditor::_menu_option_pressed(int p_id) {

	switch (p_id) {
		case MENU_CREATE_SLN: {

			_create_project_solution();
		} break;
		default:
			ERR_FAIL();
	}
}

void GodotSharpEditor::_bind_methods() {

	ClassDB::bind_method(D_METHOD("_create_project_solution"), &GodotSharpEditor::_create_project_solution);
	ClassDB::bind_method(D_METHOD("_remove_create_sln_menu_option"), &GodotSharpEditor::_remove_create_sln_menu_option);
	ClassDB::bind_method(D_METHOD("_menu_option_pressed", "id"), &GodotSharpEditor::_menu_option_pressed);
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

	menu_popup->connect("id_pressed", this, "_menu_option_pressed", varray(), CONNECT_DEFERRED);

	if (menu_popup->get_item_count() == 0)
		menu_button->hide();

	editor->get_menu_hb()->add_child(menu_button);

	error_dialog = memnew(AcceptDialog);
	editor->get_gui_base()->add_child(error_dialog);

	editor->add_bottom_panel_item("Mono", memnew(MonoBottomPanel(editor)));

	godotsharp_builds = memnew(GodotSharpBuilds);

	editor->add_child(memnew(MonoReloadNode));
}

GodotSharpEditor::~GodotSharpEditor() {

	singleton = NULL;

	memdelete(godotsharp_builds);
}
