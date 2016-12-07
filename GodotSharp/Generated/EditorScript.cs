using System;

namespace GodotEngine
{
    /// <summary>
    /// This script can be run from the Scene -> Run Script menu option.
    /// </summary>
    public class EditorScript : Reference
    {
        private const string nativeName = "EditorScript";

        public EditorScript() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_EditorScript_Ctor(this);
        }

        internal EditorScript(bool memoryOwn) : base(memoryOwn) {}

        ~EditorScript()
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
                    NativeCalls.godot_icall_EditorScript_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_root_node");

        public void add_root_node(Object node)
        {
            NativeCalls.godot_icall_1_20(method_bind_0, Object.GetPtr(this), Object.GetPtr(node));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_scene");

        public Object get_scene()
        {
            return NativeCalls.godot_icall_0_12(method_bind_1, Object.GetPtr(this));
        }
    }
}
