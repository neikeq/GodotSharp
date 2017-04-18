/**********************************************************************************/
/* csharp_project.h                                                               */
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
#ifndef CSHARP_PROJECT_H
#define CSHARP_PROJECT_H

#include "list.h"
#include "ustring.h"

namespace tinyxml2 {
class XMLDocument;
class XMLNode;
}

enum TargetFramework {
	DOTNET_30,
	DOTNET_35,
	DOTNET_40,
	DOTNET_45
};

struct CSharpProject {
	Error save_csproj();
	Error save_assembly_info();

	void set_path(const String &p_path);
	_FORCE_INLINE_ String get_path() const { return data->path; }
	void set_name(const String &p_name);
	_FORCE_INLINE_ String get_name() const { return data->name; }
	void set_guid(const String &p_guid);
	_FORCE_INLINE_ String get_guid() const { return data->guid; }
	void set_target_framework(TargetFramework p_target_framework);
	_FORCE_INLINE_ TargetFramework get_target_framework() const { return data->target_framework; }

	bool has_file(const String &p_path);
	void add_file(const String &p_path);
	void remove_file(const String &p_path);
	void get_files(const String &p_include_pattern, List<String> *r_paths);

	bool has_reference(const String &p_name);
	tinyxml2::XMLNode *add_reference(const String &p_path);
	void get_references(tinyxml2::XMLNode **p_iter);
	tinyxml2::XMLNode *add_hint_path(tinyxml2::XMLNode *p_ref, const String &p_path);
	tinyxml2::XMLNode *add_hint_path(tinyxml2::XMLNode *p_ref, const String &p_path, const String &p_condition);
	void get_hint_paths(tinyxml2::XMLNode *p_ref, tinyxml2::XMLNode **p_iter);

	void operator=(const CSharpProject &p_project);

	CSharpProject();
	CSharpProject(const CSharpProject &p_project);
	~CSharpProject();

private:
	struct Data {
		String name;
		String guid;
		String path;
		TargetFramework target_framework;
		tinyxml2::XMLDocument *doc;
		SafeRefCount refcount;

		Data();
		~Data();
	};

	Data *data;

	void unref();

	friend class NETSolution;
	static CSharpProject create_new(const String &p_name);
};

#endif // CSHARP_PROJECT_H
