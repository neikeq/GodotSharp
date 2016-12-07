using System;

namespace GodotEngine
{
    public class SliderJoint : Joint
    {
        public const int PARAM_LINEAR_LIMIT_UPPER = 0;
        public const int PARAM_LINEAR_LIMIT_LOWER = 1;
        public const int PARAM_LINEAR_LIMIT_SOFTNESS = 2;
        public const int PARAM_LINEAR_LIMIT_RESTITUTION = 3;
        public const int PARAM_LINEAR_LIMIT_DAMPING = 4;
        public const int PARAM_LINEAR_MOTION_SOFTNESS = 5;
        public const int PARAM_LINEAR_MOTION_RESTITUTION = 6;
        public const int PARAM_LINEAR_MOTION_DAMPING = 7;
        public const int PARAM_LINEAR_ORTHOGONAL_SOFTNESS = 8;
        public const int PARAM_LINEAR_ORTHOGONAL_RESTITUTION = 9;
        public const int PARAM_LINEAR_ORTHOGONAL_DAMPING = 10;
        public const int PARAM_ANGULAR_LIMIT_UPPER = 11;
        public const int PARAM_ANGULAR_LIMIT_LOWER = 12;
        public const int PARAM_ANGULAR_LIMIT_SOFTNESS = 13;
        public const int PARAM_ANGULAR_LIMIT_RESTITUTION = 14;
        public const int PARAM_ANGULAR_LIMIT_DAMPING = 15;
        public const int PARAM_ANGULAR_MOTION_SOFTNESS = 16;
        public const int PARAM_ANGULAR_MOTION_RESTITUTION = 17;
        public const int PARAM_ANGULAR_MOTION_DAMPING = 18;
        public const int PARAM_ANGULAR_ORTHOGONAL_SOFTNESS = 19;
        public const int PARAM_ANGULAR_ORTHOGONAL_RESTITUTION = 20;
        public const int PARAM_ANGULAR_ORTHOGONAL_DAMPING = 21;
        public const int PARAM_MAX = 22;

        private const string nativeName = "SliderJoint";

        public SliderJoint() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_SliderJoint_Ctor(this);
        }

        internal SliderJoint(bool memoryOwn) : base(memoryOwn) {}

        ~SliderJoint()
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
