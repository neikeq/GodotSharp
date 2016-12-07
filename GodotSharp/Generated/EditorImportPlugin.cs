using System;

namespace GodotEngine
{
    /// <summary>
    /// Import plugins make it easy to handle importing of external assets into a project. They way they work is not that obvious though, so please make sure to read the documentation, tutorials and examples.
    /// </summary>
    public class EditorImportPlugin : Reference
    {
        private const string nativeName = "EditorImportPlugin";

        public EditorImportPlugin() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_EditorImportPlugin_Ctor(this);
        }

        internal EditorImportPlugin(bool memoryOwn) : base(memoryOwn) {}

        ~EditorImportPlugin()
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
                    NativeCalls.godot_icall_EditorImportPlugin_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "validate_source_path");

        public string validate_source_path(string path)
        {
            return NativeCalls.godot_icall_1_52(method_bind_0, Object.GetPtr(this), path);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "expand_source_path");

        public string expand_source_path(string path)
        {
            return NativeCalls.godot_icall_1_52(method_bind_1, Object.GetPtr(this), path);
        }
    }
}
