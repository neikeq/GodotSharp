using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Convex polygon shape resource, which can be set into a [PhysicsBody] or area.
    /// </summary>
    public class ConvexPolygonShape : Shape
    {
        private const string nativeName = "ConvexPolygonShape";

        public ConvexPolygonShape() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ConvexPolygonShape_Ctor(this);
        }

        internal ConvexPolygonShape(bool memoryOwn) : base(memoryOwn) {}

        ~ConvexPolygonShape()
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
                    NativeCalls.godot_icall_ConvexPolygonShape_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_points");

        public void set_points(List<Vector3> points)
        {
            NativeCalls.godot_icall_1_167(method_bind_0, Object.GetPtr(this), points.ToArray());
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_points");

        public List<Vector3> get_points()
        {
            Vector3[] ret = NativeCalls.godot_icall_0_168(method_bind_1, Object.GetPtr(this));
            return new List<Vector3>(ret);
        }
    }
}
