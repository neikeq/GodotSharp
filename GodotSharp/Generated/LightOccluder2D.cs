using System;

namespace GodotEngine
{
    /// <summary>
    /// Occludes light cast by a Light2D, thus casting shadows. The LightOccluder2D must be provided with a shape (see OccluderPolygon2D) that allows the shadow to be computed. This shape affects the resulting shadow, while the shape of the representating asset shadowed does not actually affect shadows.
    /// </summary>
    public class LightOccluder2D : Node2D
    {
        private const string nativeName = "LightOccluder2D";

        public LightOccluder2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_LightOccluder2D_Ctor(this);
        }

        internal LightOccluder2D(bool memoryOwn) : base(memoryOwn) {}

        ~LightOccluder2D()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_occluder_polygon");

        /// <summary>
        /// Set the OccluderPolygon2D that defines the LightOccluder2D.
        /// </summary>
        public void set_occluder_polygon(OccluderPolygon2D polygon)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(polygon));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_occluder_polygon");

        /// <summary>
        /// Return the OccluderPolygon2D that defines the LightOccluder2D.
        /// </summary>
        public OccluderPolygon2D get_occluder_polygon()
        {
            return NativeCalls.godot_icall_0_273(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_occluder_light_mask");

        /// <summary>
        /// Set the LightOccluder2D light mask. The LightOccluder2D will cast shadows only from Light2Ds that belong to the same light mask(s).
        /// </summary>
        public void set_occluder_light_mask(int mask)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), mask);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_occluder_light_mask");

        /// <summary>
        /// Return the light mask of the LightOccluder2D.
        /// </summary>
        public int get_occluder_light_mask()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }
    }
}
