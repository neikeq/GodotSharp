#include "build_process.h"
#if 0
#include "tools/editor/editor_node.h"

#include "../csharp_script.h"
#include "../utils/path_utils.h"

namespace MonoBuild
{

namespace
{

....

Vector<uint8_t> EditorExportMono::custom_export(String &p_path, const Ref<EditorExportPlatform> &p_platform)
{
	List<String> script_extensions;
	CSharpLanguage::get_singleton()->get_recognized_extensions(&script_extensions);

	String file_extension = p_path.extension();

	if (script_extensions.find(file_extension)) {
		// We can't avoid to export the file because the script API needs it at runtime
		// But we can replace it with an empty file (well.. kind of empty)
		Vector<uint8_t> placeholder;
		placeholder.push_back(0); // yeah, not completely empty. custom_export must return a non-empty file otherwise it has no effect
		return placeholder;
	} else if (file_extension == "dll") {
		BuildConfig build_config = p_platform->is_debugging_enabled() ? BuildConfig::DEBUG : BuildConfig::RELEASE;

		if (p_path == get_assemblies_path(build_config)) {
			Error err = MonoBuild::build(build_config);
			ERR_FAIL_COND_V(err != OK, Vector<uint8_t>());

			FileAccessRef f = FileAccess::open(p_path, FileAccess::READ);
			ERR_FAIL_COND_V(!f, Vector<uint8_t>());
			Vector<uint8_t> ret;
			ret.resize(f->get_len());
			int rbs = f->get_buffer(ret.ptr(), ret.size());
			ERR_FAIL_COND_V(rbs != ret.size(), Vector<uint8_t>());

			return ret;
		}
	}

	return Vector<uint8_t>();
}
#endif
