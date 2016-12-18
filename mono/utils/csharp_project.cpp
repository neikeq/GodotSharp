#include "csharp_project.h"

#include "globals.h"
#include "os/dir_access.h"
#include "os/file_access.h"

#include "path_utils.h"
#include "string_format.h"
#include "tinyxml2/tinyxml2.h"

#include "../mono_wrapper/gd_mono_class.h"
#include "../mono_wrapper/gd_mono_marshal.h"
#include "../mono_wrapper/gd_mono_method.h"

#define ASSEMBLY_INFO_TEMPLATE \
	"using System.Reflection;\n" \
	"\n" \
	"// Information about this assembly is defined by the following attributes.\n" \
	"// Change them to the values specific to your project.\n" \
	"\n" \
	"[assembly: AssemblyTitle (\"%0\")]\n" \
	"[assembly: AssemblyDescription (\"\")]\n" \
	"[assembly: AssemblyConfiguration (\"\")]\n" \
	"[assembly: AssemblyCompany (\"\")]\n" \
	"[assembly: AssemblyProduct (\"\")]\n" \
	"[assembly: AssemblyCopyright (\"\")]\n" \
	"[assembly: AssemblyTrademark (\"\")]\n" \
	"[assembly: AssemblyCulture (\"\")]\n" \
	"\n" \
	"// The assembly version has the format \"{Major}.{Minor}.{Build}.{Revision}\".\n" \
	"// The form \"{Major}.{Minor}.*\" will automatically update the build and revision,\n" \
	"// and \"{Major}.{Minor}.{Build}.*\" will update just the revision.\n" \
	"\n" \
	"[assembly: AssemblyVersion (\"1.0.*\")]\n" \
	"\n" \
	"// The following attributes are used to specify the signing key for the assembly,\n" \
	"// if desired. See the Mono documentation for more information about signing.\n" \
	"\n" \
	"//[assembly: AssemblyDelaySign(false)]\n" \
	"//[assembly: AssemblyKeyFile(\"\")]\n"

#define PROJECT_TEMPLATE \
	"<?xml version=\"1.0\" encoding=\"utf-8\"?>\n" \
	"<Project DefaultTargets=\"Build\" ToolsVersion=\"4.0\" xmlns=\"http://schemas.microsoft.com/developer/msbuild/2003\">\n" \
	"  <PropertyGroup>\n" \
	"    <Configuration Condition=\" '$(Configuration)' == '' \">Debug</Configuration>\n" \
	"    <Platform Condition=\" '$(Platform)' == '' \">AnyCPU</Platform>\n" \
	"    <ProjectGuid>{%0}</ProjectGuid>\n" \
	"    <OutputType>Library</OutputType>\n" \
	"    <RootNamespace>{%1}</RootNamespace>\n" \
	"    <AssemblyName>{%2}</AssemblyName>\n" \
	"    <TargetFrameworkVersion>{%3}</TargetFrameworkVersion>\n" \
	"  </PropertyGroup>\n" \
	"  <PropertyGroup Condition=\" '$(Configuration)|$(Platform)' == 'Debug|AnyCPU' \">\n" \
	"    <DebugSymbols>true</DebugSymbols>\n" \
	"    <DebugType>full</DebugType>\n" \
	"    <Optimize>false</Optimize>\n" \
	"    <OutputPath>bin\\Debug</OutputPath>\n" \
	"    <DefineConstants>DEBUG;</DefineConstants>\n" \
	"    <ErrorReport>prompt</ErrorReport>\n" \
	"    <WarningLevel>4</WarningLevel>\n" \
	"    <ConsolePause>false</ConsolePause>\n" \
	"  </PropertyGroup>\n" \
	"  <PropertyGroup Condition=\" '$(Configuration)|$(Platform)' == 'Release|AnyCPU' \">\n" \
	"    <DebugType>full</DebugType>\n" \
	"    <Optimize>true</Optimize>\n" \
	"    <OutputPath>bin\\Release</OutputPath>\n" \
	"    <ErrorReport>prompt</ErrorReport>\n" \
	"    <WarningLevel>4</WarningLevel>\n" \
	"    <ConsolePause>false</ConsolePause>\n" \
	"  </PropertyGroup>\n" \
	"  <ItemGroup>\n" \
	"    <Reference Include=\"System\" />\n" \
	"  </ItemGroup>\n" \
	"  <ItemGroup>\n" \
	"    <Compile Include=\"Properties\\AssemblyInfo.cs\" />\n" \
	"  </ItemGroup>\n" \
	"  <Import Project=\"$(MSBuildBinPath)\\Microsoft.CSharp.targets\" />\n" \
	"</Project>\n"

#define EMPTY_GUID "00000000-0000-0000-0000-000000000000"

using namespace tinyxml2;

static String _new_guid()
{
	GDMonoClass* guid_class = GDMono::get_singleton()->get_corlib_assembly()->get_class("System", "Guid");
	ERR_FAIL_COND_V(!guid_class, EMPTY_GUID);

	GDMonoMethod* new_guid = guid_class->get_method("NewGuid", 0);
	ERR_FAIL_COND_V(!new_guid, EMPTY_GUID);
	ERR_FAIL_COND_V(!new_guid->is_static(), EMPTY_GUID);

	MonoObject* guid_boxed = new_guid->invoke(NULL);

	MonoObject* exc;
	MonoString* guid_str = mono_object_to_string(guid_boxed, &exc);

	if (exc) {
		mono_print_unhandled_exception(exc);
		return EMPTY_GUID;
	}

	return GDMonoMarshal::mono_string_to_godot(guid_str).to_upper();
}

_FORCE_INLINE_ static const char* to_str(const TargetFramework& tf)
{
	switch (tf) {
		case DOTNET_30:
			return "v3.0";
		case DOTNET_35:
			return "v3.5";
		case DOTNET_40:
			return "v4.0";
		case DOTNET_45:
			return "v4.5";
		default:
			ERR_PRINTS(String() + "Unknown TargetFramework " + itos(tf));
			return "v4.5";
	}
}

Error CSharpProject::save_csproj()
{
	FileAccessRef file = FileAccess::open(path_join(path, name + ".csproj"), FileAccess::WRITE);
	ERR_FAIL_COND_V(!file, ERR_FILE_CANT_WRITE);

	XMLPrinter printer;
	doc->Print(&printer);
	file->store_string(printer.CStr());
	file->close();

	return OK;
}

Error CSharpProject::save_assembly_info()
{
	String props_dir = path_join(path, "Properties");

	if (DirAccess::exists(props_dir)) {
		DirAccessRef da = DirAccess::create(DirAccess::ACCESS_FILESYSTEM);

		ERR_FAIL_COND_V(da->make_dir(props_dir) != OK, ERR_CANT_CREATE);
	}

	FileAccessRef file = FileAccess::open(path_join(props_dir, "AssemblyInfo.cs"), FileAccess::WRITE);
	ERR_FAIL_COND_V(!file, ERR_FILE_CANT_WRITE);
	file->store_string(sformat(ASSEMBLY_INFO_TEMPLATE, name));
	file->close();

	return OK;
}

bool CSharpProject::has_file(const String &p_path)
{
	String file = make_relative_win_path(p_path);

	XMLElement* proj = doc->FirstChildElement("Project");
	ERR_FAIL_COND_V(!proj, false);

	XMLElement* item_group = proj->FirstChildElement("ItemGroup");

	while (item_group) {
		XMLElement* item = item_group->FirstChildElement();

		while (item) {
			if (item && item->Attribute("Include") == file)
				return true;

			item = item->NextSiblingElement();
		}

		item_group = item_group->NextSiblingElement("ItemGroup");
	}

	return false;
}

void CSharpProject::add_file(const String &p_path)
{
	String file = make_relative_win_path(p_path);

	XMLElement* proj = doc->FirstChildElement("Project");
	ERR_FAIL_COND(!proj);

	XMLNode* prev = NULL;
	XMLNode* item_group = proj->FirstChildElement("ItemGroup");
	const char* item_name = "Compile";

	while (item_group) {
		XMLElement* item = item_group->FirstChildElement();

		while (item) {
			if (item && String(item->Attribute("Include")).ends_with(".cs")) {
				item_name = item->Name();
				break;
			}

			item = item->NextSiblingElement();
		}

		prev = item_group;
		item_group = item_group->NextSiblingElement("ItemGroup");
	}

	if (!item_group) {
		if (prev)
			item_group = proj->InsertAfterChild(prev, doc->NewElement("ItemGroup"));
		else
			item_group = proj->InsertEndChild(doc->NewElement("ItemGroup"));
		ERR_FAIL_COND(!item_group);
	}

	XMLElement* file_elem = doc->NewElement(item_name);
	file_elem->SetAttribute("Include", file.utf8());
	item_group->InsertEndChild(file_elem);
}

void CSharpProject::remove_file(const String &p_path)
{
	String file = make_relative_win_path(p_path);

	XMLElement* proj = doc->FirstChildElement("Project");
	ERR_FAIL_COND(!proj);

	XMLElement* item_group = proj->FirstChildElement("ItemGroup");

	while (item_group) {
		XMLElement* item = item_group->FirstChildElement();

		while (item) {
			if (item && item->Attribute("Include") == file) {
				item_group->DeleteChild(item);
				break;
			}

			item = item->NextSiblingElement();
		}

		item_group = item_group->NextSiblingElement("ItemGroup");
	}
}

void CSharpProject::get_all_files(const String &p_pattern, List<String> r_paths)
{
	XMLElement* proj = doc->FirstChildElement("Project");
	ERR_FAIL_COND(!proj);

	XMLElement* item_group = proj->FirstChildElement("ItemGroup");

	while (item_group) {
		XMLElement* item = item_group->FirstChildElement();

		while (item) {
			const String& incl = item->Attribute("Include");

			if (incl.match(p_pattern))
				r_paths.push_back(make_local_godot_path(incl));

			item = item->NextSiblingElement();
		}

		item_group = item_group->NextSiblingElement("ItemGroup");
	}
}

bool CSharpProject::has_reference(const String &p_name)
{
	XMLElement* proj = doc->FirstChildElement("Project");
	ERR_FAIL_COND_V(!proj, false);

	XMLElement* item_group = proj->FirstChildElement("ItemGroup");

	while (item_group) {
		XMLElement* item = item_group->FirstChildElement("Reference");

		while (item) {
			if (item && item->Attribute("Include") == p_name) // TODO Safe assembly path comparison
				return true;

			item = item->NextSiblingElement("Reference");
		}

		item_group = item_group->NextSiblingElement("ItemGroup");
	}

	return false;
}

void CSharpProject::add_reference(const String &p_name, const String &p_hint_path)
{

}

void CSharpProject::remove_reference(const String &p_name)
{
	XMLElement* proj = doc->FirstChildElement("Project");
	ERR_FAIL_COND(!proj);

	XMLElement* item_group = proj->FirstChildElement("ItemGroup");

	while (item_group) {
		XMLElement* item = item_group->FirstChildElement("Reference");

		while (item) {
			if (item && item->Attribute("Include") == p_name) {
				item_group->DeleteChild(item);
				break;
			}

			item = item->NextSiblingElement("Reference");
		}

		item_group = item_group->NextSiblingElement("ItemGroup");
	}
}

void CSharpProject::get_all_references(const String &p_pattern, Map<String, String> r_references)
{

}

CSharpProject CSharpProject::create_new(const String& p_name)
{
	CSharpProject proj;

	proj.name = p_name;
	proj.guid = _new_guid();
	proj.target_framework = DOTNET_45;
	proj.doc->Parse(sformat(PROJECT_TEMPLATE, proj.guid, proj.name, proj.name, to_str(proj.target_framework)).utf8());

	return proj;
}
