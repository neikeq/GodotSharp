using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class OccluderPolygon2D : Resource
    {
        public const int CULL_DISABLED = 0;
        public const int CULL_CLOCKWISE = 1;
        public const int CULL_COUNTER_CLOCKWISE = 2;

        private const string nativeName = "OccluderPolygon2D";

        public OccluderPolygon2D() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_OccluderPolygon2D_Ctor(this);
        }

        internal OccluderPolygon2D(bool memoryOwn) : base(memoryOwn) {}

        ~OccluderPolygon2D()
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
                    NativeCalls.godot_icall_OccluderPolygon2D_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_closed");

        public void set_closed(bool closed)
        {
            NativeCalls.godot_icall_1_13(method_bind_0, Object.GetPtr(this), closed);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_closed");

        public bool is_closed()
        {
            return NativeCalls.godot_icall_0_14(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_cull_mode");

        public void set_cull_mode(int cull_mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), cull_mode);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_cull_mode");

        public int get_cull_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_polygon");

        public void set_polygon(List<Vector2> polygon)
        {
            NativeCalls.godot_icall_1_156(method_bind_4, Object.GetPtr(this), polygon.ToArray());
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_polygon");

        public List<Vector2> get_polygon()
        {
            Vector2[] ret = NativeCalls.godot_icall_0_157(method_bind_5, Object.GetPtr(this));
            return new List<Vector2>(ret);
        }
    }
}
