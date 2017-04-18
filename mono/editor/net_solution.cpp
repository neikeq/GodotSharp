/**********************************************************************************/
/* net_solution.cpp                                                               */
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
#include "net_solution.h"

#include "os/dir_access.h"
#include "os/file_access.h"

#include "../utils/path_utils.h"
#include "../utils/string_utils.h"
#include "csharp_project.h"

#define SOLUTION_TEMPLATE                                             \
	"Microsoft Visual Studio Solution File, Format Version 12.00\n"   \
	"# Visual Studio 2012\n"                                          \
	"%0\n"                                                            \
	"Global\n"                                                        \
	"\tGlobalSection(SolutionConfigurationPlatforms) = preSolution\n" \
	"\t\tDebug|Any CPU = Debug|Any CPU\n"                             \
	"\t\tRelease|Any CPU = Release|Any CPU\n"                         \
	"\tEndGlobalSection\n"                                            \
	"\tGlobalSection(ProjectConfigurationPlatforms) = postSolution\n" \
	"%1\n"                                                            \
	"\tEndGlobalSection\n"                                            \
	"EndGlobal\n"

#define PROJECT_DECLARATION "Project(\"{FAE04EC0-301F-11D3-BF4B-00C04F79EFBC}\") = \"%0\", \"%1\", \"{%2}\"\nEndProject"

#define PROJECT_PLATFORMS_CONFIG                             \
	"\t\t{%s}.Debug|Any CPU.ActiveCfg = Debug|Any CPU\n"     \
	"\t\t{%s}.Debug|Any CPU.Build.0 = Debug|Any CPU\n"       \
	"\t\t{%s}.Release|Any CPU.ActiveCfg = Release|Any CPU\n" \
	"\t\t{%s}.Release|Any CPU.Build.0 = Release|Any CPU"

CSharpProject &NETSolution::add_new_project(const String &p_name) {
	if (projects.has(p_name))
		WARN_PRINT("Overriding existing project.");

	projects[p_name] = CSharpProject::create_new(p_name);

	CSharpProject &project = projects[p_name];

	if (projects.size() > 1)
		project.set_path(path_join(path, p_name));
	else
		project.set_path(path);

	CSharpProject ppp = projects[p_name];

	return project;
}

Error NETSolution::save() {
	bool dir_exists = DirAccess::exists(path);
	ERR_EXPLAIN("The directory does not exist.");
	ERR_FAIL_COND_V(!dir_exists, ERR_FILE_BAD_PATH);

	String projs_decl;
	String projs_plt;

	for (Map<String, CSharpProject>::Element *E = projects.front(); E; E = E->next()) {
		CSharpProject project = E->value();
		projs_decl += sformat(PROJECT_DECLARATION, project.get_name(), project.get_name() + ".csproj", project.get_guid());
		projs_plt += String(PROJECT_PLATFORMS_CONFIG).replace("%s", project.get_guid());

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

NETSolution::NETSolution(const String &p_name) {
	name = p_name;
}
