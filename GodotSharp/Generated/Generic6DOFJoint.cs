using System;

namespace GodotEngine
{
    public class Generic6DOFJoint : Joint
    {
        public const int PARAM_LINEAR_LOWER_LIMIT = 0;
        public const int PARAM_LINEAR_UPPER_LIMIT = 1;
        public const int PARAM_LINEAR_LIMIT_SOFTNESS = 2;
        public const int PARAM_LINEAR_RESTITUTION = 3;
        public const int PARAM_LINEAR_DAMPING = 4;
        public const int PARAM_ANGULAR_LOWER_LIMIT = 5;
        public const int PARAM_ANGULAR_UPPER_LIMIT = 6;
        public const int PARAM_ANGULAR_LIMIT_SOFTNESS = 7;
        public const int PARAM_ANGULAR_DAMPING = 8;
        public const int PARAM_ANGULAR_RESTITUTION = 9;
        public const int PARAM_ANGULAR_FORCE_LIMIT = 10;
        public const int PARAM_ANGULAR_ERP = 11;
        public const int PARAM_ANGULAR_MOTOR_TARGET_VELOCITY = 12;
        public const int PARAM_ANGULAR_MOTOR_FORCE_LIMIT = 13;
        public const int PARAM_MAX = 14;
        public const int FLAG_ENABLE_LINEAR_LIMIT = 0;
        public const int FLAG_ENABLE_ANGULAR_LIMIT = 1;
        public const int FLAG_ENABLE_MOTOR = 2;
        public const int FLAG_MAX = 3;

        private const string nativeName = "Generic6DOFJoint";

        public Generic6DOFJoint() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Generic6DOFJoint_Ctor(this);
        }

        internal Generic6DOFJoint(bool memoryOwn) : base(memoryOwn) {}

        ~Generic6DOFJoint()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_param_x");

        public void set_param_x(int param, float @value)
        {
            NativeCalls.godot_icall_2_36(method_bind_0, Object.GetPtr(this), param, @value);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_param_x");

        public float get_param_x(int param)
        {
            return NativeCalls.godot_icall_1_3(method_bind_1, Object.GetPtr(this), param);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_param_y");

        public void set_param_y(int param, float @value)
        {
            NativeCalls.godot_icall_2_36(method_bind_2, Object.GetPtr(this), param, @value);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_param_y");

        public float get_param_y(int param)
        {
            return NativeCalls.godot_icall_1_3(method_bind_3, Object.GetPtr(this), param);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_param_z");

        public void set_param_z(int param, float @value)
        {
            NativeCalls.godot_icall_2_36(method_bind_4, Object.GetPtr(this), param, @value);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_param_z");

        public float get_param_z(int param)
        {
            return NativeCalls.godot_icall_1_3(method_bind_5, Object.GetPtr(this), param);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_flag_x");

        public void set_flag_x(int flag, bool @value)
        {
            NativeCalls.godot_icall_2_32(method_bind_6, Object.GetPtr(this), flag, @value);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_flag_x");

        public bool get_flag_x(int flag)
        {
            return NativeCalls.godot_icall_1_33(method_bind_7, Object.GetPtr(this), flag);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_flag_y");

        public void set_flag_y(int flag, bool @value)
        {
            NativeCalls.godot_icall_2_32(method_bind_8, Object.GetPtr(this), flag, @value);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_flag_y");

        public bool get_flag_y(int flag)
        {
            return NativeCalls.godot_icall_1_33(method_bind_9, Object.GetPtr(this), flag);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_flag_z");

        public void set_flag_z(int flag, bool @value)
        {
            NativeCalls.godot_icall_2_32(method_bind_10, Object.GetPtr(this), flag, @value);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_flag_z");

        public bool get_flag_z(int flag)
        {
            return NativeCalls.godot_icall_1_33(method_bind_11, Object.GetPtr(this), flag);
        }
    }
}
