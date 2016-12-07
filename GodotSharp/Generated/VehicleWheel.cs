using System;

namespace GodotEngine
{
    public class VehicleWheel : Spatial
    {
        private const string nativeName = "VehicleWheel";

        public VehicleWheel() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VehicleWheel_Ctor(this);
        }

        internal VehicleWheel(bool memoryOwn) : base(memoryOwn) {}

        ~VehicleWheel()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_radius");

        public void set_radius(float length)
        {
            NativeCalls.godot_icall_1_45(method_bind_0, Object.GetPtr(this), length);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_radius");

        public float get_radius()
        {
            return NativeCalls.godot_icall_0_46(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_suspension_rest_length");

        public void set_suspension_rest_length(float length)
        {
            NativeCalls.godot_icall_1_45(method_bind_2, Object.GetPtr(this), length);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_suspension_rest_length");

        public float get_suspension_rest_length()
        {
            return NativeCalls.godot_icall_0_46(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_suspension_travel");

        public void set_suspension_travel(float length)
        {
            NativeCalls.godot_icall_1_45(method_bind_4, Object.GetPtr(this), length);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_suspension_travel");

        public float get_suspension_travel()
        {
            return NativeCalls.godot_icall_0_46(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_suspension_stiffness");

        public void set_suspension_stiffness(float length)
        {
            NativeCalls.godot_icall_1_45(method_bind_6, Object.GetPtr(this), length);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_suspension_stiffness");

        public float get_suspension_stiffness()
        {
            return NativeCalls.godot_icall_0_46(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_suspension_max_force");

        public void set_suspension_max_force(float length)
        {
            NativeCalls.godot_icall_1_45(method_bind_8, Object.GetPtr(this), length);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_suspension_max_force");

        public float get_suspension_max_force()
        {
            return NativeCalls.godot_icall_0_46(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_damping_compression");

        public void set_damping_compression(float length)
        {
            NativeCalls.godot_icall_1_45(method_bind_10, Object.GetPtr(this), length);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_damping_compression");

        public float get_damping_compression()
        {
            return NativeCalls.godot_icall_0_46(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_damping_relaxation");

        public void set_damping_relaxation(float length)
        {
            NativeCalls.godot_icall_1_45(method_bind_12, Object.GetPtr(this), length);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_damping_relaxation");

        public float get_damping_relaxation()
        {
            return NativeCalls.godot_icall_0_46(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_use_as_traction");

        public void set_use_as_traction(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_14, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_used_as_traction");

        public bool is_used_as_traction()
        {
            return NativeCalls.godot_icall_0_14(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_use_as_steering");

        public void set_use_as_steering(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_16, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_used_as_steering");

        public bool is_used_as_steering()
        {
            return NativeCalls.godot_icall_0_14(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_friction_slip");

        public void set_friction_slip(float length)
        {
            NativeCalls.godot_icall_1_45(method_bind_18, Object.GetPtr(this), length);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_friction_slip");

        public float get_friction_slip()
        {
            return NativeCalls.godot_icall_0_46(method_bind_19, Object.GetPtr(this));
        }
    }
}
