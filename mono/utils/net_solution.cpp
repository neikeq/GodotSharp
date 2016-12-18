#include "net_solution.h"

#include "os/dir_access.h"
#include "os/file_access.h"

#include "csharp_project.h"
#include "path_utils.h"
#include "string_format.h"

#define SOLUTION_TEMPLATE \
	"Microsoft Visual Studio Solution File, Format Version 12.00\n" \
	"# Visual Studio 2012\n" \
	"%0\n" \
	"Global\n" \
	"\tGlobalSection(SolutionConfigurationPlatforms) = preSolution\n" \
	"\t\tDebug|Any CPU = Debug|Any CPU\n" \
	"\t\tRelease|Any CPU = Release|Any CPU\n" \
	"\tEndGlobalSection\n" \
	"\tGlobalSection(ProjectConfigurationPlatforms) = postSolution\n" \
	"%1\n" \
	"\tEndGlobalSection\n" \
	"EndGlobal\n"

#define PROJECT_DECLARATION "Project(\"{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}\") = \"%0\", \"%1\", \"{%2}\"\nEndProject"

#define PROJECT_PLATFORMS_CONFIG \
	"\t\t{%s}.Debug|Any CPU.ActiveCfg = Debug|Any CPU\n" \
	"\t\t{%s}.Debug|Any CPU.Build.0 = Debug|Any CPU\n" \
	"\t\t{%s}.Release|Any CPU.ActiveCfg = Release|Any CPU\n" \
	"\t\t{%s}.Release|Any CPU.Build.0 = Release|Any CPU"

void NETSolution::add_project(CSharpProject p_project)
{
	ERR_FAIL_COND(projects.has(p_project.name));

	if (projects.size())
		p_project.path = path_join(path, p_project.name);
	else
		p_project.path = path;

	projects[p_project.name] = p_project;
}

Error NETSolution::save()
{
	bool dir_exists = DirAccess::exists(path);
	ERR_EXPLAIN("The directory does not exist.");
	ERR_FAIL_COND_V(!dir_exists, ERR_FILE_BAD_PATH);

	String projs_decl;
	String projs_plt;

	for (Map<String, CSharpProject>::Element *E = projects.front(); E; E = E->next()) {
		CSharpProject project = E->value();
		projs_decl += sformat(PROJECT_DECLARATION, project.name, project.name, project.guid);
		projs_plt += String(PROJECT_PLATFORMS_CONFIG).replace("%s", project.guid);

		project.save_assembly_info();
		project.save_csproj();
	}

	String content = sformat(SOLUTION_TEMPLATE, projs_decl, projs_plt);

	FileAccessRef file = FileAccess::open(path_join(path, name + ".sln"), FileAccess::WRITE);
	ERR_FAIL_COND_V(!file, ERR_FILE_CANT_WRITE);
	file->store_string(content);
	file->close();

	return OK;
}
