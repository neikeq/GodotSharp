using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Convex Polygon Shape for 2D physics. A convex polygon, whatever its shape, is internally decomposed into as many convex polygons as needed to ensure all collision checks against it are always done on convex polygons (which are faster to check).
    /// The main difference between a [ConvexPolygonShape2D] and a [ConcavePolygonShape2D] is that a concave polygon assumes it is concave and uses a more complex method of collision detection, and a convex one forces itself to be convex in order to speed up collision detection.
    /// </summary>
    public class ConvexPolygonShape2D : Shape2D
    {
        private const string nativeName = "ConvexPolygonShape2D";

        public ConvexPolygonShape2D() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ConvexPolygonShape2D_Ctor(this);
        }

        internal ConvexPolygonShape2D(bool memoryOwn) : base(memoryOwn) {}

        ~ConvexPolygonShape2D()
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
                    NativeCalls.godot_icall_ConvexPolygonShape2D_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_point_cloud");

        /// <summary>
        /// Currently, this method does nothing.
        /// </summary>
        public void set_point_cloud(List<Vector2> point_cloud)
        {
            NativeCalls.godot_icall_1_156(method_bind_0, Object.GetPtr(this), point_cloud.ToArray());
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_points");

        /// <summary>
        /// Set a list of points in either clockwise or counter clockwise order, forming a convex polygon.
        /// </summary>
        public void set_points(List<Vector2> points)
        {
            NativeCalls.godot_icall_1_156(method_bind_1, Object.GetPtr(this), points.ToArray());
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_points");

        /// <summary>
        /// Return a list of points in either clockwise or counter clockwise order, forming a convex polygon.
        /// </summary>
        public List<Vector2> get_points()
        {
            Vector2[] ret = NativeCalls.godot_icall_0_157(method_bind_2, Object.GetPtr(this));
            return new List<Vector2>(ret);
        }
    }
}
