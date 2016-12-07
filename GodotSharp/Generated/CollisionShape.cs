using System;

namespace GodotEngine
{
    public class CollisionShape : Spatial
    {
        private const string nativeName = "CollisionShape";

        public CollisionShape() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_CollisionShape_Ctor(this);
        }

        internal CollisionShape(bool memoryOwn) : base(memoryOwn) {}

        ~CollisionShape()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "resource_changed");

        public void resource_changed(Object resource)
        {
            NativeCalls.godot_icall_1_20(method_bind_0, Object.GetPtr(this), Object.GetPtr(resource));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shape");

        public void set_shape(Object shape)
        {
            NativeCalls.godot_icall_1_20(method_bind_1, Object.GetPtr(this), Object.GetPtr(shape));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shape");

        public Object get_shape()
        {
            return NativeCalls.godot_icall_0_12(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_trigger");

        public void set_trigger(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_3, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_trigger");

        public bool is_trigger()
        {
            return NativeCalls.godot_icall_0_14(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "make_convex_from_brothers");

        public void make_convex_from_brothers()
        {
            NativeCalls.godot_icall_0_7(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_object_shape_index");

        public int get_collision_object_shape_index()
        {
            return NativeCalls.godot_icall_0_0(method_bind_6, Object.GetPtr(this));
        }
    }
}
