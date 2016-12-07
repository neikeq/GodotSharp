using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Rigid body node. This node is used for placing rigid bodies in the scene. It can contain a number of shapes, and also shift mode between regular Rigid body, Kinematic, Character or Static.
    /// </summary>
    public class RigidBody : PhysicsBody
    {
        /// <summary>
        /// Static mode. The body behaves like a [StaticBody], and can only move by user code.
        /// </summary>
        public const int MODE_STATIC = 1;
        /// <summary>
        /// Kinematic body. The body behaves like a [KinematicBody], and can only move by user code.
        /// </summary>
        public const int MODE_KINEMATIC = 3;
        /// <summary>
        /// Rigid body. This is the "natural" state of a rigid body. It is affected by forces, and can move, rotate, and be affected by user code.
        /// </summary>
        public const int MODE_RIGID = 0;
        /// <summary>
        /// Character body. This behaves like a rigid body, but can not rotate.
        /// </summary>
        public const int MODE_CHARACTER = 2;

        private const string nativeName = "RigidBody";

        public RigidBody() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_RigidBody_Ctor(this);
        }

        internal RigidBody(bool memoryOwn) : base(memoryOwn) {}

        ~RigidBody()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_mode");

        /// <summary>
        /// Set the body mode, from the MODE_* enum. This allows to change to a static body or a character body.
        /// </summary>
        public void set_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mode");

        /// <summary>
        /// Return the current body mode, see [method set_mode].
        /// </summary>
        public int get_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_mass");

        /// <summary>
        /// Set the body mass.
        /// </summary>
        public void set_mass(float mass)
        {
            NativeCalls.godot_icall_1_45(method_bind_2, Object.GetPtr(this), mass);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mass");

        /// <summary>
        /// Return the current body mass.
        /// </summary>
        public float get_mass()
        {
            return NativeCalls.godot_icall_0_46(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_weight");

        /// <summary>
        /// Set the body weight given standard earth-weight (gravity 9.8).
        /// </summary>
        public void set_weight(float weight)
        {
            NativeCalls.godot_icall_1_45(method_bind_4, Object.GetPtr(this), weight);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_weight");

        /// <summary>
        /// Return the current body weight, given standard earth-weight (gravity 9.8).
        /// </summary>
        public float get_weight()
        {
            return NativeCalls.godot_icall_0_46(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_friction");

        /// <summary>
        /// Set the body friction, from 0 (frictionless) to 1 (max friction).
        /// </summary>
        public void set_friction(float friction)
        {
            NativeCalls.godot_icall_1_45(method_bind_6, Object.GetPtr(this), friction);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_friction");

        /// <summary>
        /// Return the current body friction, from 0 (frictionless) to 1 (max friction).
        /// </summary>
        public float get_friction()
        {
            return NativeCalls.godot_icall_0_46(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bounce");

        /// <summary>
        /// Set the body bounciness, from 0 (no bounciness) to 1 (max bounciness).
        /// </summary>
        public void set_bounce(float bounce)
        {
            NativeCalls.godot_icall_1_45(method_bind_8, Object.GetPtr(this), bounce);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bounce");

        /// <summary>
        /// Return the current body bounciness.
        /// </summary>
        public float get_bounce()
        {
            return NativeCalls.godot_icall_0_46(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_linear_velocity");

        /// <summary>
        /// Set the body linear velocity. Can be used sporadically, but [b]DON'T SET THIS IN EVERY FRAME[/b], because physics may be running in another thread and definitely runs at a different granularity. Use [method _integrate_forces] as your process loop if you want to have precise control of the body state.
        /// </summary>
        public void set_linear_velocity(Vector3 linear_velocity)
        {
            NativeCalls.godot_icall_1_76(method_bind_10, Object.GetPtr(this), ref linear_velocity);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_linear_velocity");

        /// <summary>
        /// Return the current body linear velocity.
        /// </summary>
        public Vector3 get_linear_velocity()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_11, Object.GetPtr(this));
            return (Vector3)ret;
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_angular_velocity");

        /// <summary>
        /// Set the body angular velocity. Can be used sporadically, but [b]DON'T SET THIS IN EVERY FRAME[/b], because physics may be running in another thread and definitely runs at a different granularity. Use [method _integrate_forces] as your process loop if you want to have precise control of the body state.
        /// </summary>
        public void set_angular_velocity(Vector3 angular_velocity)
        {
            NativeCalls.godot_icall_1_76(method_bind_12, Object.GetPtr(this), ref angular_velocity);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_angular_velocity");

        /// <summary>
        /// Return the current body angular velocity.
        /// </summary>
        public Vector3 get_angular_velocity()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_13, Object.GetPtr(this));
            return (Vector3)ret;
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_gravity_scale");

        /// <summary>
        /// Set the gravity factor. This factor multiplies gravity intensity just for this body.
        /// </summary>
        public void set_gravity_scale(float gravity_scale)
        {
            NativeCalls.godot_icall_1_45(method_bind_14, Object.GetPtr(this), gravity_scale);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_gravity_scale");

        /// <summary>
        /// Return the current body gravity scale.
        /// </summary>
        public float get_gravity_scale()
        {
            return NativeCalls.godot_icall_0_46(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_linear_damp");

        /// <summary>
        /// Set the linear damp for this body. Default of -1, cannot be less than -1. If this value is different from -1, any linear damp derived from the world or areas will be overridden.
        /// </summary>
        public void set_linear_damp(float linear_damp)
        {
            NativeCalls.godot_icall_1_45(method_bind_16, Object.GetPtr(this), linear_damp);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_linear_damp");

        /// <summary>
        /// Return the current body linear damp. Default is -1.
        /// </summary>
        public float get_linear_damp()
        {
            return NativeCalls.godot_icall_0_46(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_angular_damp");

        /// <summary>
        /// Set the angular damp for this body. Default of -1, cannot be less than -1. If this value is different from -1, any angular damp derived from the world or areas will be overridden.
        /// </summary>
        public void set_angular_damp(float angular_damp)
        {
            NativeCalls.godot_icall_1_45(method_bind_18, Object.GetPtr(this), angular_damp);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_angular_damp");

        /// <summary>
        /// Return the current body angular damp. Default is -1.
        /// </summary>
        public float get_angular_damp()
        {
            return NativeCalls.godot_icall_0_46(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_max_contacts_reported");

        /// <summary>
        /// Set the maximum contacts to report. Bodies can keep a log of the contacts with other bodies, this is enabled by setting the maximum amount of contacts reported to a number greater than 0.
        /// </summary>
        public void set_max_contacts_reported(int amount)
        {
            NativeCalls.godot_icall_1_4(method_bind_20, Object.GetPtr(this), amount);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_max_contacts_reported");

        /// <summary>
        /// Return the maximum contacts that can be reported. See [method set_max_contacts_reported].
        /// </summary>
        public int get_max_contacts_reported()
        {
            return NativeCalls.godot_icall_0_0(method_bind_21, Object.GetPtr(this));
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_use_custom_integrator");

        /// <summary>
        /// Pass true to disable the internal force integration (like gravity or air friction) for this body. Other than collision response, the body will only move as determined by the [method _integrate_forces] function, if defined.
        /// </summary>
        public void set_use_custom_integrator(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_22, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_using_custom_integrator");

        /// <summary>
        /// Return whether the body is using a custom integrator.
        /// </summary>
        public bool is_using_custom_integrator()
        {
            return NativeCalls.godot_icall_0_14(method_bind_23, Object.GetPtr(this));
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_contact_monitor");

        /// <summary>
        /// Enable contact monitoring. This allows the body to emit signals when it collides with another.
        /// </summary>
        public void set_contact_monitor(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_24, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_contact_monitor_enabled");

        /// <summary>
        /// Return whether contact monitoring is enabled.
        /// </summary>
        public bool is_contact_monitor_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_25, Object.GetPtr(this));
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_use_continuous_collision_detection");

        /// <summary>
        /// Set the continuous collision detection mode from the enum CCD_MODE_*.
        /// Continuous collision detection tries to predict where a moving body will collide, instead of moving it and correcting its movement if it collided. The first is more precise, and misses less impacts by small, fast-moving objects. The second is faster to compute, but can miss small, fast-moving objects.
        /// </summary>
        public void set_use_continuous_collision_detection(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_26, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_using_continuous_collision_detection");

        /// <summary>
        /// Return whether this body is using continuous collision detection.
        /// </summary>
        public bool is_using_continuous_collision_detection()
        {
            return NativeCalls.godot_icall_0_14(method_bind_27, Object.GetPtr(this));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_axis_velocity");

        /// <summary>
        /// Set an axis velocity. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.
        /// </summary>
        public void set_axis_velocity(Vector3 axis_velocity)
        {
            NativeCalls.godot_icall_1_76(method_bind_28, Object.GetPtr(this), ref axis_velocity);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "apply_impulse");

        /// <summary>
        /// Apply a positioned impulse (which will be affected by the body mass and shape). This is the equivalent of hitting a billiard ball with a cue: a force that is applied once, and only once. Both the impulse and the offset from the body origin are in global coordinates.
        /// </summary>
        public void apply_impulse(Vector3 pos, Vector3 impulse)
        {
            NativeCalls.godot_icall_2_376(method_bind_29, Object.GetPtr(this), ref pos, ref impulse);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_sleeping");

        /// <summary>
        /// Set whether a body is sleeping or not. Sleeping bodies are not affected by forces until a collision or an [method apply_impulse] wakes them up. Until then, they behave like a static body.
        /// </summary>
        public void set_sleeping(bool sleeping)
        {
            NativeCalls.godot_icall_1_13(method_bind_30, Object.GetPtr(this), sleeping);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_sleeping");

        /// <summary>
        /// Return whether the body is sleeping.
        /// </summary>
        public bool is_sleeping()
        {
            return NativeCalls.godot_icall_0_14(method_bind_31, Object.GetPtr(this));
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_can_sleep");

        /// <summary>
        /// Set the body ability to fall asleep when not moving. This saves an enormous amount of processor time when there are plenty of rigid bodies (non static) in a scene.
        /// Sleeping bodies are not affected by forces until a collision or an [method apply_impulse] / [method set_applied_force] wakes them up. Until then, they behave like a static body.
        /// </summary>
        public void set_can_sleep(bool able_to_sleep)
        {
            NativeCalls.godot_icall_1_13(method_bind_32, Object.GetPtr(this), able_to_sleep);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_able_to_sleep");

        /// <summary>
        /// Return whether the body has the ability to fall asleep when not moving. See [method set_can_sleep].
        /// </summary>
        public bool is_able_to_sleep()
        {
            return NativeCalls.godot_icall_0_14(method_bind_33, Object.GetPtr(this));
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_axis_lock");

        /// <summary>
        /// Set the axis lock of the body, from the AXIS_LOCK_* enum. Axis lock stops the body from moving along the specified axis(X/Y/Z) and rotating along the other two axes.
        /// </summary>
        public void set_axis_lock(int axis_lock)
        {
            NativeCalls.godot_icall_1_4(method_bind_34, Object.GetPtr(this), axis_lock);
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_axis_lock");

        /// <summary>
        /// Return the current axis lock of the body. One of AXIS_LOCK_* enum.
        /// </summary>
        public int get_axis_lock()
        {
            return NativeCalls.godot_icall_0_0(method_bind_35, Object.GetPtr(this));
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_colliding_bodies");

        /// <summary>
        /// Return a list of the bodies colliding with this one.
        /// </summary>
        public List<object> get_colliding_bodies()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_36, Object.GetPtr(this));
            return new List<object>(ret);
        }
    }
}
