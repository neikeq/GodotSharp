using System;

namespace GodotEngine
{
    public class ImmediateGeometry : GeometryInstance
    {
        private const string nativeName = "ImmediateGeometry";

        public ImmediateGeometry() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ImmediateGeometry_Ctor(this);
        }

        internal ImmediateGeometry(bool memoryOwn) : base(memoryOwn) {}

        ~ImmediateGeometry()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "begin");

        /// <summary>
        /// Begin drawing (And optionally pass a texture override). When done call end(). For more information on how this works, search for glBegin() glEnd() references.
        /// For the type of primitive, use the [Mesh].PRIMITIVE_* enumerations.
        /// </summary>
        public void begin(int primitive, Texture texture = null)
        {
            NativeCalls.godot_icall_2_115(method_bind_0, Object.GetPtr(this), primitive, Object.GetPtr(texture));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_normal");

        /// <summary>
        /// Set the normal that the next vertex will use to be drawn.
        /// </summary>
        public void set_normal(Vector3 normal)
        {
            NativeCalls.godot_icall_1_76(method_bind_1, Object.GetPtr(this), ref normal);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_tangent");

        /// <summary>
        /// Set the tangent (and binormal facing) that the next vertex will use to be drawn.
        /// </summary>
        public void set_tangent(Plane tangent)
        {
            NativeCalls.godot_icall_1_257(method_bind_2, Object.GetPtr(this), ref tangent);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_color");

        /// <summary>
        /// Set the color that the next vertex will use to be drawn.
        /// </summary>
        public void set_color(Color color)
        {
            NativeCalls.godot_icall_1_25(method_bind_3, Object.GetPtr(this), ref color);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_uv");

        /// <summary>
        /// Set the UV that the next vertex will use to be drawn.
        /// </summary>
        public void set_uv(Vector2 uv)
        {
            NativeCalls.godot_icall_1_23(method_bind_4, Object.GetPtr(this), ref uv);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_uv2");

        /// <summary>
        /// Set the second layer of UV that the next vertex will use to be drawn.
        /// </summary>
        public void set_uv2(Vector2 uv)
        {
            NativeCalls.godot_icall_1_23(method_bind_5, Object.GetPtr(this), ref uv);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_vertex");

        /// <summary>
        /// Add a vertex with the currently set color/uv/etc.
        /// </summary>
        public void add_vertex(Vector3 pos)
        {
            NativeCalls.godot_icall_1_76(method_bind_6, Object.GetPtr(this), ref pos);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_sphere");

        /// <summary>
        /// Simple helper to draw an uvsphere, with given latitudes, longitude and radius.
        /// </summary>
        public void add_sphere(int lats, int lons, float radius, bool add_uv = true)
        {
            NativeCalls.godot_icall_4_258(method_bind_7, Object.GetPtr(this), lats, lons, radius, add_uv);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "end");

        /// <summary>
        /// Call this when done adding a batch of geometry, otherwise it can't be displayed.
        /// </summary>
        public void end()
        {
            NativeCalls.godot_icall_0_7(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        /// <summary>
        /// Clear everything that was drawn using begin/end.
        /// </summary>
        public void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_9, Object.GetPtr(this));
        }
    }
}
