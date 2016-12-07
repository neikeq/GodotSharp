using System;

namespace GodotEngine
{
    public class VisualScriptConstant : VisualScriptNode
    {
        private const string nativeName = "VisualScriptConstant";

        public VisualScriptConstant() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptConstant_Ctor(this);
        }

        internal VisualScriptConstant(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptConstant()
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
                    NativeCalls.godot_icall_VisualScriptConstant_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_constant_type");

        public void set_constant_type(int type)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), type);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_constant_type");

        public int get_constant_type()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_constant_value");

        public void set_constant_value(object @value)
        {
            NativeCalls.godot_icall_1_125(method_bind_2, Object.GetPtr(this), @value);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_constant_value");

        public void get_constant_value()
        {
            NativeCalls.godot_icall_0_7(method_bind_3, Object.GetPtr(this));
        }
    }
}
