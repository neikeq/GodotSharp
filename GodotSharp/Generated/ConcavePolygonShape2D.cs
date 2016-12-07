using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Concave polygon 2D shape resource for physics. It is made out of segments and is very optimal for complex polygonal concave collisions. It is really not advised to use for [RigidBody2D] nodes. A CollisionPolygon2D in convex decomposition mode (solids) or several convex objects are advised for that instead. Otherwise, a concave polygon 2D shape is better for static collisions.
    /// The main difference between a [ConvexPolygonShape2D] and a [ConcavePolygonShape2D] is that a concave polygon assumes it is concave and uses a more complex method of collision detection, and a convex one forces itself to be convex in order to speed up collision detection.
    /// </summary>
    public class ConcavePolygonShape2D : Shape2D
    {
        private const string nativeName = "ConcavePolygonShape2D";

        public ConcavePolygonShape2D() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ConcavePolygonShape2D_Ctor(this);
        }

        internal ConcavePolygonShape2D(bool memoryOwn) : base(memoryOwn) {}

        ~ConcavePolygonShape2D()
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
                    NativeCalls.godot_icall_ConcavePolygonShape2D_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_segments");

        /// <summary>
        /// Set the array of segments.
        /// </summary>
        public void set_segments(List<Vector2> segments)
        {
            NativeCalls.godot_icall_1_156(method_bind_0, Object.GetPtr(this), segments.ToArray());
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_segments");

        /// <summary>
        /// Return the array of segments.
        /// </summary>
        public List<Vector2> get_segments()
        {
            Vector2[] ret = NativeCalls.godot_icall_0_157(method_bind_1, Object.GetPtr(this));
            return new List<Vector2>(ret);
        }
    }
}
