using System;

namespace GodotEngine
{
    /// <summary>
    /// A GraphNode is a container defined by a title. It can have 1 or more input and output slots, which can be enabled (shown) or disabled (not shown) and have different (incompatible) types. Colors can also be assigned to slots. A tuple of input and output slots is defined for each GUI element included in the GraphNode. Input and output connections are left and right slots, but only enabled slots are counted as connections.
    /// </summary>
    public class GraphNode : Container
    {
        public const int OVERLAY_DISABLED = 0;
        public const int OVERLAY_BREAKPOINT = 1;
        public const int OVERLAY_POSITION = 2;

        private const string nativeName = "GraphNode";

        public GraphNode() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_GraphNode_Ctor(this);
        }

        internal GraphNode(bool memoryOwn) : base(memoryOwn) {}

        ~GraphNode()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_title");

        /// <summary>
        /// Set the title of the GraphNode.
        /// </summary>
        public void set_title(string title)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), title);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_title");

        /// <summary>
        /// Return the title of the GraphNode.
        /// </summary>
        public string get_title()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_slot");

        public void set_slot(int idx, bool enable_left, int type_left, Color color_left, bool enable_right, int type_right, Color color_right, Object custom_left = null, Object custom_right = null)
        {
            NativeCalls.godot_icall_9_237(method_bind_2, Object.GetPtr(this), idx, enable_left, type_left, ref color_left, enable_right, type_right, ref color_right, Object.GetPtr(custom_left), Object.GetPtr(custom_right));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_slot");

        /// <summary>
        /// Disable input and output slot whose index is 'idx'.
        /// </summary>
        public void clear_slot(int idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_3, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_all_slots");

        /// <summary>
        /// Disable all input and output slots of the GraphNode.
        /// </summary>
        public void clear_all_slots()
        {
            NativeCalls.godot_icall_0_7(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_slot_enabled_left");

        /// <summary>
        /// Return true if left (input) slot 'idx' is enabled. False otherwise.
        /// </summary>
        public bool is_slot_enabled_left(int idx)
        {
            return NativeCalls.godot_icall_1_33(method_bind_5, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_slot_type_left");

        /// <summary>
        /// Return the (integer) type of left (input) 'idx' slot.
        /// </summary>
        public int get_slot_type_left(int idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_6, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_slot_color_left");

        /// <summary>
        /// Return the color set to 'idx' left (input) slot.
        /// </summary>
        public Color get_slot_color_left(int idx)
        {
            object ret = NativeCalls.godot_icall_1_161(method_bind_7, Object.GetPtr(this), idx);
            return (Color)ret;
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_slot_enabled_right");

        /// <summary>
        /// Return true if right (output) slot 'idx' is enabled. False otherwise.
        /// </summary>
        public bool is_slot_enabled_right(int idx)
        {
            return NativeCalls.godot_icall_1_33(method_bind_8, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_slot_type_right");

        /// <summary>
        /// Return the (integer) type of right (output) 'idx' slot.
        /// </summary>
        public int get_slot_type_right(int idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_9, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_slot_color_right");

        /// <summary>
        /// Return the color set to 'idx' right (output) slot.
        /// </summary>
        public Color get_slot_color_right(int idx)
        {
            object ret = NativeCalls.godot_icall_1_161(method_bind_10, Object.GetPtr(this), idx);
            return (Color)ret;
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_offset");

        /// <summary>
        /// Set the offset of the GraphNode.
        /// </summary>
        public void set_offset(Vector2 offset)
        {
            NativeCalls.godot_icall_1_23(method_bind_11, Object.GetPtr(this), ref offset);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_offset");

        /// <summary>
        /// Return the offset of the GraphNode.
        /// </summary>
        public Vector2 get_offset()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_12, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_comment");

        public void set_comment(bool comment)
        {
            NativeCalls.godot_icall_1_13(method_bind_13, Object.GetPtr(this), comment);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_comment");

        public bool is_comment()
        {
            return NativeCalls.godot_icall_0_14(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_resizeable");

        public void set_resizeable(bool resizeable)
        {
            NativeCalls.godot_icall_1_13(method_bind_15, Object.GetPtr(this), resizeable);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_resizeable");

        public bool is_resizeable()
        {
            return NativeCalls.godot_icall_0_14(method_bind_16, Object.GetPtr(this));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_selected");

        public void set_selected(bool selected)
        {
            NativeCalls.godot_icall_1_13(method_bind_17, Object.GetPtr(this), selected);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_selected");

        public bool is_selected()
        {
            return NativeCalls.godot_icall_0_14(method_bind_18, Object.GetPtr(this));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connection_output_count");

        /// <summary>
        /// Return the number of enabled output slots (connections) of the GraphNode.
        /// </summary>
        public int get_connection_output_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connection_input_count");

        /// <summary>
        /// Return the number of enabled input slots (connections) to the GraphNode.
        /// </summary>
        public int get_connection_input_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_20, Object.GetPtr(this));
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connection_output_pos");

        /// <summary>
        /// Return the position of the output connection 'idx'.
        /// </summary>
        public Vector2 get_connection_output_pos(int idx)
        {
            object ret = NativeCalls.godot_icall_1_191(method_bind_21, Object.GetPtr(this), idx);
            return (Vector2)ret;
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connection_output_type");

        /// <summary>
        /// Return the type of the output connection 'idx'.
        /// </summary>
        public int get_connection_output_type(int idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_22, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connection_output_color");

        /// <summary>
        /// Return the color of the output connection 'idx'.
        /// </summary>
        public Color get_connection_output_color(int idx)
        {
            object ret = NativeCalls.godot_icall_1_161(method_bind_23, Object.GetPtr(this), idx);
            return (Color)ret;
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connection_input_pos");

        /// <summary>
        /// Return the position of the input connection 'idx'.
        /// </summary>
        public Vector2 get_connection_input_pos(int idx)
        {
            object ret = NativeCalls.godot_icall_1_191(method_bind_24, Object.GetPtr(this), idx);
            return (Vector2)ret;
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connection_input_type");

        /// <summary>
        /// Return the type of the input connection 'idx'.
        /// </summary>
        public int get_connection_input_type(int idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_25, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connection_input_color");

        /// <summary>
        /// Return the color of the input connection 'idx'.
        /// </summary>
        public Color get_connection_input_color(int idx)
        {
            object ret = NativeCalls.godot_icall_1_161(method_bind_26, Object.GetPtr(this), idx);
            return (Color)ret;
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_modulate");

        public void set_modulate(Color color)
        {
            NativeCalls.godot_icall_1_25(method_bind_27, Object.GetPtr(this), ref color);
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_modulate");

        public Color get_modulate()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_28, Object.GetPtr(this));
            return (Color)ret;
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_show_close_button");

        /// <summary>
        /// Show the close button on the GraphNode if 'show' is true (disabled by default). If enabled, a connection on the signal close_request is needed for the close button to work.
        /// </summary>
        public void set_show_close_button(bool show)
        {
            NativeCalls.godot_icall_1_13(method_bind_29, Object.GetPtr(this), show);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_close_button_visible");

        /// <summary>
        /// Returns true if the close button is shown. False otherwise.
        /// </summary>
        public bool is_close_button_visible()
        {
            return NativeCalls.godot_icall_0_14(method_bind_30, Object.GetPtr(this));
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_overlay");

        public void set_overlay(int overlay)
        {
            NativeCalls.godot_icall_1_4(method_bind_31, Object.GetPtr(this), overlay);
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_overlay");

        public int get_overlay()
        {
            return NativeCalls.godot_icall_0_0(method_bind_32, Object.GetPtr(this));
        }
    }
}
