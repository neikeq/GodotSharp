using System;

namespace GodotEngine
{
    public class PinJoint : Joint
    {
        public const int PARAM_BIAS = 0;
        public const int PARAM_DAMPING = 1;
        public const int PARAM_IMPULSE_CLAMP = 2;

        private const string nativeName = "PinJoint";

        public PinJoint() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_PinJoint_Ctor(this);
        }

        internal PinJoint(bool memoryOwn) : base(memoryOwn) {}

        ~PinJoint()
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
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_param");

        public void set_param(int param, float @value)
        {
            NativeCalls.godot_icall_2_36(method_bind_0, Object.GetPtr(this), param, @value);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_param");

        public float get_param(int param)
        {
            return NativeCalls.godot_icall_1_3(method_bind_1, Object.GetPtr(this), param);
        }
    }
}
