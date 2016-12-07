using System;

namespace GodotEngine
{
    public class HingeJoint : Joint
    {
        public const int PARAM_BIAS = 0;
        public const int PARAM_LIMIT_UPPER = 1;
        public const int PARAM_LIMIT_LOWER = 2;
        public const int PARAM_LIMIT_BIAS = 3;
        public const int PARAM_LIMIT_SOFTNESS = 4;
        public const int PARAM_LIMIT_RELAXATION = 5;
        public const int PARAM_MOTOR_TARGET_VELOCITY = 6;
        public const int PARAM_MOTOR_MAX_IMPULSE = 7;
        public const int PARAM_MAX = 8;
        public const int FLAG_USE_LIMIT = 0;
        public const int FLAG_ENABLE_MOTOR = 1;
        public const int FLAG_MAX = 2;

        private const string nativeName = "HingeJoint";

        public HingeJoint() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_HingeJoint_Ctor(this);
        }

        internal HingeJoint(bool memoryOwn) : base(memoryOwn) {}

        ~HingeJoint()
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

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_flag");

        public void set_flag(int flag, bool enabled)
        {
            NativeCalls.godot_icall_2_32(method_bind_2, Object.GetPtr(this), flag, enabled);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_flag");

        public bool get_flag(int flag)
        {
            return NativeCalls.godot_icall_1_33(method_bind_3, Object.GetPtr(this), flag);
        }
    }
}
