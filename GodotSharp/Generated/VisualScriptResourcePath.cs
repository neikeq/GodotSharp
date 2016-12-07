using System;

namespace GodotEngine
{
    public class VisualScriptResourcePath : VisualScriptNode
    {
        private const string nativeName = "VisualScriptResourcePath";

        public VisualScriptResourcePath() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptResourcePath_Ctor(this);
        }

        internal VisualScriptResourcePath(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptResourcePath()
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
                    NativeCalls.godot_icall_VisualScriptResourcePath_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_resource_path");

        public void set_resource_path(string path)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), path);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_resource_path");

        public string get_resource_path()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }
    }
}
