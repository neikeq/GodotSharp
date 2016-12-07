using System;

namespace GodotEngine
{
    public class VisualScriptReturn : VisualScriptNode
    {
        private const string nativeName = "VisualScriptReturn";

        public VisualScriptReturn() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptReturn_Ctor(this);
        }

        internal VisualScriptReturn(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptReturn()
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
                    NativeCalls.godot_icall_VisualScriptReturn_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_return_type");

        public void set_return_type(int type)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), type);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_return_type");

        public int get_return_type()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_enable_return_value");

        public void set_enable_return_value(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_2, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_return_value_enabled");

        public bool is_return_value_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_3, Object.GetPtr(this));
        }
    }
}
