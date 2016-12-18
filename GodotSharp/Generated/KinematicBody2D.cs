using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Kinematic bodies are special types of bodies that are meant to be user-controlled. They are not affected by physics at all (to other types of bodies, such a character or a rigid body, these are the same as a static body). They have however, two main uses:
    /// Simulated Motion: When these bodies are moved manually, either from code or from an AnimationPlayer (with process mode set to fixed), the physics will automatically compute an estimate of their linear and angular velocity. This makes them very useful for moving platforms or other AnimationPlayer-controlled objects (like a door, a bridge that opens, etc).
    /// Kinematic Characters: KinematicBody2D also has an api for moving objects (the [method move] method) while performing collision tests. This makes them really useful to implement characters that collide against a world, but that don't require advanced physics.
    /// </summary>
    public class KinematicBody2D : PhysicsBody2D
    {
        private const string nativeName = "KinematicBody2D";

        public KinematicBody2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_KinematicBody2D_Ctor(this);
        }

        internal KinematicBody2D(bool memoryOwn) : base(memoryOwn) {}

        ~KinematicBody2D()
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
        public Vector2 move(Vector2 rel_vec)
        {
            object ret = NativeCalls.godot_icall_1_143(method_bind_0, Object.GetPtr(this), ref rel_vec);
            return (Vector2)ret;
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "move_to");

        /// <summary>
        /// Move the body to the given position. This is not a teleport, and the body will stop if there is an obstacle. The returned vector is how much movement was remaining before being stopped.
        /// </summary>
        public Vector2 move_to(Vector2 position)
        {
            object ret = NativeCalls.godot_icall_1_143(method_bind_1, Object.GetPtr(this), ref position);
            return (Vector2)ret;
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "move_and_slide");

        public Vector2 move_and_slide(Vector2 linear_velocity, Nullable<Vector2> floor_normal = null, float slope_stop_min_velocity = 5, int max_bounces = 4)
        {
            Vector2 floor_normal_in = floor_normal.HasValue ? floor_normal.Value : new Vector2(0, 0);
            object ret = NativeCalls.godot_icall_4_270(method_bind_2, Object.GetPtr(this), ref linear_velocity, ref floor_normal_in, slope_stop_min_velocity, max_bounces);
            return (Vector2)ret;
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "test_move");

        /// <summary>
        /// Return true if there would be a collision if the body moved from the given point in the given direction.
        /// </summary>
        public bool test_move(Matrix32 @from, Vector2 rel_vec)
        {
            return NativeCalls.godot_icall_2_271(method_bind_3, Object.GetPtr(this), ref @from, ref rel_vec);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_travel");

        /// <summary>
        /// Return the last movement done by the body.
        /// </summary>
        public Vector2 get_travel()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_4, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "revert_motion");

        /// <summary>
        /// Undo the last movement done by the body.
        /// </summary>
        public void revert_motion()
        {
            NativeCalls.godot_icall_0_7(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_colliding");

        /// <summary>
        /// Return whether the body is colliding with another.
        /// </summary>
        public bool is_colliding()
        {
            return NativeCalls.godot_icall_0_14(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_pos");

        /// <summary>
        /// Return the point in space where the body is touching another. If there is no collision, this method will return (0,0), so collisions must be checked first with [method is_colliding].
        /// </summary>
        public Vector2 get_collision_pos()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_7, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_normal");

        /// <summary>
        /// Return the normal of the surface the body collided with. This is useful to implement sliding along a surface.
        /// </summary>
        public Vector2 get_collision_normal()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_8, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collider_velocity");

        /// <summary>
        /// Return the velocity of the body that collided with this one.
        /// </summary>
        public Vector2 get_collider_velocity()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_9, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collider");

        /// <summary>
        /// Return the body that collided with this one.
        /// </summary>
        public object get_collider()
        {
            return NativeCalls.godot_icall_0_126(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collider_shape");

        /// <summary>
        /// Return the shape index from the body that collided with this one. If there is no collision, this method will return 0, so collisions must be checked first with [method is_colliding].
        /// </summary>
        public int get_collider_shape()
        {
            return NativeCalls.godot_icall_0_0(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collider_metadata");

        /// <summary>
        /// Return the metadata of the shape that collided with this body. If there is no collision, it will return 0, so collisions must be checked first with [method is_colliding]. Additionally, this metadata can not be set with [method Object.set_meta], it must be set with [method Physics2DServer.body_set_shape_metadata].
        /// </summary>
        public object get_collider_metadata()
        {
            return NativeCalls.godot_icall_0_126(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_move_and_slide_colliders");

        public List<object> get_move_and_slide_colliders()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_13, Object.GetPtr(this));
            return new List<object>(ret);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_move_and_slide_on_floor");

        public bool is_move_and_slide_on_floor()
        {
            return NativeCalls.godot_icall_0_14(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_move_and_slide_on_ceiling");

        public bool is_move_and_slide_on_ceiling()
        {
            return NativeCalls.godot_icall_0_14(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_move_and_slide_on_wall");

        public bool is_move_and_slide_on_wall()
        {
            return NativeCalls.godot_icall_0_14(method_bind_16, Object.GetPtr(this));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collision_margin");

        /// <summary>
        /// Set the collision margin for this object. A collision margin is an amount (in pixels) that all shapes will grow when computing collisions, to account for numerical imprecision.
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
