using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class PhysicsShapeQueryParameters : Reference
    {
        private const string nativeName = "PhysicsShapeQueryParameters";

        public PhysicsShapeQueryParameters() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_PhysicsShapeQueryParameters_Ctor(this);
        }

        internal PhysicsShapeQueryParameters(bool memoryOwn) : base(memoryOwn) {}

        ~PhysicsShapeQueryParameters()
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
                    NativeCalls.godot_icall_PhysicsShapeQueryParameters_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shape");

        public void set_shape(Shape shape)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(shape));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shape_rid");

        public void set_shape_rid(RID shape)
        {
            NativeCalls.godot_icall_1_100(method_bind_1, Object.GetPtr(this), RID.GetPtr(shape));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shape_rid");

        public RID get_shape_rid()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_2, Object.GetPtr(this));
            return new RID(ret);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_transform");

        public void set_transform(Transform transform)
        {
            NativeCalls.godot_icall_1_227(method_bind_3, Object.GetPtr(this), ref transform);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_transform");

        public Transform get_transform()
        {
            object ret = NativeCalls.godot_icall_0_122(method_bind_4, Object.GetPtr(this));
            return (Transform)ret;
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_margin");

        public void set_margin(float margin)
        {
            NativeCalls.godot_icall_1_45(method_bind_5, Object.GetPtr(this), margin);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_margin");

        public float get_margin()
        {
            return NativeCalls.godot_icall_0_46(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_layer_mask");

        public void set_layer_mask(int layer_mask)
        {
            NativeCalls.godot_icall_1_4(method_bind_7, Object.GetPtr(this), layer_mask);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_layer_mask");

        public int get_layer_mask()
        {
            return NativeCalls.godot_icall_0_0(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_object_type_mask");

        public void set_object_type_mask(int object_type_mask)
        {
            NativeCalls.godot_icall_1_4(method_bind_9, Object.GetPtr(this), object_type_mask);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_object_type_mask");

        public int get_object_type_mask()
        {
            return NativeCalls.godot_icall_0_0(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_exclude");

        public void set_exclude(List<object> exclude)
        {
            NativeCalls.godot_icall_1_375(method_bind_11, Object.GetPtr(this), exclude.ToArray());
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_exclude");

        public List<object> get_exclude()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_12, Object.GetPtr(this));
            return new List<object>(ret);
        }
    }
}
