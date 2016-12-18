#ifndef DOTNET_SOLUTION_H
#define DOTNET_SOLUTION_H

#include "map.h"
#include "ustring.h"

class CSharpProject;

struct NETSolution
{
	String name; // TODO private?
	String path;

	void add_project(CSharpProject p_project);

	Error save();

	NETSolution() {}

private:
	Map<String, CSharpProject> projects;
};

#endif // DOTNET_SOLUTION_H
