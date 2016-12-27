#ifndef DOTNET_SOLUTION_H
#define DOTNET_SOLUTION_H

#include "map.h"
#include "ustring.h"

class CSharpProject;

struct NETSolution
{
	String name;
	String path;

	CSharpProject& add_new_project(const String& p_name);

	Error save();

	NETSolution(const String& p_name);

private:
	Map<String, CSharpProject> projects;
};

#endif // DOTNET_SOLUTION_H
