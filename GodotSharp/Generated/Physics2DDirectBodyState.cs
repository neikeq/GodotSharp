using System;

namespace GodotEngine
{
    /// <summary>
    /// Direct access object to a physics body in the [Physics2DServer]. This object is passed via the direct state callback of rigid/character bodies, and is intended for changing the direct state of that body.
    /// </summary>
    public class Physics2DDirectBodyState : Object
    {
        private const string nativeName = "Physics2DDirectBodyState";

        internal Physics2DDirectBodyState() {}

        internal Physics2DDirectBodyState(bool memoryOwn) : base(memoryOwn) {}

        ~Physics2DDirectBodyState()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_total_gravity");

        /// <summary>
        /// Return the total gravity vector being currently applied to this body.
        /// </summary>
        public Vector2 get_total_gravity()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_0, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_total_linear_damp");

        /// <summary>
        /// Return the rate at which the body stops moving, if there are not any other forces moving it.
        /// </summary>
        public float get_total_linear_damp()
        {
            return NativeCalls.godot_icall_0_46(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_total_angular_damp");

        /// <summary>
        /// Return the rate at which the body stops rotating, if there are not any other forces moving it.
        /// </summary>
        public float get_total_angular_damp()
        {
            return NativeCalls.godot_icall_0_46(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_inverse_mass");

        /// <summary>
        /// Return the inverse of the mass of the body.
        /// </summary>
        public float get_inverse_mass()
        {
            return NativeCalls.godot_icall_0_46(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_inverse_inertia");

        /// <summary>
        /// Return the inverse of the inertia of the body.
        /// </summary>
        public float get_inverse_inertia()
        {
            return NativeCalls.godot_icall_0_46(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_linear_velocity");

        /// <summary>
        /// Change the linear velocity of the body.
        /// </summary>
        public void set_linear_velocity(Vector2 velocity)
        {
            NativeCalls.godot_icall_1_23(method_bind_5, Object.GetPtr(this), ref velocity);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_linear_velocity");

        /// <summary>
        /// Return the current linear velocity of the body.
        /// </summary>
        public Vector2 get_linear_velocity()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_6, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_angular_velocity");

        /// <summary>
        /// Change the angular velocity of the body.
        /// </summary>
        public void set_angular_velocity(float velocity)
        {
            NativeCalls.godot_icall_1_45(method_bind_7, Object.GetPtr(this), velocity);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_angular_velocity");

        /// <summary>
        /// Return the angular velocity of the body.
        /// </summary>
        public float get_angular_velocity()
        {
            return NativeCalls.godot_icall_0_46(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_transform");

        /// <summary>
        /// Change the transform matrix of the body.
        /// </summary>
        public void set_transform(Matrix32 transform)
        {
            NativeCalls.godot_icall_1_140(method_bind_9, Object.GetPtr(this), ref transform);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_transform");

        /// <summary>
        /// Return the transform matrix of the body.
        /// </summary>
        public Matrix32 get_transform()
        {
            object ret = NativeCalls.godot_icall_0_141(method_bind_10, Object.GetPtr(this));
            return (Matrix32)ret;
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_sleep_state");

        /// <summary>
        /// Set the sleeping state of the body, only affects character/rigid bodies.
        /// </summary>
        public void set_sleep_state(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_11, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_sleeping");

        /// <summary>
        /// Return true if this body is currently sleeping (not active).
        /// </summary>
        public bool is_sleeping()
        {
            return NativeCalls.godot_icall_0_14(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_count");

        /// <summary>
        /// Return the amount of contacts this body has with other bodies. Note that by default this returns 0 unless bodies are configured to log contacts.
        /// </summary>
        public int get_contact_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_local_pos");

        /// <summary>
        /// Return the local position (of this body) of the contact point.
        /// </summary>
        public Vector2 get_contact_local_pos(int contact_idx)
        {
            object ret = NativeCalls.godot_icall_1_191(method_bind_14, Object.GetPtr(this), contact_idx);
            return (Vector2)ret;
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_local_normal");

        /// <summary>
        /// Return the local normal (of this body) of the contact point.
        /// </summary>
        public Vector2 get_contact_local_normal(int contact_idx)
        {
            object ret = NativeCalls.godot_icall_1_191(method_bind_15, Object.GetPtr(this), contact_idx);
            return (Vector2)ret;
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_local_shape");

        /// <summary>
        /// Return the local shape index of the collision.
        /// </summary>
        public int get_contact_local_shape(int contact_idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_16, Object.GetPtr(this), contact_idx);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_collider");

        /// <summary>
        /// Return the [RID] of the collider.
        /// </summary>
        public RID get_contact_collider(int contact_idx)
        {
            IntPtr ret = NativeCalls.godot_icall_1_343(method_bind_17, Object.GetPtr(this), contact_idx);
            return new RID(ret);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_collider_pos");

        /// <summary>
        /// Return the contact position in the collider.
        /// </summary>
        public Vector2 get_contact_collider_pos(int contact_idx)
        {
            object ret = NativeCalls.godot_icall_1_191(method_bind_18, Object.GetPtr(this), contact_idx);
            return (Vector2)ret;
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_collider_id");

        /// <summary>
        /// Return the object id of the collider.
        /// </summary>
        public int get_contact_collider_id(int contact_idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_19, Object.GetPtr(this), contact_idx);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_collider_object");

        /// <summary>
        /// Return the collider object, this depends on how it was created (will return a scene node if such was used to create it).
        /// </summary>
        public Object get_contact_collider_object(int contact_idx)
        {
            return NativeCalls.godot_icall_1_207(method_bind_20, Object.GetPtr(this), contact_idx);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_collider_shape");

        /// <summary>
        /// Return the collider shape index.
        /// </summary>
        public int get_contact_collider_shape(int contact_idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_21, Object.GetPtr(this), contact_idx);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_collider_shape_metadata");

        /// <summary>
        /// Return the metadata of the collided shape. This metadata is different from [method Object.get_meta], and is set with [method Physics2DServer.shape_set_data].
        /// </summary>
        public object get_contact_collider_shape_metadata(int contact_idx)
        {
            return NativeCalls.godot_icall_1_344(method_bind_22, Object.GetPtr(this), contact_idx);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_collider_velocity_at_pos");

        /// <summary>
        /// Return the linear velocity vector at contact point of the collider.
        /// </summary>
        public Vector2 get_contact_collider_velocity_at_pos(int contact_idx)
        {
            object ret = NativeCalls.godot_icall_1_191(method_bind_23, Object.GetPtr(this), contact_idx);
            return (Vector2)ret;
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_step");

        /// <summary>
        /// Return the timestep (delta) used for the simulation.
        /// </summary>
        public float get_step()
        {
            return NativeCalls.godot_icall_0_46(method_bind_24, Object.GetPtr(this));
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "integrate_forces");

        /// <summary>
        /// Call the built-in force integration code.
        /// </summary>
        public void integrate_forces()
        {
            NativeCalls.godot_icall_0_7(method_bind_25, Object.GetPtr(this));
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_space_state");

        /// <summary>
        /// Return the current state of space, useful for queries.
        /// </summary>
        public Physics2DDirectSpaceState get_space_state()
        {
            return NativeCalls.godot_icall_0_345(method_bind_26, Object.GetPtr(this));
        }
    }
}
