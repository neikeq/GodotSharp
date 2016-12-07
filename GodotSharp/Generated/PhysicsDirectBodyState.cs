using System;

namespace GodotEngine
{
    public class PhysicsDirectBodyState : Object
    {
        private const string nativeName = "PhysicsDirectBodyState";

        internal PhysicsDirectBodyState() {}

        internal PhysicsDirectBodyState(bool memoryOwn) : base(memoryOwn) {}

        ~PhysicsDirectBodyState()
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

        public Vector3 get_total_gravity()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_0, Object.GetPtr(this));
            return (Vector3)ret;
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_total_linear_damp");

        public float get_total_linear_damp()
        {
            return NativeCalls.godot_icall_0_46(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_total_angular_damp");

        public float get_total_angular_damp()
        {
            return NativeCalls.godot_icall_0_46(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_inverse_mass");

        public float get_inverse_mass()
        {
            return NativeCalls.godot_icall_0_46(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_inverse_inertia");

        public Vector3 get_inverse_inertia()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_4, Object.GetPtr(this));
            return (Vector3)ret;
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_linear_velocity");

        public void set_linear_velocity(Vector3 velocity)
        {
            NativeCalls.godot_icall_1_76(method_bind_5, Object.GetPtr(this), ref velocity);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_linear_velocity");

        public Vector3 get_linear_velocity()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_6, Object.GetPtr(this));
            return (Vector3)ret;
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_angular_velocity");

        public void set_angular_velocity(Vector3 velocity)
        {
            NativeCalls.godot_icall_1_76(method_bind_7, Object.GetPtr(this), ref velocity);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_angular_velocity");

        public Vector3 get_angular_velocity()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_8, Object.GetPtr(this));
            return (Vector3)ret;
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_transform");

        public void set_transform(Transform transform)
        {
            NativeCalls.godot_icall_1_227(method_bind_9, Object.GetPtr(this), ref transform);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_transform");

        public Transform get_transform()
        {
            object ret = NativeCalls.godot_icall_0_122(method_bind_10, Object.GetPtr(this));
            return (Transform)ret;
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_force");

        public void add_force(Vector3 force, Vector3 pos)
        {
            NativeCalls.godot_icall_2_376(method_bind_11, Object.GetPtr(this), ref force, ref pos);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "apply_impulse");

        public void apply_impulse(Vector3 pos, Vector3 j)
        {
            NativeCalls.godot_icall_2_376(method_bind_12, Object.GetPtr(this), ref pos, ref j);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_sleep_state");

        public void set_sleep_state(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_13, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_sleeping");

        public bool is_sleeping()
        {
            return NativeCalls.godot_icall_0_14(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_count");

        public int get_contact_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_local_pos");

        public Vector3 get_contact_local_pos(int contact_idx)
        {
            object ret = NativeCalls.godot_icall_1_2(method_bind_16, Object.GetPtr(this), contact_idx);
            return (Vector3)ret;
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_local_normal");

        public Vector3 get_contact_local_normal(int contact_idx)
        {
            object ret = NativeCalls.godot_icall_1_2(method_bind_17, Object.GetPtr(this), contact_idx);
            return (Vector3)ret;
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_local_shape");

        public int get_contact_local_shape(int contact_idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_18, Object.GetPtr(this), contact_idx);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_collider");

        public RID get_contact_collider(int contact_idx)
        {
            IntPtr ret = NativeCalls.godot_icall_1_343(method_bind_19, Object.GetPtr(this), contact_idx);
            return new RID(ret);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_collider_pos");

        public Vector3 get_contact_collider_pos(int contact_idx)
        {
            object ret = NativeCalls.godot_icall_1_2(method_bind_20, Object.GetPtr(this), contact_idx);
            return (Vector3)ret;
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_collider_id");

        public int get_contact_collider_id(int contact_idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_21, Object.GetPtr(this), contact_idx);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_collider_object");

        public Object get_contact_collider_object(int contact_idx)
        {
            return NativeCalls.godot_icall_1_207(method_bind_22, Object.GetPtr(this), contact_idx);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_collider_shape");

        public int get_contact_collider_shape(int contact_idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_23, Object.GetPtr(this), contact_idx);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_contact_collider_velocity_at_pos");

        public Vector3 get_contact_collider_velocity_at_pos(int contact_idx)
        {
            object ret = NativeCalls.godot_icall_1_2(method_bind_24, Object.GetPtr(this), contact_idx);
            return (Vector3)ret;
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_step");

        public float get_step()
        {
            return NativeCalls.godot_icall_0_46(method_bind_25, Object.GetPtr(this));
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "integrate_forces");

        public void integrate_forces()
        {
            NativeCalls.godot_icall_0_7(method_bind_26, Object.GetPtr(this));
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_space_state");

        public PhysicsDirectSpaceState get_space_state()
        {
            return NativeCalls.godot_icall_0_377(method_bind_27, Object.GetPtr(this));
        }
    }
}
