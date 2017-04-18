/**********************************************************************************/
/* path_utils.cpp                                                                 */
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
#include "path_utils.h"

#include "global_config.h"
#include "os/dir_access.h"
#include "os/file_access.h"
#include "os/os.h"

#ifdef UNIX_ENABLED
#define ENV_PATH_SEP ":"
#else
#define ENV_PATH_SEP ";"
#endif

String make_relative_win_path(const String &p_location, const String &p_path) {
	String ret = p_path;

	bool loc_endswith_slash = p_location.ends_with("/");

	if (ret.is_abs_path()) {
		DirAccessRef da = DirAccess::create(DirAccess::ACCESS_FILESYSTEM);

		if (da->change_dir(p_path.get_base_dir()) == OK) {
			String cwd = da->get_current_dir();
			cwd = cwd.replace("\\", "/");

			if (cwd.begins_with(loc_endswith_slash ? p_location : p_location + "/")) {
				ret = path_join(cwd.replace_first(loc_endswith_slash ? p_location : p_location + "/", ""), p_path.get_file());
			}
		}
	}

	return ret.replace("/", "\\");
}

Vector<String> path_which(const String &p_name) {

#ifdef WINDOWS_ENABLED
	Vector<String> exts = OS::get_singleton()->get_environment("PATHEXT").split(ENV_PATH_SEP, false);
#endif
	Vector<String> env_path = OS::get_singleton()->get_environment("PATH").split(ENV_PATH_SEP, false);

	if (env_path.empty())
		return Vector<String>();

	Vector<String> result;

	for (int i = 0; i < env_path.size(); i++) {
		String p = path_join(env_path[i], p_name);

		if (FileAccess::exists(p))
			result.push_back(p);

#ifdef WINDOWS_ENABLED
		for (int j = 0; j < exts.size(); j++) {
			String p2 = p + exts[j];

			if (FileAccess::exists(p2))
				result.push_back(p2);
		}
#endif
	}

	return result;
}

void fix_path(const String &p_path, String &r_out) {
	r_out = p_path.replace("\\", "/");

	while (true) { // in case of using 2 or more slash
		String compare = r_out.replace("//", "/");
		if (r_out == compare)
			break;
		else
			r_out = compare;
	}
}
