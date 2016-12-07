using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class RoomBounds : Resource
    {
        private const string nativeName = "RoomBounds";

        public RoomBounds() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_RoomBounds_Ctor(this);
        }

        internal RoomBounds(bool memoryOwn) : base(memoryOwn) {}

        ~RoomBounds()
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
                    NativeCalls.godot_icall_RoomBounds_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bounds");

        public void set_bounds(Dictionary<object, object> bsp_tree)
        {
            NativeCalls.godot_icall_1_219(method_bind_0, Object.GetPtr(this), bsp_tree);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bounds");

        public Dictionary<object, object> get_bounds()
        {
            return NativeCalls.godot_icall_0_249(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_geometry_hint");

        public void set_geometry_hint(List<Vector3> triangles)
        {
            NativeCalls.godot_icall_1_167(method_bind_2, Object.GetPtr(this), triangles.ToArray());
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_geometry_hint");

        public List<Vector3> get_geometry_hint()
        {
            Vector3[] ret = NativeCalls.godot_icall_0_168(method_bind_3, Object.GetPtr(this));
            return new List<Vector3>(ret);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "regenerate_bsp");

        public void regenerate_bsp()
        {
            NativeCalls.godot_icall_0_7(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "regenerate_bsp_cubic");

        public void regenerate_bsp_cubic()
        {
            NativeCalls.godot_icall_0_7(method_bind_5, Object.GetPtr(this));
        }
    }
}
