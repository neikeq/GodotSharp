using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class SceneState : Reference
    {
        private const string nativeName = "SceneState";

        internal SceneState() {}

        internal SceneState(bool memoryOwn) : base(memoryOwn) {}

        ~SceneState()
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
                    NativeCalls.godot_icall_SceneState_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_count");

        public int get_node_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_type");

        public string get_node_type(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_1, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_name");

        public string get_node_name(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_2, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_path");

        public NodePath get_node_path(int idx, bool for_parent = false)
        {
            IntPtr ret = NativeCalls.godot_icall_2_418(method_bind_3, Object.GetPtr(this), idx, for_parent);
            return new NodePath(ret);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_owner_path");

        public NodePath get_node_owner_path(int idx)
        {
            IntPtr ret = NativeCalls.godot_icall_1_29(method_bind_4, Object.GetPtr(this), idx);
            return new NodePath(ret);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_node_instance_placeholder");

        public bool is_node_instance_placeholder(int idx)
        {
            return NativeCalls.godot_icall_1_33(method_bind_5, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_instance_placeholder");

        public string get_node_instance_placeholder(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_6, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_instance");

        public PackedScene get_node_instance(int idx)
        {
            return NativeCalls.godot_icall_1_419(method_bind_7, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_groups");

        public List<string> get_node_groups(int idx)
        {
            string[] ret = NativeCalls.godot_icall_1_420(method_bind_8, Object.GetPtr(this), idx);
            return new List<string>(ret);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_property_count");

        public int get_node_property_count(int idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_9, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_property_name");

        public string get_node_property_name(int idx, int prop_idx)
        {
            return NativeCalls.godot_icall_2_43(method_bind_10, Object.GetPtr(this), idx, prop_idx);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_property_value");

        public void get_node_property_value(int idx, int prop_idx)
        {
            NativeCalls.godot_icall_2_5(method_bind_11, Object.GetPtr(this), idx, prop_idx);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connection_count");

        public int get_connection_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connection_source");

        public NodePath get_connection_source(int idx)
        {
            IntPtr ret = NativeCalls.godot_icall_1_29(method_bind_13, Object.GetPtr(this), idx);
            return new NodePath(ret);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connection_signal");

        public string get_connection_signal(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_14, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connection_target");

        public NodePath get_connection_target(int idx)
        {
            IntPtr ret = NativeCalls.godot_icall_1_29(method_bind_15, Object.GetPtr(this), idx);
            return new NodePath(ret);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connection_method");

        public string get_connection_method(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_16, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connection_flags");

        public int get_connection_flags(int idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_17, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connection_binds");

        public List<object> get_connection_binds(int idx)
        {
            object[] ret = NativeCalls.godot_icall_1_421(method_bind_18, Object.GetPtr(this), idx);
            return new List<object>(ret);
        }
    }
}
