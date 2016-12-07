using System;

namespace GodotEngine
{
    public class VehicleBody : PhysicsBody
    {
        private const string nativeName = "VehicleBody";

        public VehicleBody() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VehicleBody_Ctor(this);
        }

        internal VehicleBody(bool memoryOwn) : base(memoryOwn) {}

        ~VehicleBody()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_mass");

        public void set_mass(float mass)
        {
            NativeCalls.godot_icall_1_45(method_bind_0, Object.GetPtr(this), mass);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mass");

        public float get_mass()
        {
            return NativeCalls.godot_icall_0_46(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_friction");

        public void set_friction(float friction)
        {
            NativeCalls.godot_icall_1_45(method_bind_2, Object.GetPtr(this), friction);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_friction");

        public float get_friction()
        {
            return NativeCalls.godot_icall_0_46(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_engine_force");

        public void set_engine_force(float engine_force)
        {
            NativeCalls.godot_icall_1_45(method_bind_4, Object.GetPtr(this), engine_force);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_engine_force");

        public float get_engine_force()
        {
            return NativeCalls.godot_icall_0_46(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_brake");

        public void set_brake(float brake)
        {
            NativeCalls.godot_icall_1_45(method_bind_6, Object.GetPtr(this), brake);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_brake");

        public float get_brake()
        {
            return NativeCalls.godot_icall_0_46(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_steering");

        public void set_steering(float steering)
        {
            NativeCalls.godot_icall_1_45(method_bind_8, Object.GetPtr(this), steering);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_steering");

        public float get_steering()
        {
            return NativeCalls.godot_icall_0_46(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_linear_velocity");

        /// <summary>
        /// Returns the VehicleBody's velocity vector. To get the absolute speed in scalar value, get the length of the return vector in pixels/second. Example:
        /// [codeblock]
        /// # vehicle is an instance of VehicleBody
        /// var speed = vehicle.get_linear_velocity().length()
        /// [/codeblock]
        /// </summary>
        public Vector3 get_linear_velocity()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_10, Object.GetPtr(this));
            return (Vector3)ret;
        }
    }
}
