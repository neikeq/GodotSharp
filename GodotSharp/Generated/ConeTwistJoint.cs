using System;

namespace GodotEngine
{
    public class ConeTwistJoint : Joint
    {
        public const int PARAM_SWING_SPAN = 0;
        public const int PARAM_TWIST_SPAN = 1;
        public const int PARAM_BIAS = 2;
        public const int PARAM_SOFTNESS = 3;
        public const int PARAM_RELAXATION = 4;
        public const int PARAM_MAX = 5;

        private const string nativeName = "ConeTwistJoint";

        public ConeTwistJoint() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ConeTwistJoint_Ctor(this);
        }

        internal ConeTwistJoint(bool memoryOwn) : base(memoryOwn) {}

        ~ConeTwistJoint()
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
