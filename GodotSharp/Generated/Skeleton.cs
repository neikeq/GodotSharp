using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Skeleton provides a hierarchical interface for managing bones, including pose, rest and animation (see [Animation]). Skeleton will support rag doll dynamics in the future.
    /// </summary>
    public class Skeleton : Spatial
    {
        public const int NOTIFICATION_UPDATE_SKELETON = 50;

        private const string nativeName = "Skeleton";

        public Skeleton() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Skeleton_Ctor(this);
        }

        internal Skeleton(bool memoryOwn) : base(memoryOwn) {}

        ~Skeleton()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_bone");

        /// <summary>
        /// Add a bone, with name "name". [method get_bone_count] will become the bone index.
        /// </summary>
        public void add_bone(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "find_bone");

        /// <summary>
        /// Return the bone index that matches "name" as its name.
        /// </summary>
        public int find_bone(string name)
        {
            return NativeCalls.godot_icall_1_63(method_bind_1, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bone_name");

        /// <summary>
        /// Return the name of the bone at index "index"
        /// </summary>
        public string get_bone_name(int bone_idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_2, Object.GetPtr(this), bone_idx);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bone_parent");

        /// <summary>
        /// Return the bone index which is the parent of the bone at "bone_idx". If -1, then bone has no parent. Note that the parent bone returned will always be less than "bone_idx".
        /// </summary>
        public int get_bone_parent(int bone_idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_3, Object.GetPtr(this), bone_idx);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bone_parent");

        /// <summary>
        /// Set the bone index "parent_idx" as the parent of the bone at "bone_idx". If -1, then bone has no parent. Note: "parent_idx" must be less than "bone_idx".
        /// </summary>
        public void set_bone_parent(int bone_idx, int parent_idx)
        {
            NativeCalls.godot_icall_2_5(method_bind_4, Object.GetPtr(this), bone_idx, parent_idx);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bone_count");

        /// <summary>
        /// Return the amount of bones in the skeleton.
        /// </summary>
        public int get_bone_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "unparent_bone_and_rest");

        public void unparent_bone_and_rest(int bone_idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_6, Object.GetPtr(this), bone_idx);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bone_rest");

        /// <summary>
        /// Return the rest transform for a bone "bone_idx".
        /// </summary>
        public Transform get_bone_rest(int bone_idx)
        {
            object ret = NativeCalls.godot_icall_1_151(method_bind_7, Object.GetPtr(this), bone_idx);
            return (Transform)ret;
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bone_rest");

        /// <summary>
        /// Set the rest transform for bone "bone_idx"
        /// </summary>
        public void set_bone_rest(int bone_idx, Transform rest)
        {
            NativeCalls.godot_icall_2_149(method_bind_8, Object.GetPtr(this), bone_idx, ref rest);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bone_disable_rest");

        public void set_bone_disable_rest(int bone_idx, bool disable)
        {
            NativeCalls.godot_icall_2_32(method_bind_9, Object.GetPtr(this), bone_idx, disable);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_bone_rest_disabled");

        public bool is_bone_rest_disabled(int bone_idx)
        {
            return NativeCalls.godot_icall_1_33(method_bind_10, Object.GetPtr(this), bone_idx);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "bind_child_node_to_bone");

        /// <summary>
        /// Deprecated soon.
        /// </summary>
        public void bind_child_node_to_bone(int bone_idx, Node node)
        {
            NativeCalls.godot_icall_2_208(method_bind_11, Object.GetPtr(this), bone_idx, Object.GetPtr(node));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "unbind_child_node_from_bone");

        /// <summary>
        /// Deprecated soon.
        /// </summary>
        public void unbind_child_node_from_bone(int bone_idx, Node node)
        {
            NativeCalls.godot_icall_2_208(method_bind_12, Object.GetPtr(this), bone_idx, Object.GetPtr(node));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bound_child_nodes_to_bone");

        /// <summary>
        /// Deprecated soon.
        /// </summary>
        public List<object> get_bound_child_nodes_to_bone(int bone_idx)
        {
            object[] ret = NativeCalls.godot_icall_1_421(method_bind_13, Object.GetPtr(this), bone_idx);
            return new List<object>(ret);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_bones");

        /// <summary>
        /// Clear all the bones in this skeleton.
        /// </summary>
        public void clear_bones()
        {
            NativeCalls.godot_icall_0_7(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bone_pose");

        /// <summary>
        /// Return the pose transform for bone "bone_idx".
        /// </summary>
        public Transform get_bone_pose(int bone_idx)
        {
            object ret = NativeCalls.godot_icall_1_151(method_bind_15, Object.GetPtr(this), bone_idx);
            return (Transform)ret;
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bone_pose");

        /// <summary>
        /// Return the pose transform for bone "bone_idx".
        /// </summary>
        public void set_bone_pose(int bone_idx, Transform pose)
        {
            NativeCalls.godot_icall_2_149(method_bind_16, Object.GetPtr(this), bone_idx, ref pose);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bone_global_pose");

        public void set_bone_global_pose(int bone_idx, Transform pose)
        {
            NativeCalls.godot_icall_2_149(method_bind_17, Object.GetPtr(this), bone_idx, ref pose);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bone_global_pose");

        public Transform get_bone_global_pose(int bone_idx)
        {
            object ret = NativeCalls.godot_icall_1_151(method_bind_18, Object.GetPtr(this), bone_idx);
            return (Transform)ret;
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bone_custom_pose");

        public Transform get_bone_custom_pose(int bone_idx)
        {
            object ret = NativeCalls.godot_icall_1_151(method_bind_19, Object.GetPtr(this), bone_idx);
            return (Transform)ret;
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bone_custom_pose");

        public void set_bone_custom_pose(int bone_idx, Transform custom_pose)
        {
            NativeCalls.godot_icall_2_149(method_bind_20, Object.GetPtr(this), bone_idx, ref custom_pose);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bone_transform");

        public Transform get_bone_transform(int bone_idx)
        {
            object ret = NativeCalls.godot_icall_1_151(method_bind_21, Object.GetPtr(this), bone_idx);
            return (Transform)ret;
        }
    }
}
