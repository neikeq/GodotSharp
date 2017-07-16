#ifndef BUILD_PROCESS_H
#define BUILD_PROCESS_H
#if 0
#include "editor/editor_import_export.h"

#include "../build_config.h"

void mono_build_callback();

namespace MonoBuild
{

Error build(BuildConfig build_config, bool bg = false);

}

class EditorExportMono : public EditorExportPlugin
{
	OBJ_TYPE(EditorExportMono, EditorExportPlugin);

public:
	Vector<uint8_t> custom_export(String &p_path, const Ref<EditorExportPlatform> &p_platform);

	EditorExportMono();
};
#endif
#endif // BUILD_PROCESS_H
