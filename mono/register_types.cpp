/**********************************************************************************/
/* register_types.cpp                                                             */
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

#include "register_types.h"

#include "csharp_script.h"

#ifdef TOOLS_ENABLED
#include "editor/build_process.h"
#include "editor/editor_node.h"
#endif

CSharpLanguage *script_language_cs = NULL;
ResourceFormatLoaderCSharpScript *resource_loader_cs = NULL;
ResourceFormatSaverCSharpScript *resource_saver_cs = NULL;

_GodotSharp *_godotsharp = NULL;

void register_mono_types() {
	ClassDB::register_class<CSharpScript>();

	_godotsharp = memnew(_GodotSharp);

	ProjectSettings::get_singleton()->add_singleton(ProjectSettings::Singleton("GodotSharp", _GodotSharp::get_singleton()));

	script_language_cs = memnew(CSharpLanguage);
	ScriptServer::register_language(script_language_cs);

	resource_loader_cs = memnew(ResourceFormatLoaderCSharpScript);
	ResourceLoader::add_resource_format_loader(resource_loader_cs);
	resource_saver_cs = memnew(ResourceFormatSaverCSharpScript);
	ResourceSaver::add_resource_format_saver(resource_saver_cs);

#ifdef TOOLS_ENABLED
//EditorNode::add_build_callback(mono_build_callback);
#endif
}

void unregister_mono_types() {
	if (script_language_cs)
		script_language_cs->finish();

	ScriptServer::unregister_language(script_language_cs);

	if (script_language_cs)
		memdelete(script_language_cs);
	if (resource_loader_cs)
		memdelete(resource_loader_cs);
	if (resource_saver_cs)
		memdelete(resource_saver_cs);

	if (_godotsharp)
		memdelete(_godotsharp);
}
