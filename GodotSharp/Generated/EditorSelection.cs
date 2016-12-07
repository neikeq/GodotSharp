using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// This object manages the SceneTree selection in the editor.
    /// </summary>
    public class EditorSelection : Object
    {
        private const string nativeName = "EditorSelection";

        public EditorSelection() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_EditorSelection_Ctor(this);
        }

        internal EditorSelection(bool memoryOwn) : base(memoryOwn) {}

        ~EditorSelection()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        /// <summary>
        /// Clear the selection.
        /// </summary>
        public void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_node");

        /// <summary>
        /// Add a node to the selection.
        /// </summary>
        public void add_node(Node node)
        {
            NativeCalls.godot_icall_1_20(method_bind_1, Object.GetPtr(this), Object.GetPtr(node));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_node");

        /// <summary>
        /// Remove a node from the selection.
        /// </summary>
        public void remove_node(Node node)
        {
            NativeCalls.godot_icall_1_20(method_bind_2, Object.GetPtr(this), Object.GetPtr(node));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_selected_nodes");

        /// <summary>
        /// Get the list of selectes nodes.
        /// </summary>
        public List<object> get_selected_nodes()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_3, Object.GetPtr(this));
            return new List<object>(ret);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_transformable_selected_nodes");

        /// <summary>
        /// Get the list of selected nodes, optimized for transform operations (ie, moving them, rotating, etc). This list avoids situations where a node is selected and also chid/grandchild.
        /// </summary>
        public List<object> get_transformable_selected_nodes()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_4, Object.GetPtr(this));
            return new List<object>(ret);
        }
    }
}
