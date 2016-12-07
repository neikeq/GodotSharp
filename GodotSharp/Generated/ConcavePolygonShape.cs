using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Concave polygon shape resource, which can be set into a [PhysicsBody] or area. This shape is created by feeding a list of triangles.
    /// </summary>
    public class ConcavePolygonShape : Shape
    {
        private const string nativeName = "ConcavePolygonShape";

        public ConcavePolygonShape() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ConcavePolygonShape_Ctor(this);
        }

        internal ConcavePolygonShape(bool memoryOwn) : base(memoryOwn) {}

        ~ConcavePolygonShape()
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
                    NativeCalls.godot_icall_ConcavePolygonShape_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_faces");

        /// <summary>
        /// Set the faces (an array of triangles).
        /// </summary>
        public void set_faces(List<Vector3> faces)
        {
            NativeCalls.godot_icall_1_167(method_bind_0, Object.GetPtr(this), faces.ToArray());
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_faces");

        /// <summary>
        /// Return the faces (an array of triangles).
        /// </summary>
        public List<Vector3> get_faces()
        {
            Vector3[] ret = NativeCalls.godot_icall_0_168(method_bind_1, Object.GetPtr(this));
            return new List<Vector3>(ret);
        }
    }
}
