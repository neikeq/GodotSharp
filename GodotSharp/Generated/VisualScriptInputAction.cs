using System;

namespace GodotEngine
{
    public class VisualScriptInputAction : VisualScriptNode
    {
        private const string nativeName = "VisualScriptInputAction";

        public VisualScriptInputAction() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptInputAction_Ctor(this);
        }

        internal VisualScriptInputAction(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptInputAction()
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
                    NativeCalls.godot_icall_VisualScriptInputAction_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_action_name");

        public void set_action_name(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_action_name");

        public string get_action_name()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_action_mode");

        public void set_action_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_action_mode");

        public int get_action_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }
    }
}
