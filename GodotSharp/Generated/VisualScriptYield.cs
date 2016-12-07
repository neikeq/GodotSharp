using System;

namespace GodotEngine
{
    public class VisualScriptYield : VisualScriptNode
    {
        public const int YIELD_FRAME = 1;
        public const int YIELD_FIXED_FRAME = 2;
        public const int YIELD_WAIT = 3;

        private const string nativeName = "VisualScriptYield";

        public VisualScriptYield() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptYield_Ctor(this);
        }

        internal VisualScriptYield(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptYield()
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
                    NativeCalls.godot_icall_VisualScriptYield_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_yield_mode");

        public void set_yield_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_yield_mode");

        public int get_yield_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_wait_time");

        public void set_wait_time(float sec)
        {
            NativeCalls.godot_icall_1_45(method_bind_2, Object.GetPtr(this), sec);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_wait_time");

        public float get_wait_time()
        {
            return NativeCalls.godot_icall_0_46(method_bind_3, Object.GetPtr(this));
        }
    }
}
