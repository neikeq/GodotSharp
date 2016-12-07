using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class PhysicsDirectSpaceState : Object
    {
        public const int TYPE_MASK_STATIC_BODY = 1;
        public const int TYPE_MASK_KINEMATIC_BODY = 2;
        public const int TYPE_MASK_RIGID_BODY = 4;
        public const int TYPE_MASK_CHARACTER_BODY = 8;
        public const int TYPE_MASK_AREA = 16;
        public const int TYPE_MASK_COLLISION = 15;

        private const string nativeName = "PhysicsDirectSpaceState";

        internal PhysicsDirectSpaceState() {}

        internal PhysicsDirectSpaceState(bool memoryOwn) : base(memoryOwn) {}

        ~PhysicsDirectSpaceState()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "intersect_ray");

        public Dictionary<object, object> intersect_ray(Vector3 @from, Vector3 to, List<object> exclude = null, int layer_mask = 2147483647, int type_mask = 15)
        {
            List<object> exclude_in = exclude != null ? exclude : new List<object>();
            return NativeCalls.godot_icall_5_378(method_bind_0, Object.GetPtr(this), ref @from, ref to, exclude_in.ToArray(), layer_mask, type_mask);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "intersect_shape");

        public List<object> intersect_shape(PhysicsShapeQueryParameters shape, int max_results = 32)
        {
            object[] ret = NativeCalls.godot_icall_2_348(method_bind_1, Object.GetPtr(this), Object.GetPtr(shape), max_results);
            return new List<object>(ret);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cast_motion");

        public List<object> cast_motion(PhysicsShapeQueryParameters shape, Vector3 motion)
        {
            object[] ret = NativeCalls.godot_icall_2_379(method_bind_2, Object.GetPtr(this), Object.GetPtr(shape), ref motion);
            return new List<object>(ret);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "collide_shape");

        public List<object> collide_shape(PhysicsShapeQueryParameters shape, int max_results = 32)
        {
            object[] ret = NativeCalls.godot_icall_2_348(method_bind_3, Object.GetPtr(this), Object.GetPtr(shape), max_results);
            return new List<object>(ret);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rest_info");

        public Dictionary<object, object> get_rest_info(PhysicsShapeQueryParameters shape)
        {
            return NativeCalls.godot_icall_1_350(method_bind_4, Object.GetPtr(this), Object.GetPtr(shape));
        }
    }
}
