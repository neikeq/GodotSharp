using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class PolygonPathFinder : Resource
    {
        private const string nativeName = "PolygonPathFinder";

        public PolygonPathFinder() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_PolygonPathFinder_Ctor(this);
        }

        internal PolygonPathFinder(bool memoryOwn) : base(memoryOwn) {}

        ~PolygonPathFinder()
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
                    NativeCalls.godot_icall_PolygonPathFinder_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "setup");

        public void setup(List<Vector2> points, List<int> connections)
        {
            NativeCalls.godot_icall_2_397(method_bind_0, Object.GetPtr(this), points.ToArray(), connections.ToArray());
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "find_path");

        public List<Vector2> find_path(Vector2 @from, Vector2 to)
        {
            Vector2[] ret = NativeCalls.godot_icall_2_398(method_bind_1, Object.GetPtr(this), ref @from, ref to);
            return new List<Vector2>(ret);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_intersections");

        public List<Vector2> get_intersections(Vector2 @from, Vector2 to)
        {
            Vector2[] ret = NativeCalls.godot_icall_2_398(method_bind_2, Object.GetPtr(this), ref @from, ref to);
            return new List<Vector2>(ret);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_closest_point");

        public Vector2 get_closest_point(Vector2 point)
        {
            object ret = NativeCalls.godot_icall_1_143(method_bind_3, Object.GetPtr(this), ref point);
            return (Vector2)ret;
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_point_inside");

        public bool is_point_inside(Vector2 point)
        {
            return NativeCalls.godot_icall_1_108(method_bind_4, Object.GetPtr(this), ref point);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_point_penalty");

        public void set_point_penalty(int idx, float penalty)
        {
            NativeCalls.godot_icall_2_36(method_bind_5, Object.GetPtr(this), idx, penalty);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_point_penalty");

        public float get_point_penalty(int idx)
        {
            return NativeCalls.godot_icall_1_3(method_bind_6, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bounds");

        public Rect2 get_bounds()
        {
            object ret = NativeCalls.godot_icall_0_82(method_bind_7, Object.GetPtr(this));
            return (Rect2)ret;
        }
    }
}
