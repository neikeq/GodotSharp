using System;

namespace GodotEngine
{
    public class CollisionObject : Spatial
    {
        private const string nativeName = "CollisionObject";

        internal CollisionObject() {}

        internal CollisionObject(bool memoryOwn) : base(memoryOwn) {}

        ~CollisionObject()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_shape");

        public void add_shape(Shape shape, Nullable<Transform> transform = null)
        {
            Transform transform_in = transform.HasValue ? transform.Value : new Transform();
            NativeCalls.godot_icall_2_148(method_bind_0, Object.GetPtr(this), Object.GetPtr(shape), ref transform_in);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shape_count");

        public int get_shape_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shape");

        public void set_shape(int shape_idx, Shape shape)
        {
            NativeCalls.godot_icall_2_115(method_bind_2, Object.GetPtr(this), shape_idx, Object.GetPtr(shape));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shape_transform");

        public void set_shape_transform(int shape_idx, Transform transform)
        {
            NativeCalls.godot_icall_2_149(method_bind_3, Object.GetPtr(this), shape_idx, ref transform);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shape_as_trigger");

        public void set_shape_as_trigger(int shape_idx, bool enable)
        {
            NativeCalls.godot_icall_2_32(method_bind_4, Object.GetPtr(this), shape_idx, enable);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_shape_set_as_trigger");

        public bool is_shape_set_as_trigger(int shape_idx)
        {
            return NativeCalls.godot_icall_1_33(method_bind_5, Object.GetPtr(this), shape_idx);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shape");

        public Shape get_shape(int shape_idx)
        {
            return NativeCalls.godot_icall_1_150(method_bind_6, Object.GetPtr(this), shape_idx);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shape_transform");

        public Transform get_shape_transform(int shape_idx)
        {
            object ret = NativeCalls.godot_icall_1_151(method_bind_7, Object.GetPtr(this), shape_idx);
            return (Transform)ret;
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_shape");

        public void remove_shape(int shape_idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_8, Object.GetPtr(this), shape_idx);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_shapes");

        public void clear_shapes()
        {
            NativeCalls.godot_icall_0_7(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_ray_pickable");

        public void set_ray_pickable(bool ray_pickable)
        {
            NativeCalls.godot_icall_1_13(method_bind_10, Object.GetPtr(this), ray_pickable);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_ray_pickable");

        public bool is_ray_pickable()
        {
            return NativeCalls.godot_icall_0_14(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_capture_input_on_drag");

        public void set_capture_input_on_drag(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_12, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_capture_input_on_drag");

        public bool get_capture_input_on_drag()
        {
            return NativeCalls.godot_icall_0_14(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rid");

        public RID get_rid()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_14, Object.GetPtr(this));
            return new RID(ret);
        }
    }
}
