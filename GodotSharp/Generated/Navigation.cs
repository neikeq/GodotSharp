using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class Navigation : Spatial
    {
        private const string nativeName = "Navigation";

        public Navigation() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Navigation_Ctor(this);
        }

        internal Navigation(bool memoryOwn) : base(memoryOwn) {}

        ~Navigation()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "navmesh_create");

        public int navmesh_create(NavigationMesh mesh, Transform xform, Object owner = null)
        {
            return NativeCalls.godot_icall_3_292(method_bind_0, Object.GetPtr(this), Object.GetPtr(mesh), ref xform, Object.GetPtr(owner));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "navmesh_set_transform");

        public void navmesh_set_transform(int id, Transform xform)
        {
            NativeCalls.godot_icall_2_149(method_bind_1, Object.GetPtr(this), id, ref xform);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "navmesh_remove");

        public void navmesh_remove(int id)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_simple_path");

        public List<Vector3> get_simple_path(Vector3 start, Vector3 end, bool optimize = true)
        {
            Vector3[] ret = NativeCalls.godot_icall_3_293(method_bind_3, Object.GetPtr(this), ref start, ref end, optimize);
            return new List<Vector3>(ret);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_closest_point_to_segment");

        public Vector3 get_closest_point_to_segment(Vector3 start, Vector3 end, bool use_collision = false)
        {
            object ret = NativeCalls.godot_icall_3_294(method_bind_4, Object.GetPtr(this), ref start, ref end, use_collision);
            return (Vector3)ret;
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_closest_point");

        public Vector3 get_closest_point(Vector3 to_point)
        {
            object ret = NativeCalls.godot_icall_1_9(method_bind_5, Object.GetPtr(this), ref to_point);
            return (Vector3)ret;
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_closest_point_normal");

        public Vector3 get_closest_point_normal(Vector3 to_point)
        {
            object ret = NativeCalls.godot_icall_1_9(method_bind_6, Object.GetPtr(this), ref to_point);
            return (Vector3)ret;
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_closest_point_owner");

        public Object get_closest_point_owner(Vector3 to_point)
        {
            return NativeCalls.godot_icall_1_295(method_bind_7, Object.GetPtr(this), ref to_point);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_up_vector");

        public void set_up_vector(Vector3 up)
        {
            NativeCalls.godot_icall_1_76(method_bind_8, Object.GetPtr(this), ref up);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_up_vector");

        public Vector3 get_up_vector()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_9, Object.GetPtr(this));
            return (Vector3)ret;
        }
    }
}
