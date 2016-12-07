using System;

namespace GodotEngine
{
    /// <summary>
    /// Damped spring constraint for 2D physics. This resembles a spring joint that always wants to go back to a given length.
    /// </summary>
    public class DampedSpringJoint2D : Joint2D
    {
        private const string nativeName = "DampedSpringJoint2D";

        public DampedSpringJoint2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_DampedSpringJoint2D_Ctor(this);
        }

        internal DampedSpringJoint2D(bool memoryOwn) : base(memoryOwn) {}

        ~DampedSpringJoint2D()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_length");

        /// <summary>
        /// Set the maximum length of the spring joint.
        /// </summary>
        public void set_length(float length)
        {
            NativeCalls.godot_icall_1_45(method_bind_0, Object.GetPtr(this), length);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_length");

        /// <summary>
        /// Return the maximum length of the spring joint.
        /// </summary>
        public float get_length()
        {
            return NativeCalls.godot_icall_0_46(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_rest_length");

        /// <summary>
        /// Set the resting length of the spring joint. The joint will always try to go to back this length when pulled apart.
        /// </summary>
        public void set_rest_length(float rest_length)
        {
            NativeCalls.godot_icall_1_45(method_bind_2, Object.GetPtr(this), rest_length);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rest_length");

        /// <summary>
        /// Return the resting length of the spring joint. The joint will always try to go to back this length when pulled apart.
        /// </summary>
        public float get_rest_length()
        {
            return NativeCalls.godot_icall_0_46(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_stiffness");

        /// <summary>
        /// Set the stiffness of the spring joint. The joint applies a force equal to the stiffness times the distance from its resting length.
        /// </summary>
        public void set_stiffness(float stiffness)
        {
            NativeCalls.godot_icall_1_45(method_bind_4, Object.GetPtr(this), stiffness);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stiffness");

        /// <summary>
        /// Return the stiffness of the spring joint. The joint applies a force equal to the stiffness times the distance from its resting length.
        /// </summary>
        public float get_stiffness()
        {
            return NativeCalls.godot_icall_0_46(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_damping");

        /// <summary>
        /// Set the damping ratio of the spring joint. A value of 0 indicates an undamped spring, while 1 causes the system to reach equilibrium as fast as possible (critical damping).
        /// </summary>
        public void set_damping(float damping)
        {
            NativeCalls.godot_icall_1_45(method_bind_6, Object.GetPtr(this), damping);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_damping");

        /// <summary>
        /// Return the damping ratio of the spring joint. A value of 0 indicates an undamped spring, while 1 causes the system to reach equilibrium as fast as possible (critical damping).
        /// </summary>
        public float get_damping()
        {
            return NativeCalls.godot_icall_0_46(method_bind_7, Object.GetPtr(this));
        }
    }
}
