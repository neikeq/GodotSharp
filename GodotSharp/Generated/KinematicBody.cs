using System;

namespace GodotEngine
{
    /// <summary>
    /// Kinematic bodies are special types of bodies that are meant to be user-controlled. They are not affected by physics at all (to other types of bodies, such a character or a rigid body, these are the same as a static body). They have however, two main uses:
    /// Simulated Motion: When these bodies are moved manually, either from code or from an AnimationPlayer (with process mode set to fixed), the physics will automatically compute an estimate of their linear and angular velocity. This makes them very useful for moving platforms or other AnimationPlayer-controlled objects (like a door, a bridge that opens, etc).
    /// Kinematic Characters: KinematicBody also has an api for moving objects (the [method move] method) while performing collision tests. This makes them really useful to implement characters that collide against a world, but that don't require advanced physics.
    /// </summary>
    public class KinematicBody : PhysicsBody
    {
        private const string nativeName = "KinematicBody";

        public KinematicBody() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_KinematicBody_Ctor(this);
        }

        internal KinematicBody(bool memoryOwn) : base(memoryOwn) {}

        ~KinematicBody()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "move");

        /// <summary>
        /// Move the body in the given direction, stopping if there is an obstacle. The returned vector is how much movement was remaining before being stopped.
        /// </summary>
        public Vector3 move(Vector3 rel_vec)
        {
            object ret = NativeCalls.godot_icall_1_9(method_bind_0, Object.GetPtr(this), ref rel_vec);
            return (Vector3)ret;
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "move_to");

        /// <summary>
        /// Move the body to the given position. This is not a teleport, and the body will stop if there is an obstacle. The returned vector is how much movement was remaining before being stopped.
        /// </summary>
        public Vector3 move_to(Vector3 position)
        {
            object ret = NativeCalls.godot_icall_1_9(method_bind_1, Object.GetPtr(this), ref position);
            return (Vector3)ret;
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "can_teleport_to");

        /// <summary>
        /// Returns whether the KinematicBody can be teleported to the destination given as an argument, checking all collision shapes of the body against potential colliders at the destination.
        /// </summary>
        public bool can_teleport_to(Vector3 position)
        {
            return NativeCalls.godot_icall_1_120(method_bind_2, Object.GetPtr(this), ref position);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_colliding");

        /// <summary>
        /// Return whether the body is colliding with another.
        /// </summary>
        public bool is_colliding()
        {
            return NativeCalls.godot_icall_0_14(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_pos");

        /// <summary>
        /// Return the point in space where the body is touching another. If there is no collision, this method will return (0,0,0), so collisions must be checked first with [method is_colliding].
        /// </summary>
        public Vector3 get_collision_pos()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_4, Object.GetPtr(this));
            return (Vector3)ret;
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_normal");

        /// <summary>
        /// Return the normal of the surface the body collided with. This is useful to implement sliding along a surface.
        /// </summary>
        public Vector3 get_collision_normal()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_5, Object.GetPtr(this));
            return (Vector3)ret;
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collider_velocity");

        /// <summary>
        /// Return the velocity of the body that collided with this one.
        /// </summary>
        public Vector3 get_collider_velocity()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_6, Object.GetPtr(this));
            return (Vector3)ret;
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collider");

        /// <summary>
        /// Return the body that collided with this one.
        /// </summary>
        public object get_collider()
        {
            return NativeCalls.godot_icall_0_126(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collider_shape");

        /// <summary>
        /// Return the shape index from the body that collided with this one. If there is no collision, this method will return 0, so collisions must be checked first with [method is_colliding].
        /// </summary>
        public int get_collider_shape()
        {
            return NativeCalls.godot_icall_0_0(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collide_with_static_bodies");

        /// <summary>
        /// Set if this body should collide with static bodies.
        /// </summary>
        public void set_collide_with_static_bodies(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_9, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "can_collide_with_static_bodies");

        /// <summary>
        /// Return if this body can collide with static bodies.
        /// </summary>
        public bool can_collide_with_static_bodies()
        {
            return NativeCalls.godot_icall_0_14(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collide_with_kinematic_bodies");

        /// <summary>
        /// Set if this body should collide with kinematic bodies.
        /// </summary>
        public void set_collide_with_kinematic_bodies(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_11, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "can_collide_with_kinematic_bodies");

        /// <summary>
        /// Return if this body can collide with kinematic bodies.
        /// </summary>
        public bool can_collide_with_kinematic_bodies()
        {
            return NativeCalls.godot_icall_0_14(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collide_with_rigid_bodies");

        /// <summary>
        /// Set if this body should collide with rigid bodies.
        /// </summary>
        public void set_collide_with_rigid_bodies(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_13, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "can_collide_with_rigid_bodies");

        /// <summary>
        /// Return if this body can collide with rigid bodies.
        /// </summary>
        public bool can_collide_with_rigid_bodies()
        {
            return NativeCalls.godot_icall_0_14(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collide_with_character_bodies");

        /// <summary>
        /// Set if this body should collide with character bodies.
        /// </summary>
        public void set_collide_with_character_bodies(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_15, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "can_collide_with_character_bodies");

        /// <summary>
        /// Return if this body can collide with character bodies.
        /// </summary>
        public bool can_collide_with_character_bodies()
        {
            return NativeCalls.godot_icall_0_14(method_bind_16, Object.GetPtr(this));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collision_margin");

        /// <summary>
        /// Set the collision margin for this object. A collision margin is an amount that all shapes will grow when computing collisions, to account for numerical imprecision.
        /// </summary>
        public void set_collision_margin(float pixels)
        {
            NativeCalls.godot_icall_1_45(method_bind_17, Object.GetPtr(this), pixels);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_margin");

        /// <summary>
        /// Return the collision margin for this object.
        /// </summary>
        public float get_collision_margin()
        {
            return NativeCalls.godot_icall_0_46(method_bind_18, Object.GetPtr(this));
        }
    }
}
