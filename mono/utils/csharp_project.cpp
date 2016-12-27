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
	"    <RootNamespace>%1</RootNamespace>\n" \
	"    <AssemblyName>%2</AssemblyName>\n" \
	"    <TargetFrameworkVersion>%3</TargetFrameworkVersion>\n" \
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
	FileAccessRef file = FileAccess::open(path_join(data->path, data->name + ".csproj"), FileAccess::WRITE);
	ERR_FAIL_COND_V(!file, ERR_FILE_CANT_WRITE);

	XMLPrinter printer;
	data->doc->Print(&printer);
#if 0
	file->store_string(printer.CStr());
#else
	// tinyxml2 does not allow optionally disabling entities...
	// not sure if a big deal. msbuild parses it correctly and makes the convertion
	// but just to be sure...
	file->store_string(String(printer.CStr()).replace("&apos;", "\'"));
#endif
	file->close();

	return OK;
}

Error CSharpProject::save_assembly_info()
{
	String props_dir = path_join(data->path, "Properties");

	if (!DirAccess::exists(props_dir)) {
		DirAccessRef da = DirAccess::create(DirAccess::ACCESS_FILESYSTEM);
		ERR_FAIL_COND_V(da->make_dir(props_dir) != OK, ERR_CANT_CREATE);
	}

	FileAccessRef file = FileAccess::open(path_join(props_dir, "AssemblyInfo.cs"), FileAccess::WRITE);
	ERR_FAIL_COND_V(!file, ERR_FILE_CANT_WRITE);
	file->store_string(sformat(ASSEMBLY_INFO_TEMPLATE, data->name));
	file->close();

	return OK;
}

void CSharpProject::set_path(const String &p_path)
{
	data->path = p_path;
}

void CSharpProject::set_name(const String& p_name)
{
	data->name = p_name;
}

void CSharpProject::set_guid(const String &p_guid)
{
	data->guid = p_guid;
}

void CSharpProject::set_target_framework(TargetFramework p_target_framework)
{
	data->target_framework = p_target_framework;
}

bool CSharpProject::has_file(const String &p_path)
{
	String file = make_relative_win_path(data->path, p_path);

	XMLElement* proj = data->doc->FirstChildElement("Project");
	ERR_FAIL_COND_V(!proj, false);

	XMLElement* item_group = proj->FirstChildElement("ItemGroup");

	while (item_group) {
		XMLElement* item = item_group->FirstChildElement();

		while (item) {
			if (item->Attribute("Include") == file)
				return true;

			item = item->NextSiblingElement();
		}

		item_group = item_group->NextSiblingElement("ItemGroup");
	}

	return false;
}

void CSharpProject::add_file(const String &p_path)
{
	String file = make_relative_win_path(data->path, p_path);

	XMLElement* proj = data->doc->FirstChildElement("Project");
	ERR_FAIL_COND(!proj);

	XMLNode* prev = NULL;
	XMLNode* item_group = proj->FirstChildElement("ItemGroup");

	while (item_group) {
		XMLElement* item = item_group->FirstChildElement("Compile");

		if (item)
			break;

		prev = item_group;
		item_group = item_group->NextSiblingElement("ItemGroup");
	}

	if (!item_group) {
		if (prev) {
			// Got to the end without finding any Compile item
			item_group = proj->InsertAfterChild(prev, data->doc->NewElement("ItemGroup"));
		} else {
			// There was no ItemGroup at all
			item_group = proj->InsertEndChild(data->doc->NewElement("ItemGroup"));
		}
		ERR_FAIL_COND(!item_group);
	}

	XMLElement* file_elem = data->doc->NewElement("Compile");
	file_elem->SetAttribute("Include", file.utf8());
	item_group->InsertEndChild(file_elem);
}

void CSharpProject::remove_file(const String &p_path)
{
	String file = make_relative_win_path(data->path, p_path);

	XMLElement* proj = data->doc->FirstChildElement("Project");
	ERR_FAIL_COND(!proj);

	XMLElement* item_group = proj->FirstChildElement("ItemGroup");

	while (item_group) {
		XMLElement* item = item_group->FirstChildElement();

		while (item) {
			if (item->Attribute("Include") == file) {
				item_group->DeleteChild(item);
				break;
			}

			item = item->NextSiblingElement();
		}

		item_group = item_group->NextSiblingElement("ItemGroup");
	}
}

void CSharpProject::get_files(const String& p_include_pattern, List<String>* r_paths)
{
	XMLElement* proj = data->doc->FirstChildElement("Project");
	ERR_FAIL_COND(!proj);

	XMLElement* item_group = proj->FirstChildElement("ItemGroup");

	while (item_group) {
		XMLElement* item = item_group->FirstChildElement("Compile");

		while (item) {
			const String& incl = item->Attribute("Include");

			if (incl.match(p_include_pattern))
				r_paths->push_back(make_local_godot_path(incl));

			item = item->NextSiblingElement("Compile");
		}

		item_group = item_group->NextSiblingElement("ItemGroup");
	}
}

bool CSharpProject::has_reference(const String &p_name)
{
	String name = p_name.replace("/", "\\");

	XMLElement* proj = data->doc->FirstChildElement("Project");
	ERR_FAIL_COND_V(!proj, false);

	XMLElement* item_group = proj->FirstChildElement("ItemGroup");

	while (item_group) {
		XMLElement* item = item_group->FirstChildElement("Reference");

		while (item) {
			if (String(item->Attribute("Include")).get_file() == name)
				return true;

			item = item->NextSiblingElement("Reference");
		}

		item_group = item_group->NextSiblingElement("ItemGroup");
	}

	return false;
}

XMLNode* CSharpProject::add_reference(const String &p_name)
{
	String name = p_name.replace("/", "\\");

	XMLElement* proj = data->doc->FirstChildElement("Project");
	ERR_FAIL_COND_V(!proj, NULL);

	XMLNode* prev = NULL;
	XMLNode* item_group = proj->FirstChildElement("ItemGroup");

	while (item_group) {
		XMLElement* item = item_group->FirstChildElement("Reference");

		if (item)
			break;

		prev = item_group;
		item_group = item_group->NextSiblingElement("ItemGroup");
	}

	if (!item_group) {
		if (prev) {
			// Got to the end without finding any Reference item
			item_group = proj->InsertAfterChild(prev, data->doc->NewElement("ItemGroup"));
		} else {
			// There was no ItemGroup at all
			item_group = proj->InsertEndChild(data->doc->NewElement("ItemGroup"));
		}
		ERR_FAIL_COND_V(!item_group, NULL);
	}

	XMLElement* file_elem = data->doc->NewElement("Reference");
	file_elem->SetAttribute("Include", name.utf8());
	return item_group->InsertEndChild(file_elem);
}

XMLNode *CSharpProject::get_reference(const String &p_name)
{
	String name = p_name.replace("/", "\\");

	XMLElement* proj = data->doc->FirstChildElement("Project");
	ERR_FAIL_COND_V(!proj, NULL);

	XMLElement* item_group = proj->FirstChildElement("ItemGroup");

	while (item_group) {
		XMLElement* item = item_group->FirstChildElement("Reference");

		while (item) {
			if (String(item->Attribute("Include")).get_file() == name)
				return item;

			item = item->NextSiblingElement("Reference");
		}

		item_group = item_group->NextSiblingElement("ItemGroup");
	}

	return NULL;
}

void CSharpProject::get_references(XMLNode **p_iter)
{
	if ((*p_iter) == NULL) {
		XMLElement* proj = data->doc->FirstChildElement("Project");
		ERR_FAIL_COND(!proj);

		XMLElement* item_group = proj->FirstChildElement("ItemGroup");

		while (item_group) {
			XMLElement* item = item_group->FirstChildElement("Reference");

			if (item) {
				*p_iter = item;
				return;
			}

			item_group = item_group->NextSiblingElement("ItemGroup");
		}
	} else {
		*p_iter = (*p_iter)->NextSiblingElement("Reference");
	}
}

void CSharpProject::remove_reference(const String &p_name)
{
	String name = p_name.replace("/", "\\");

	XMLElement* proj = data->doc->FirstChildElement("Project");
	ERR_FAIL_COND(!proj);

	XMLElement* item_group = proj->FirstChildElement("ItemGroup");

	while (item_group) {
		XMLElement* item = item_group->FirstChildElement("Reference");

		while (item) {
			if (String(item->Attribute("Include")).get_file() == name) {
				item_group->DeleteChild(item);
				break;
			}

			item = item->NextSiblingElement("Reference");
		}

		item_group = item_group->NextSiblingElement("ItemGroup");
	}
}

XMLNode* CSharpProject::add_hint_path(XMLNode *p_ref, const String &p_path)
{
	XMLElement* file_elem = data->doc->NewElement("HintPath");
	file_elem->SetText(p_path.utf8());
	return p_ref->InsertEndChild(file_elem);
}

XMLNode* CSharpProject::add_hint_path(XMLNode *p_ref, const String &p_path, const String &p_condition)
{
	XMLElement* file_elem = data->doc->NewElement("HintPath");
	file_elem->SetText(p_path.utf8());
	file_elem->Attribute("Condition", p_condition.utf8());
	return p_ref->InsertEndChild(file_elem);
}

void CSharpProject::get_hint_paths(XMLNode *p_ref, XMLNode **p_iter)
{
	if ((*p_iter) == NULL) {
		ERR_FAIL_COND(!p_ref);
		*p_iter = p_ref->FirstChildElement("HintPath");
	} else {
		*p_iter = (*p_iter)->NextSiblingElement("HintPath");
	}
}

CSharpProject CSharpProject::create_new(const String& p_name)
{
	CSharpProject proj;

	proj.set_name(p_name);
	proj.set_guid(_new_guid());
	proj.set_target_framework(DOTNET_45);
	proj.data->doc->Parse(sformat(PROJECT_TEMPLATE, proj.get_guid(), proj.get_name(), proj.get_name(), to_str(proj.get_target_framework())).utf8());

	return proj;
}

void CSharpProject::operator=(const CSharpProject &p_project)
{
	unref();

	if (p_project.data && p_project.data->refcount.ref()) {
		data = p_project.data;
	}
}

CSharpProject::CSharpProject()
{
	data = memnew(Data);
}

CSharpProject::CSharpProject(const CSharpProject &p_project)
{
	data = NULL;

	if (p_project.data && p_project.data->refcount.ref()) {
		data = p_project.data;
	}
}

CSharpProject::~CSharpProject()
{
	unref();
}

void CSharpProject::unref()
{
	if (data && data->refcount.unref()) {
		memdelete(data);
	}

	data = NULL;
}

CSharpProject::Data::Data()
{
	doc = memnew(tinyxml2::XMLDocument);
	refcount.init();
}

CSharpProject::Data::~Data()
{
	memdelete(doc);
}
