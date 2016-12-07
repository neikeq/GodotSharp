using System;

namespace GodotEngine
{
    public class VisualScriptPreload : VisualScriptNode
    {
        private const string nativeName = "VisualScriptPreload";

        public VisualScriptPreload() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptPreload_Ctor(this);
        }

        internal VisualScriptPreload(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptPreload()
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
                    NativeCalls.godot_icall_VisualScriptPreload_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_preload");

        public void set_preload(Object resource)
        {
            NativeCalls.godot_icall_1_20(method_bind_0, Object.GetPtr(this), Object.GetPtr(resource));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_preload");

        public Object get_preload()
        {
            return NativeCalls.godot_icall_0_12(method_bind_1, Object.GetPtr(this));
        }
    }
}
