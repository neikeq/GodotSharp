using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class NavigationPolygon : Resource
    {
        private const string nativeName = "NavigationPolygon";

        public NavigationPolygon() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_NavigationPolygon_Ctor(this);
        }

        internal NavigationPolygon(bool memoryOwn) : base(memoryOwn) {}

        ~NavigationPolygon()
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
                    NativeCalls.godot_icall_NavigationPolygon_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_vertices");

        public void set_vertices(List<Vector2> vertices)
        {
            NativeCalls.godot_icall_1_156(method_bind_0, Object.GetPtr(this), vertices.ToArray());
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_vertices");

        public List<Vector2> get_vertices()
        {
            Vector2[] ret = NativeCalls.godot_icall_0_157(method_bind_1, Object.GetPtr(this));
            return new List<Vector2>(ret);
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

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_outline");

        public void add_outline(List<Vector2> outline)
        {
            NativeCalls.godot_icall_1_156(method_bind_6, Object.GetPtr(this), outline.ToArray());
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_outline_at_index");

        public void add_outline_at_index(List<Vector2> outline, int index)
        {
            NativeCalls.godot_icall_2_299(method_bind_7, Object.GetPtr(this), outline.ToArray(), index);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_outline_count");

        public int get_outline_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_outline");

        public void set_outline(int idx, List<Vector2> outline)
        {
            NativeCalls.godot_icall_2_300(method_bind_9, Object.GetPtr(this), idx, outline.ToArray());
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_outline");

        public List<Vector2> get_outline(int idx)
        {
            Vector2[] ret = NativeCalls.godot_icall_1_301(method_bind_10, Object.GetPtr(this), idx);
            return new List<Vector2>(ret);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_outline");

        public void remove_outline(int idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_11, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_outlines");

        public void clear_outlines()
        {
            NativeCalls.godot_icall_0_7(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "make_polygons_from_outlines");

        public void make_polygons_from_outlines()
        {
            NativeCalls.godot_icall_0_7(method_bind_13, Object.GetPtr(this));
        }
    }
}
