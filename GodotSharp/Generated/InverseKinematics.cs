using System;

namespace GodotEngine
{
    public class InverseKinematics : Spatial
    {
        private const string nativeName = "InverseKinematics";

        public InverseKinematics() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_InverseKinematics_Ctor(this);
        }

        internal InverseKinematics(bool memoryOwn) : base(memoryOwn) {}

        ~InverseKinematics()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bone_name");

        public void set_bone_name(string ik_bone)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), ik_bone);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bone_name");

        public string get_bone_name()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_iterations");

        public void set_iterations(int iterations)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), iterations);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_iterations");

        public int get_iterations()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_chain_size");

        public void set_chain_size(int chain_size)
        {
            NativeCalls.godot_icall_1_4(method_bind_4, Object.GetPtr(this), chain_size);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_chain_size");

        public int get_chain_size()
        {
            return NativeCalls.godot_icall_0_0(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_precision");

        public void set_precision(float precision)
        {
            NativeCalls.godot_icall_1_45(method_bind_6, Object.GetPtr(this), precision);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_precision");

        public float get_precision()
        {
            return NativeCalls.godot_icall_0_46(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_speed");

        public void set_speed(float speed)
        {
            NativeCalls.godot_icall_1_45(method_bind_8, Object.GetPtr(this), speed);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_speed");

        public float get_speed()
        {
            return NativeCalls.godot_icall_0_46(method_bind_9, Object.GetPtr(this));
        }
    }
}
