using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Rigid body 2D node. This node is used for placing rigid bodies in the scene. It can contain a number of shapes, and also shift state between regular Rigid body, Kinematic, Character or Static.
    /// Character mode forbids the node from being rotated. This node can have a custom force integrator function, for writing complex physics motion behavior per node.
    /// As a warning, don't change this node position every frame or very often. Sporadic changes work fine, but physics runs at a different granularity (fixed hz) than usual rendering (process callback) and maybe even in a separate thread, so changing this from a process loop will yield strange behavior.
    /// </summary>
    public class RigidBody2D : PhysicsBody2D
    {
        /// <summary>
        /// Static mode. The body behaves like a [StaticBody2D], and can only move by user code.
        /// </summary>
        public const int MODE_STATIC = 1;
        /// <summary>
        /// Kinematic body. The body behaves like a [KinematicBody2D], and can only move by user code.
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
        /// <summary>
        /// Disables continuous collision detection. This is the fastest way to detect body collisions, but can miss small, fast-moving objects.
        /// </summary>
        public const int CCD_MODE_DISABLED = 0;
        /// <summary>
        /// Enables continuous collision detection by raycasting. It is faster than shapecasting, but less precise.
        /// </summary>
        public const int CCD_MODE_CAST_RAY = 1;
        /// <summary>
        /// Enables continuous collision detection by shapecasting. It is the slowest CCD method, and the most precise.
        /// </summary>
        public const int CCD_MODE_CAST_SHAPE = 2;

        private const string nativeName = "RigidBody2D";

        public RigidBody2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_RigidBody2D_Ctor(this);
        }

        internal RigidBody2D(bool memoryOwn) : base(memoryOwn) {}

        ~RigidBody2D()
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
        /// Return the body mass.
        /// </summary>
        public float get_mass()
        {
            return NativeCalls.godot_icall_0_46(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_inertia");

        /// <summary>
        /// Return the body's moment of inertia. This is usually automatically computed from the mass and the shapes. Note that this doesn't seem to work in a [code]_ready[/code] function: it apparently has not been auto-computed yet.
        /// </summary>
        public float get_inertia()
        {
            return NativeCalls.godot_icall_0_46(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_inertia");

        /// <summary>
        /// Set the body's moment of inertia. This is like mass, but for rotation: it determines how much torque it takes to rotate the body. The moment of inertia is usually computed automatically from the mass and the shapes, but this function allows you to set a custom value. Set 0 (or negative) inertia to return to automatically computing it.
        /// </summary>
        public void set_inertia(float inertia)
        {
            NativeCalls.godot_icall_1_45(method_bind_5, Object.GetPtr(this), inertia);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_weight");

        /// <summary>
        /// Set the body weight given standard earth-weight (gravity 9.8). Not really useful for 2D since most measures for this node are in pixels.
        /// </summary>
        public void set_weight(float weight)
        {
            NativeCalls.godot_icall_1_45(method_bind_6, Object.GetPtr(this), weight);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_weight");

        /// <summary>
        /// Return the body weight given standard earth-weight (gravity 9.8).
        /// </summary>
        public float get_weight()
        {
            return NativeCalls.godot_icall_0_46(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_friction");

        /// <summary>
        /// Set the body friction, from 0 (frictionless) to 1 (full friction).
        /// </summary>
        public void set_friction(float friction)
        {
            NativeCalls.godot_icall_1_45(method_bind_8, Object.GetPtr(this), friction);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_friction");

        /// <summary>
        /// Return the body friction.
        /// </summary>
        public float get_friction()
        {
            return NativeCalls.godot_icall_0_46(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bounce");

        /// <summary>
        /// Set the body bounciness, from 0 (no bounce) to 1 (full bounce).
        /// </summary>
        public void set_bounce(float bounce)
        {
            NativeCalls.godot_icall_1_45(method_bind_10, Object.GetPtr(this), bounce);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bounce");

        /// <summary>
        /// Return the body bounciness.
        /// </summary>
        public float get_bounce()
        {
            return NativeCalls.godot_icall_0_46(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_gravity_scale");

        /// <summary>
        /// Set the gravity factor. This factor multiplies gravity intensity just for this body.
        /// </summary>
        public void set_gravity_scale(float gravity_scale)
        {
            NativeCalls.godot_icall_1_45(method_bind_12, Object.GetPtr(this), gravity_scale);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_gravity_scale");

        /// <summary>
        /// Return the gravity factor.
        /// </summary>
        public float get_gravity_scale()
        {
            return NativeCalls.godot_icall_0_46(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_linear_damp");

        /// <summary>
        /// Set the linear damp for this body. If this value is different from -1, any linear damp derived from the world or areas will be overridden.
        /// </summary>
        public void set_linear_damp(float linear_damp)
        {
            NativeCalls.godot_icall_1_45(method_bind_14, Object.GetPtr(this), linear_damp);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_linear_damp");

        /// <summary>
        /// Return the linear damp for this body.
        /// </summary>
        public float get_linear_damp()
        {
            return NativeCalls.godot_icall_0_46(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_angular_damp");

        /// <summary>
        /// Set the angular damp for this body. If this value is different from -1, any angular damp derived from the world or areas will be overridden.
        /// </summary>
        public void set_angular_damp(float angular_damp)
        {
            NativeCalls.godot_icall_1_45(method_bind_16, Object.GetPtr(this), angular_damp);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_angular_damp");

        /// <summary>
        /// Return the angular damp for this body.
        /// </summary>
        public float get_angular_damp()
        {
            return NativeCalls.godot_icall_0_46(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_linear_velocity");

        /// <summary>
        /// Set the body linear velocity. Can be used sporadically, but [b]DON'T SET THIS IN EVERY FRAME[/b], because physics may be running in another thread and definitely runs at a different granularity. Use [method _integrate_forces] as your process loop if you want to have precise control of the body state.
        /// </summary>
        public void set_linear_velocity(Vector2 linear_velocity)
        {
            NativeCalls.godot_icall_1_23(method_bind_18, Object.GetPtr(this), ref linear_velocity);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_linear_velocity");

        /// <summary>
        /// Return the body linear velocity. This changes by physics granularity. See [method set_linear_velocity].
        /// </summary>
        public Vector2 get_linear_velocity()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_19, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_angular_velocity");

        /// <summary>
        /// Set the body angular velocity. Can be used sporadically, but [b]DON'T SET THIS IN EVERY FRAME[/b], because physics may be running in another thread and definitely runs at a different granularity. Use [method _integrate_forces] as your process loop if you want to have precise control of the body state.
        /// </summary>
        public void set_angular_velocity(float angular_velocity)
        {
            NativeCalls.godot_icall_1_45(method_bind_20, Object.GetPtr(this), angular_velocity);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_angular_velocity");

        /// <summary>
        /// Return the body angular velocity. This changes by physics granularity. See [method set_angular_velocity].
        /// </summary>
        public float get_angular_velocity()
        {
            return NativeCalls.godot_icall_0_46(method_bind_21, Object.GetPtr(this));
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_max_contacts_reported");

        /// <summary>
        /// Set the maximum contacts to report. Bodies can keep a log of the contacts with other bodies, this is enabled by setting the maximum amount of contacts reported to a number greater than 0.
        /// </summary>
        public void set_max_contacts_reported(int amount)
        {
            NativeCalls.godot_icall_1_4(method_bind_22, Object.GetPtr(this), amount);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_max_contacts_reported");

        /// <summary>
        /// Return the maximum contacts that can be reported. See [method set_max_contacts_reported].
        /// </summary>
        public int get_max_contacts_reported()
        {
            return NativeCalls.godot_icall_0_0(method_bind_23, Object.GetPtr(this));
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_use_custom_integrator");

        /// <summary>
        /// Pass true to disable the internal force integration (like gravity or air friction) for this body. Other than collision response, the body will only move as determined by the [method _integrate_forces] function, if defined.
        /// </summary>
        public void set_use_custom_integrator(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_24, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_using_custom_integrator");

        /// <summary>
        /// Return true if the body is not doing any built-in force integration.
        /// </summary>
        public bool is_using_custom_integrator()
        {
            return NativeCalls.godot_icall_0_14(method_bind_25, Object.GetPtr(this));
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_contact_monitor");

        /// <summary>
        /// Enable contact monitoring. This allows the body to emit signals when it collides with another.
        /// </summary>
        public void set_contact_monitor(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_26, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_contact_monitor_enabled");

        /// <summary>
        /// Return whether contact monitoring is enabled.
        /// </summary>
        public bool is_contact_monitor_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_27, Object.GetPtr(this));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_continuous_collision_detection_mode");

        /// <summary>
        /// Set the continuous collision detection mode from the enum CCD_MODE_*.
        /// Continuous collision detection tries to predict where a moving body will collide, instead of moving it and correcting its movement if it collided. The first is more precise, and misses less impacts by small, fast-moving objects. The second is faster to compute, but can miss small, fast-moving objects.
        /// </summary>
        public void set_continuous_collision_detection_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_28, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_continuous_collision_detection_mode");

        /// <summary>
        /// Return whether this body is using continuous collision detection.
        /// </summary>
        public int get_continuous_collision_detection_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_29, Object.GetPtr(this));
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_axis_velocity");

        /// <summary>
        /// Set an axis velocity. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.
        /// </summary>
        public void set_axis_velocity(Vector2 axis_velocity)
        {
            NativeCalls.godot_icall_1_23(method_bind_30, Object.GetPtr(this), ref axis_velocity);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "apply_impulse");

        /// <summary>
        /// Apply a positioned impulse (which will be affected by the body mass and shape). This is the equivalent of hitting a billiard ball with a cue: a force that is applied once, and only once. Both the impulse and the offset from the body origin are in global coordinates.
        /// </summary>
        public void apply_impulse(Vector2 offset, Vector2 impulse)
        {
            NativeCalls.godot_icall_2_411(method_bind_31, Object.GetPtr(this), ref offset, ref impulse);
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_applied_force");

        /// <summary>
        /// Set the applied force vector. This is the equivalent of pushing a box over the ground: the force applied is applied constantly.
        /// </summary>
        public void set_applied_force(Vector2 force)
        {
            NativeCalls.godot_icall_1_23(method_bind_32, Object.GetPtr(this), ref force);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_applied_force");

        /// <summary>
        /// Return the applied force vector.
        /// </summary>
        public Vector2 get_applied_force()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_33, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_applied_torque");

        /// <summary>
        /// Set a constant torque which will be applied to this body.
        /// </summary>
        public void set_applied_torque(float torque)
        {
            NativeCalls.godot_icall_1_45(method_bind_34, Object.GetPtr(this), torque);
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_applied_torque");

        /// <summary>
        /// Return the torque which is being applied to this body.
        /// </summary>
        public float get_applied_torque()
        {
            return NativeCalls.godot_icall_0_46(method_bind_35, Object.GetPtr(this));
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_force");

        /// <summary>
        /// Add a positioned force to the applied force and torque. As with [method apply_impulse], both the force and the offset from the body origin are in global coordinates.
        /// </summary>
        public void add_force(Vector2 offset, Vector2 force)
        {
            NativeCalls.godot_icall_2_411(method_bind_36, Object.GetPtr(this), ref offset, ref force);
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_sleeping");

        /// <summary>
        /// Set whether a body is sleeping or not. Sleeping bodies are not affected by forces until a collision or an [method apply_impulse] / [method set_applied_force] wakes them up. Until then, they behave like a static body.
        /// </summary>
        public void set_sleeping(bool sleeping)
        {
            NativeCalls.godot_icall_1_13(method_bind_37, Object.GetPtr(this), sleeping);
        }

        private IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_sleeping");

        /// <summary>
        /// Return whether the body is sleeping.
        /// </summary>
        public bool is_sleeping()
        {
            return NativeCalls.godot_icall_0_14(method_bind_38, Object.GetPtr(this));
        }

        private IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_can_sleep");

        /// <summary>
        /// Set the body ability to fall asleep when not moving. This saves an enormous amount of processor time when there are plenty of rigid bodies (non static) in a scene.
        /// Sleeping bodies are not affected by forces until a collision or an [method apply_impulse] / [method set_applied_force] wakes them up. Until then, they behave like a static body.
        /// </summary>
        public void set_can_sleep(bool able_to_sleep)
        {
            NativeCalls.godot_icall_1_13(method_bind_39, Object.GetPtr(this), able_to_sleep);
        }

        private IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_able_to_sleep");

        /// <summary>
        /// Return true if the body has the ability to fall asleep when not moving. See [method set_can_sleep].
        /// </summary>
        public bool is_able_to_sleep()
        {
            return NativeCalls.godot_icall_0_14(method_bind_40, Object.GetPtr(this));
        }

        private IntPtr method_bind_41 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "test_motion");

        /// <summary>
        /// Return whether the body would collide, if it tried to move in the given vector. This method allows two extra parameters: A margin, which increases slightly the size of the shapes involved in the collision detection, and an object of type [Physics2DTestMotionResult], which will store additional information about the collision (should there be one).
        /// </summary>
        public bool test_motion(Vector2 motion, float margin = 0.08f, Physics2DTestMotionResult result = null)
        {
            return NativeCalls.godot_icall_3_412(method_bind_41, Object.GetPtr(this), ref motion, margin, Object.GetPtr(result));
        }

        private IntPtr method_bind_42 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_colliding_bodies");

        /// <summary>
        /// Return a list of the bodies colliding with this one.
        /// </summary>
        public List<object> get_colliding_bodies()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_42, Object.GetPtr(this));
            return new List<object>(ret);
        }
    }
}
