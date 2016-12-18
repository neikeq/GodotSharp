#ifndef CSHARP_PROJECT_H
#define CSHARP_PROJECT_H

#include "list.h"
#include "map.h"
#include "ustring.h"

namespace tinyxml2
{
class XMLDocument;
}

enum TargetFramework
{
	DOTNET_30,
	DOTNET_35,
	DOTNET_40,
	DOTNET_45
};

struct CSharpProject
{
	String name; // TODO private
	String guid;
	String path;
	TargetFramework target_framework;
	tinyxml2::XMLDocument* doc;

	Error save_csproj();
	Error save_assembly_info();

	bool has_file(const String& p_path);
	void add_file(const String& p_path);
	void remove_file(const String& p_path);
	void get_all_files(const String& p_pattern, List<String> r_paths);

	bool has_reference(const String& p_name);
	void add_reference(const String& p_name, const String& p_hint_path = String());
	void remove_reference(const String& p_name);
	void get_all_references(const String& p_pattern, Map<String, String> r_references);

	static CSharpProject create_new(const String& p_name);

	CSharpProject() {}
};

#endif // CSHARP_PROJECT_H
