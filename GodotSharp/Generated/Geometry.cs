using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public static class Geometry
    {
        private const string nativeName = "_Geometry";
        internal static IntPtr ptr = NativeCalls.godot_icall__Geometry_get_singleton();

        private static IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "build_box_planes");

        public static List<object> build_box_planes(Vector3 extents)
        {
            object[] ret = NativeCalls.godot_icall_1_571(method_bind_0, ptr, ref extents);
            return new List<object>(ret);
        }

        private static IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "build_cylinder_planes");

        public static List<object> build_cylinder_planes(float radius, float height, int sides, int axis = 2)
        {
            object[] ret = NativeCalls.godot_icall_4_572(method_bind_1, ptr, radius, height, sides, axis);
            return new List<object>(ret);
        }

        private static IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "build_capsule_planes");

        public static List<object> build_capsule_planes(float radius, float height, int sides, int lats, int axis = 2)
        {
            object[] ret = NativeCalls.godot_icall_5_573(method_bind_2, ptr, radius, height, sides, lats, axis);
            return new List<object>(ret);
        }

        private static IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "segment_intersects_circle");

        public static float segment_intersects_circle(Vector2 segment_from, Vector2 segment_to, Vector2 circle_pos, float circle_radius)
        {
            return NativeCalls.godot_icall_4_574(method_bind_3, ptr, ref segment_from, ref segment_to, ref circle_pos, circle_radius);
        }

        private static IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "segment_intersects_segment_2d");

        public static void segment_intersects_segment_2d(Vector2 from_a, Vector2 to_a, Vector2 from_b, Vector2 to_b)
        {
            NativeCalls.godot_icall_4_575(method_bind_4, ptr, ref from_a, ref to_a, ref from_b, ref to_b);
        }

        private static IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_closest_points_between_segments_2d");

        public static List<Vector2> get_closest_points_between_segments_2d(Vector2 p1, Vector2 q1, Vector2 p2, Vector2 q2)
        {
            Vector2[] ret = NativeCalls.godot_icall_4_576(method_bind_5, ptr, ref p1, ref q1, ref p2, ref q2);
            return new List<Vector2>(ret);
        }

        private static IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_closest_points_between_segments");

        public static List<Vector3> get_closest_points_between_segments(Vector3 p1, Vector3 p2, Vector3 q1, Vector3 q2)
        {
            Vector3[] ret = NativeCalls.godot_icall_4_577(method_bind_6, ptr, ref p1, ref p2, ref q1, ref q2);
            return new List<Vector3>(ret);
        }

        private static IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_closest_point_to_segment");

        public static Vector3 get_closest_point_to_segment(Vector3 point, Vector3 s1, Vector3 s2)
        {
            object ret = NativeCalls.godot_icall_3_578(method_bind_7, ptr, ref point, ref s1, ref s2);
            return (Vector3)ret;
        }

        private static IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_uv84_normal_bit");

        public static int get_uv84_normal_bit(Vector3 normal)
        {
            return NativeCalls.godot_icall_1_8(method_bind_8, ptr, ref normal);
        }

        private static IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "ray_intersects_triangle");

        public static void ray_intersects_triangle(Vector3 @from, Vector3 dir, Vector3 a, Vector3 b, Vector3 c)
        {
            NativeCalls.godot_icall_5_579(method_bind_9, ptr, ref @from, ref dir, ref a, ref b, ref c);
        }

        private static IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "segment_intersects_triangle");

        public static void segment_intersects_triangle(Vector3 @from, Vector3 to, Vector3 a, Vector3 b, Vector3 c)
        {
            NativeCalls.godot_icall_5_579(method_bind_10, ptr, ref @from, ref to, ref a, ref b, ref c);
        }

        private static IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "segment_intersects_sphere");

        public static List<Vector3> segment_intersects_sphere(Vector3 @from, Vector3 to, Vector3 spos, float sradius)
        {
            Vector3[] ret = NativeCalls.godot_icall_4_580(method_bind_11, ptr, ref @from, ref to, ref spos, sradius);
            return new List<Vector3>(ret);
        }

        private static IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "segment_intersects_cylinder");

        public static List<Vector3> segment_intersects_cylinder(Vector3 @from, Vector3 to, float height, float radius)
        {
            Vector3[] ret = NativeCalls.godot_icall_4_581(method_bind_12, ptr, ref @from, ref to, height, radius);
            return new List<Vector3>(ret);
        }

        private static IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "segment_intersects_convex");

        public static List<Vector3> segment_intersects_convex(Vector3 @from, Vector3 to, List<object> planes)
        {
            Vector3[] ret = NativeCalls.godot_icall_3_582(method_bind_13, ptr, ref @from, ref to, planes.ToArray());
            return new List<Vector3>(ret);
        }

        private static IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "point_is_inside_triangle");

        public static bool point_is_inside_triangle(Vector2 point, Vector2 a, Vector2 b, Vector2 c)
        {
            return NativeCalls.godot_icall_4_583(method_bind_14, ptr, ref point, ref a, ref b, ref c);
        }

        private static IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "triangulate_polygon");

        public static List<int> triangulate_polygon(List<Vector2> polygon)
        {
            int[] ret = NativeCalls.godot_icall_1_584(method_bind_15, ptr, polygon.ToArray());
            return new List<int>(ret);
        }

        private static IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "make_atlas");

        public static Dictionary<object, object> make_atlas(List<Vector2> sizes)
        {
            return NativeCalls.godot_icall_1_585(method_bind_16, ptr, sizes.ToArray());
        }
    }
}
