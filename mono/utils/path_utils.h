#ifndef PATH_UTILS_H
#define PATH_UTILS_H

#include "globals.h"
#include "ustring.h"

_FORCE_INLINE_ static String path_join(const String& e1 = String(), const String& e2 = String(), const String& e3 = String())
{
	String result = e1;

	if (e2.size()) {
		result += "/";
		result += e2;

		if (e3.size()) {
			result += "/";
			result += e3;
		}
	}

	return result;
}

_FORCE_INLINE_ static String make_relative_win_path(const String& p_path)
{
	String ret = p_path;

	if (ret.is_abs_path()) {
		ret = Globals::get_singleton()->localize_path(ret);
		if (ret.begins_with("res://"))
			ret = ret.replace_first("res://", "");
	}

	return ret.replace("/", "\\");
}

_FORCE_INLINE_ static String make_local_godot_path(const String& p_path)
{
	return "res://" + p_path.replace("\\", "/");
}

#endif // PATH_UTILS_H
