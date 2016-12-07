using System;

namespace GodotEngine
{
    public class VisualScriptNode : Resource
    {
        private const string nativeName = "VisualScriptNode";

        internal VisualScriptNode() {}

        internal VisualScriptNode(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptNode()
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
                    NativeCalls.godot_icall_VisualScriptNode_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_visual_script");

        public VisualScript get_visual_script()
        {
            return NativeCalls.godot_icall_0_528(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_default_input_value");

        public void set_default_input_value(int port_idx, object @value)
        {
            NativeCalls.godot_icall_2_225(method_bind_1, Object.GetPtr(this), port_idx, @value);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_input_value");

        public object get_default_input_value(int port_idx)
        {
            return NativeCalls.godot_icall_1_344(method_bind_2, Object.GetPtr(this), port_idx);
        }
    }
}
