using System;

namespace GodotEngine
{
    /// <summary>
    /// Static body for 3D Physics. A static body is a simple body that is not intended to move. They don't consume any CPU resources in contrast to a [RigidBody3D] so they are great for scenario collision.
    /// A static body can also be animated by using simulated motion mode. This is useful for implementing functionalities such as moving platforms. When this mode is active the body can be animated and automatically computes linear and angular velocity to apply in that frame and to influence other bodies.
    /// Alternatively, a constant linear or angular velocity can be set for the static body, so even if it doesn't move, it affects other bodies as if it was moving (this is useful for simulating conveyor belts or conveyor wheels).
    /// </summary>
    public class StaticBody : PhysicsBody
    {
        private const string nativeName = "StaticBody";

        public StaticBody() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_StaticBody_Ctor(this);
        }

        internal StaticBody(bool memoryOwn) : base(memoryOwn) {}

        ~StaticBody()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_constant_linear_velocity");

        /// <summary>
        /// Set a constant linear velocity for the body. This does not move the body, but affects other bodies touching it, as if it was moving.
        /// </summary>
        public void set_constant_linear_velocity(Vector3 vel)
        {
            NativeCalls.godot_icall_1_76(method_bind_0, Object.GetPtr(this), ref vel);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_constant_angular_velocity");

        /// <summary>
        /// Set a constant angular velocity for the body. This does not rotate the body, but affects other bodies touching it, as if it was rotating.
        /// </summary>
        public void set_constant_angular_velocity(Vector3 vel)
        {
            NativeCalls.godot_icall_1_76(method_bind_1, Object.GetPtr(this), ref vel);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_constant_linear_velocity");

        /// <summary>
        /// Return the constant linear velocity for the body.
        /// </summary>
        public Vector3 get_constant_linear_velocity()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_2, Object.GetPtr(this));
            return (Vector3)ret;
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_constant_angular_velocity");

        /// <summary>
        /// Return the constant angular velocity for the body.
        /// </summary>
        public Vector3 get_constant_angular_velocity()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_3, Object.GetPtr(this));
            return (Vector3)ret;
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_friction");

        /// <summary>
        /// Set the body friction, from 0 (frictionless) to 1 (full friction).
        /// </summary>
        public void set_friction(float friction)
        {
            NativeCalls.godot_icall_1_45(method_bind_4, Object.GetPtr(this), friction);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_friction");

        /// <summary>
        /// Return the body friction.
        /// </summary>
        public float get_friction()
        {
            return NativeCalls.godot_icall_0_46(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bounce");

        /// <summary>
        /// Set the body bounciness, from 0 (not bouncy) to 1 (bouncy).
        /// </summary>
        public void set_bounce(float bounce)
        {
            NativeCalls.godot_icall_1_45(method_bind_6, Object.GetPtr(this), bounce);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bounce");

        /// <summary>
        /// Return the body bounciness.
        /// </summary>
        public float get_bounce()
        {
            return NativeCalls.godot_icall_0_46(method_bind_7, Object.GetPtr(this));
        }
    }
}
