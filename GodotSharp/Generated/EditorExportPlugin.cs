using System;

namespace GodotEngine
{
    /// <summary>
    /// This plugin is added into EditorImportExport and allows to modify the behavior of the export process for individual files.
    /// </summary>
    public class EditorExportPlugin : Reference
    {
        private const string nativeName = "EditorExportPlugin";

        public EditorExportPlugin() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_EditorExportPlugin_Ctor(this);
        }

        internal EditorExportPlugin(bool memoryOwn) : base(memoryOwn) {}

        ~EditorExportPlugin()
        {
            Dispose();
        }

        public override void Dispose()
        {
            lock (this)
            {
                if (ptr != IntPtr.Zero)
                {
                    if (memoryOwn)
                    {
                        memoryOwn = false;
                    NativeCalls.godot_icall_EditorExportPlugin_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
