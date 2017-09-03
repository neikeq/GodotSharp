/**********************************************************************************/
/* godotsharp_editor.h                                                            */
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
#ifndef GODOTSHARP_EDITOR_H
#define GODOTSHARP_EDITOR_H

#include "../mono_wrapper/gd_mono.h"
#include "godotsharp_builds.h"

class GodotSharpEditor : public Node {
	GDCLASS(GodotSharpEditor, Object)

	EditorNode *editor;

	MenuButton *menu_button;
	PopupMenu *menu_popup;

	AcceptDialog *error_dialog;

	GodotSharpBuilds *godotsharp_builds;

	void _create_project_solution();

	void _remove_create_sln_menu_option();

	void _menu_option_pressed(int p_id);

	static GodotSharpEditor *singleton;

protected:
	static void _bind_methods();

public:
	enum MenuOptions {

		MENU_CREATE_SLN
	};

	_FORCE_INLINE_ static GodotSharpEditor *get_singleton() { return singleton; }

	void show_error(const String &p_message, const String &p_title = "Error");

	GodotSharpEditor(EditorNode *p_editor);
	~GodotSharpEditor();
};

#endif // GODOTSHARP_EDITOR_H
