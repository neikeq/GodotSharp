#ifndef PATH_UTILS_H
#define PATH_UTILS_H

#include "os/dir_access.h"
#include "globals.h"
#include "ustring.h"

_FORCE_INLINE_ static String path_join(const String& e1 = String(), const String& e2 = String(), const String& e3 = String())
{
	String result = e1;

	if (e2.size()) {
		if (result.size())
			result += "/";

		result += e2;

		if (e3.size()) {
			result += "/";
			result += e3;
		}
	}

	return result;
}

_FORCE_INLINE_ static String make_relative_win_path(const String& p_location, const String& p_path)
{
	String ret = p_path;

	if (ret.is_abs_path()) {
		DirAccessRef da = DirAccess::create(DirAccess::ACCESS_FILESYSTEM);

		if (da->change_dir(p_path.get_base_dir()) == OK) {
			String cwd = da->get_current_dir();
			cwd = cwd.replace("\\","/");

			if (cwd.begins_with(p_location)) {
				ret = path_join(cwd.replace_first(p_location, ""), p_path.get_file());
			}
		}
	}

	return ret.replace("/", "\\");
}

_FORCE_INLINE_ static String make_local_godot_path(const String& p_path)
{
	return "res://" + p_path.replace("\\", "/");
}

_FORCE_INLINE_ static String localize_path(const String& p_path)
{
	return Globals::get_singleton()->localize_path(p_path);
}

_FORCE_INLINE_ static String globalize_path(const String& p_path)
{
	return Globals::get_singleton()->globalize_path(p_path);
}

#endif // PATH_UTILS_H
