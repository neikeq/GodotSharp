using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class NavigationMesh : Resource
    {
        private const string nativeName = "NavigationMesh";

        public NavigationMesh() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_NavigationMesh_Ctor(this);
        }

        internal NavigationMesh(bool memoryOwn) : base(memoryOwn) {}

        ~NavigationMesh()
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
                    NativeCalls.godot_icall_NavigationMesh_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_vertices");

        public void set_vertices(List<Vector3> vertices)
        {
            NativeCalls.godot_icall_1_167(method_bind_0, Object.GetPtr(this), vertices.ToArray());
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_vertices");

        public List<Vector3> get_vertices()
        {
            Vector3[] ret = NativeCalls.godot_icall_0_168(method_bind_1, Object.GetPtr(this));
            return new List<Vector3>(ret);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_polygon");

        public void add_polygon(List<int> polygon)
        {
            NativeCalls.godot_icall_1_103(method_bind_2, Object.GetPtr(this), polygon.ToArray());
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_polygon_count");

        public int get_polygon_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_polygon");

        public List<int> get_polygon(int idx)
        {
            int[] ret = NativeCalls.godot_icall_1_286(method_bind_4, Object.GetPtr(this), idx);
            return new List<int>(ret);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_polygons");

        public void clear_polygons()
        {
            NativeCalls.godot_icall_0_7(method_bind_5, Object.GetPtr(this));
        }
    }
}
