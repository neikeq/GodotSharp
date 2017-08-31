/**********************************************************************************/
/* net_solution.h                                                                 */
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
#ifndef NET_SOLUTION_H
#define NET_SOLUTION_H

#include "map.h"
#include "ustring.h"

struct NETSolution {
	String name;

	void add_new_project(const String &p_name, const String &p_guid, const Vector<String> &p_extra_configs = Vector<String>());

	Error save();

	bool set_path(const String &p_existing_path);

	NETSolution(const String &p_name);

private:
	struct ProjectInfo {
		String guid;
		Vector<String> configs;
	};

	String path;
	Map<String, ProjectInfo> projects;
};

#endif // NET_SOLUTION_H
