using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// GraphEdit manages the showing of GraphNodes it contains, as well as connections an disconnections between them. Signals are sent for each of these two events. Disconnection between GraphNodes slots is disabled by default.
    /// It is greatly advised to enable low processor usage mode (see [method OS.set_low_processor_usage_mode]) when using GraphEdits.
    /// </summary>
    public class GraphEdit : Control
    {
        private const string nativeName = "GraphEdit";

        public GraphEdit() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_GraphEdit_Ctor(this);
        }

        internal GraphEdit(bool memoryOwn) : base(memoryOwn) {}

        ~GraphEdit()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "connect_node");

        /// <summary>
        /// Create a connection between 'from_port' slot of 'from' GraphNode and 'to_port' slot of 'to' GraphNode. If the connection already exists, no connection is created.
        /// </summary>
        public Error connect_node(string @from, int from_port, string to, int to_port)
        {
            int ret = NativeCalls.godot_icall_4_234(method_bind_0, Object.GetPtr(this), @from, from_port, to, to_port);
            return (Error)ret;
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_node_connected");

        /// <summary>
        /// Return true if the 'from_port' slot of 'from' GraphNode is connected to the 'to_port' slot of 'to' GraphNode.
        /// </summary>
        public bool is_node_connected(string @from, int from_port, string to, int to_port)
        {
            return NativeCalls.godot_icall_4_235(method_bind_1, Object.GetPtr(this), @from, from_port, to, to_port);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "disconnect_node");

        /// <summary>
        /// Remove the connection between 'from_port' slot of 'from' GraphNode and 'to_port' slot of 'to' GraphNode, if connection exists.
        /// </summary>
        public void disconnect_node(string @from, int from_port, string to, int to_port)
        {
            NativeCalls.godot_icall_4_236(method_bind_2, Object.GetPtr(this), @from, from_port, to, to_port);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connection_list");

        /// <summary>
        /// Return an Array containing the list of connections. A connection consists in a structure of the form {from_slot: 0, from: "GraphNode name 0", to_slot: 1, to: "GraphNode name 1" }
        /// </summary>
        public List<object> get_connection_list()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_3, Object.GetPtr(this));
            return new List<object>(ret);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_scroll_ofs");

        /// <summary>
        /// Return the scroll offset.
        /// </summary>
        public Vector2 get_scroll_ofs()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_4, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_scroll_ofs");

        public void set_scroll_ofs(Vector2 ofs)
        {
            NativeCalls.godot_icall_1_23(method_bind_5, Object.GetPtr(this), ref ofs);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_zoom");

        /// <summary>
        /// Set the zoom value of the GraphEdit. Zoom value is between [0.01; 1.728].
        /// </summary>
        public void set_zoom(float p_zoom)
        {
            NativeCalls.godot_icall_1_45(method_bind_6, Object.GetPtr(this), p_zoom);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_zoom");

        /// <summary>
        /// Return the current zoom value.
        /// </summary>
        public float get_zoom()
        {
            return NativeCalls.godot_icall_0_46(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_snap");

        public void set_snap(int pixels)
        {
            NativeCalls.godot_icall_1_4(method_bind_8, Object.GetPtr(this), pixels);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_snap");

        public int get_snap()
        {
            return NativeCalls.godot_icall_0_0(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_use_snap");

        public void set_use_snap(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_10, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_using_snap");

        public bool is_using_snap()
        {
            return NativeCalls.godot_icall_0_14(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_right_disconnects");

        /// <summary>
        /// Enable the disconnection of existing connections in the visual GraphEdit by left-clicking a connection and releasing into the void.
        /// </summary>
        public void set_right_disconnects(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_12, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_right_disconnects_enabled");

        /// <summary>
        /// Return true is the disconnection of connections is enable in the visual GraphEdit. False otherwise.
        /// </summary>
        public bool is_right_disconnects_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_selected");

        public void set_selected(Object node)
        {
            NativeCalls.godot_icall_1_20(method_bind_14, Object.GetPtr(this), Object.GetPtr(node));
        }
    }
}
