using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class CollisionPolygon : Spatial
    {
        private const string nativeName = "CollisionPolygon";

        public CollisionPolygon() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_CollisionPolygon_Ctor(this);
        }

        internal CollisionPolygon(bool memoryOwn) : base(memoryOwn) {}

        ~CollisionPolygon()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_build_mode");

        public void set_build_mode(int build_mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), build_mode);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_build_mode");

        public int get_build_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_depth");

        public void set_depth(float depth)
        {
            NativeCalls.godot_icall_1_45(method_bind_2, Object.GetPtr(this), depth);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_depth");

        public float get_depth()
        {
            return NativeCalls.godot_icall_0_46(method_bind_3, Object.GetPtr(this));
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

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_object_first_shape");

        public int get_collision_object_first_shape()
        {
            return NativeCalls.godot_icall_0_0(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_object_last_shape");

        public int get_collision_object_last_shape()
        {
            return NativeCalls.godot_icall_0_0(method_bind_7, Object.GetPtr(this));
        }
    }
}
