using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class AStar : Reference
    {
        private const string nativeName = "AStar";

        public AStar() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_AStar_Ctor(this);
        }

        internal AStar(bool memoryOwn) : base(memoryOwn) {}

        ~AStar()
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
                    NativeCalls.godot_icall_AStar_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_available_point_id");

        public int get_available_point_id()
        {
            return NativeCalls.godot_icall_0_0(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_point");

        public void add_point(int id, Vector3 pos, float weight_scale = 1f)
        {
            NativeCalls.godot_icall_3_1(method_bind_1, Object.GetPtr(this), id, ref pos, weight_scale);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_point_pos");

        public Vector3 get_point_pos(int id)
        {
            object ret = NativeCalls.godot_icall_1_2(method_bind_2, Object.GetPtr(this), id);
            return (Vector3)ret;
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_point_weight_scale");

        public float get_point_weight_scale(int id)
        {
            return NativeCalls.godot_icall_1_3(method_bind_3, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_point");

        public void remove_point(int id)
        {
            NativeCalls.godot_icall_1_4(method_bind_4, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "connect_points");

        public void connect_points(int id, int to_id)
        {
            NativeCalls.godot_icall_2_5(method_bind_5, Object.GetPtr(this), id, to_id);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "disconnect_points");

        public void disconnect_points(int id, int to_id)
        {
            NativeCalls.godot_icall_2_5(method_bind_6, Object.GetPtr(this), id, to_id);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "are_points_connected");

        public bool are_points_connected(int id, int to_id)
        {
            return NativeCalls.godot_icall_2_6(method_bind_7, Object.GetPtr(this), id, to_id);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        public void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_closest_point");

        public int get_closest_point(Vector3 to_pos)
        {
            return NativeCalls.godot_icall_1_8(method_bind_9, Object.GetPtr(this), ref to_pos);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_closest_pos_in_segment");

        public Vector3 get_closest_pos_in_segment(Vector3 to_pos)
        {
            object ret = NativeCalls.godot_icall_1_9(method_bind_10, Object.GetPtr(this), ref to_pos);
            return (Vector3)ret;
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_point_path");

        public List<Vector3> get_point_path(int from_id, int to_id)
        {
            Vector3[] ret = NativeCalls.godot_icall_2_10(method_bind_11, Object.GetPtr(this), from_id, to_id);
            return new List<Vector3>(ret);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_id_path");

        public List<int> get_id_path(int from_id, int to_id)
        {
            int[] ret = NativeCalls.godot_icall_2_11(method_bind_12, Object.GetPtr(this), from_id, to_id);
            return new List<int>(ret);
        }
    }
}
