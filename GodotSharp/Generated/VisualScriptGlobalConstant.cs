using System;

namespace GodotEngine
{
    public class VisualScriptGlobalConstant : VisualScriptNode
    {
        private const string nativeName = "VisualScriptGlobalConstant";

        public VisualScriptGlobalConstant() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptGlobalConstant_Ctor(this);
        }

        internal VisualScriptGlobalConstant(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptGlobalConstant()
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
                    NativeCalls.godot_icall_VisualScriptGlobalConstant_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_global_constant");

        public void set_global_constant(int index)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), index);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_global_constant");

        public int get_global_constant()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }
    }
}
