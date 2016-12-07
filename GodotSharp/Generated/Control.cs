using System;

namespace GodotEngine
{
    /// <summary>
    /// Control is the base class Node for all the GUI components. Every GUI component inherits from it, directly or indirectly. In this way, sections of the scene tree made of contiguous control nodes, become user interfaces.
    /// Controls are relative to the parent position and size by using anchors and margins. This ensures that they can adapt easily in most situation to changing dialog and screen sizes. When more flexibility is desired, [Container] derived nodes can be used.
    /// Anchors work by defining which margin do they follow, and a value relative to it. Allowed anchoring modes are ANCHOR_BEGIN, where the margin is relative to the top or left margins of the parent (in pixels), ANCHOR_END for the right and bottom margins of the parent and ANCHOR_RATIO, which is a ratio from 0 to 1 in the parent range.
    /// Input device events ([InputEvent]) are first sent to the root controls via the [method Node._input], which distribute it through the tree, then delivers them to the adequate one (under cursor or keyboard focus based) by calling [method MainLoop._input_event]. There is no need to enable input processing on controls to receive such events. To ensure that no one else will receive the event (not even [method Node._unhandled_input]), the control can accept it by calling [method accept_event].
    /// Only one control can hold the keyboard focus (receiving keyboard events), for that the control must define the focus mode with [method set_focus_mode]. Focus is lost when another control gains it, or the current focus owner is hidden.
    /// It is sometimes desired for a control to ignore mouse/pointer events. This is often the case when placing other controls on top of a button, in such cases. Calling [method set_ignore_mouse] enables this function.
    /// Finally, controls are skinned according to a [Theme]. Setting a [Theme] on a control will propagate all the skinning down the tree. Optionally, skinning can be overridden per each control by calling the add_*_override functions, or from the editor.
    /// </summary>
    public class Control : CanvasItem
    {
        /// <summary>
        /// X is relative to MARGIN_LEFT, Y is relative to MARGIN_TOP.
        /// </summary>
        public const int ANCHOR_BEGIN = 0;
        /// <summary>
        /// X is relative to -MARGIN_RIGHT, Y is relative to -MARGIN_BOTTOM.
        /// </summary>
        public const int ANCHOR_END = 1;
        /// <summary>
        /// X and Y are a ratio (0 to 1) relative to the parent size 0 is left/top, 1 is right/bottom.
        /// </summary>
        public const int ANCHOR_RATIO = 2;
        public const int ANCHOR_CENTER = 3;
        /// <summary>
        /// Control can't acquire focus.
        /// </summary>
        public const int FOCUS_NONE = 0;
        /// <summary>
        /// Control can acquire focus only if clicked.
        /// </summary>
        public const int FOCUS_CLICK = 1;
        /// <summary>
        /// Control can acquire focus if clicked, or by pressing TAB/Directionals in the keyboard from another Control.
        /// </summary>
        public const int FOCUS_ALL = 2;
        /// <summary>
        /// Control changed size (get_size() reports the new size).
        /// </summary>
        public const int NOTIFICATION_RESIZED = 40;
        /// <summary>
        /// Mouse pointer entered the area of the Control.
        /// </summary>
        public const int NOTIFICATION_MOUSE_ENTER = 41;
        /// <summary>
        /// Mouse pointer exited the area of the Control.
        /// </summary>
        public const int NOTIFICATION_MOUSE_EXIT = 42;
        /// <summary>
        /// Control gained focus.
        /// </summary>
        public const int NOTIFICATION_FOCUS_ENTER = 43;
        /// <summary>
        /// Control lost focus.
        /// </summary>
        public const int NOTIFICATION_FOCUS_EXIT = 44;
        /// <summary>
        /// Theme changed. Redrawing is desired.
        /// </summary>
        public const int NOTIFICATION_THEME_CHANGED = 45;
        /// <summary>
        /// Modal control was closed.
        /// </summary>
        public const int NOTIFICATION_MODAL_CLOSE = 46;
        public const int CURSOR_ARROW = 0;
        public const int CURSOR_IBEAM = 1;
        public const int CURSOR_POINTING_HAND = 2;
        public const int CURSOR_CROSS = 3;
        public const int CURSOR_WAIT = 4;
        public const int CURSOR_BUSY = 5;
        public const int CURSOR_DRAG = 6;
        public const int CURSOR_CAN_DROP = 7;
        public const int CURSOR_FORBIDDEN = 8;
        public const int CURSOR_VSIZE = 9;
        public const int CURSOR_HSIZE = 10;
        public const int CURSOR_BDIAGSIZE = 11;
        public const int CURSOR_FDIAGSIZE = 12;
        public const int CURSOR_MOVE = 13;
        public const int CURSOR_VSPLIT = 14;
        public const int CURSOR_HSPLIT = 15;
        public const int CURSOR_HELP = 16;
        public const int SIZE_EXPAND = 1;
        public const int SIZE_FILL = 2;
        public const int SIZE_EXPAND_FILL = 3;

        private const string nativeName = "Control";

        public Control() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Control_Ctor(this);
        }

        internal Control(bool memoryOwn) : base(memoryOwn) {}

        ~Control()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "accept_event");

        /// <summary>
        /// Handles the event, no other control will receive it and it will not be sent to nodes waiting on [method Node._unhandled_input] or [method Node._unhandled_key_input].
        /// </summary>
        public void accept_event()
        {
            NativeCalls.godot_icall_0_7(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_minimum_size");

        /// <summary>
        /// Return the minimum size this Control can shrink to. A control will never be displayed or resized smaller than its minimum size.
        /// </summary>
        public Vector2 get_minimum_size()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_1, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_combined_minimum_size");

        public Vector2 get_combined_minimum_size()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_2, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_anchor");

        /// <summary>
        /// Change the anchor (ANCHOR_BEGIN, ANCHOR_END, ANCHOR_RATIO) type for a margin (MARGIN_LEFT, MARGIN_TOP, MARGIN_RIGHT, MARGIN_BOTTOM). Changing the anchor mode converts the current margin offset from the previous anchor mode to the new one, so margin offsets ([method set_margin]) must be done after setting anchors, or at the same time ([method set_anchor_and_margin])
        /// Additionally, [code]keep_margin[/code] controls whether margins should be left the same, or changed to keep the same position and size on-screen.
        /// </summary>
        public void set_anchor(int margin, int anchor_mode, bool keep_margin = false)
        {
            NativeCalls.godot_icall_3_176(method_bind_3, Object.GetPtr(this), margin, anchor_mode, keep_margin);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_anchor");

        /// <summary>
        /// Return the anchor type (ANCHOR_BEGIN, ANCHOR_END, ANCHOR_RATIO) for a given margin (MARGIN_LEFT, MARGIN_TOP, MARGIN_RIGHT, MARGIN_BOTTOM).
        /// </summary>
        public int get_anchor(int margin)
        {
            return NativeCalls.godot_icall_1_28(method_bind_4, Object.GetPtr(this), margin);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_margin");

        /// <summary>
        /// Set a margin offset. Margin can be one of (MARGIN_LEFT, MARGIN_TOP, MARGIN_RIGHT, MARGIN_BOTTOM). Offset value being set depends on the anchor mode.
        /// </summary>
        public void set_margin(int margin, float offset)
        {
            NativeCalls.godot_icall_2_36(method_bind_5, Object.GetPtr(this), margin, offset);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_anchor_and_margin");

        /// <summary>
        /// Change the anchor (ANCHOR_BEGIN, ANCHOR_END, ANCHOR_RATIO) type for a margin (MARGIN_LEFT, MARGIN_TOP, MARGIN_RIGHT, MARGIN_BOTTOM), and also set its offset. This is a helper (see [method set_anchor] and [method set_margin]).
        /// </summary>
        public void set_anchor_and_margin(int margin, int anchor_mode, float offset)
        {
            NativeCalls.godot_icall_3_38(method_bind_6, Object.GetPtr(this), margin, anchor_mode, offset);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_begin");

        /// <summary>
        /// Sets MARGIN_LEFT and MARGIN_TOP at the same time. This is a helper (see [method set_margin]).
        /// </summary>
        public void set_begin(Vector2 pos)
        {
            NativeCalls.godot_icall_1_23(method_bind_7, Object.GetPtr(this), ref pos);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_end");

        /// <summary>
        /// Sets MARGIN_RIGHT and MARGIN_BOTTOM at the same time. This is a helper (see [method set_margin]).
        /// </summary>
        public void set_end(Vector2 pos)
        {
            NativeCalls.godot_icall_1_23(method_bind_8, Object.GetPtr(this), ref pos);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_pos");

        /// <summary>
        /// Move the Control to a new position, relative to the top-left corner of the parent Control, changing all margins if needed and without changing current anchor mode. This is a helper (see [method set_margin]).
        /// </summary>
        public void set_pos(Vector2 pos)
        {
            NativeCalls.godot_icall_1_23(method_bind_9, Object.GetPtr(this), ref pos);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_size");

        /// <summary>
        /// Changes MARGIN_RIGHT and MARGIN_BOTTOM to fit a given size. This is a helper (see [method set_margin]).
        /// </summary>
        public void set_size(Vector2 size)
        {
            NativeCalls.godot_icall_1_23(method_bind_10, Object.GetPtr(this), ref size);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_custom_minimum_size");

        public void set_custom_minimum_size(Vector2 size)
        {
            NativeCalls.godot_icall_1_23(method_bind_11, Object.GetPtr(this), ref size);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_global_pos");

        /// <summary>
        /// Move the Control to a new position, relative to the top-left corner of the [i]window[/i] Control, and without changing current anchor mode. (see [method set_margin]).
        /// </summary>
        public void set_global_pos(Vector2 pos)
        {
            NativeCalls.godot_icall_1_23(method_bind_12, Object.GetPtr(this), ref pos);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_rotation");

        public void set_rotation(float radians)
        {
            NativeCalls.godot_icall_1_45(method_bind_13, Object.GetPtr(this), radians);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_rotation_deg");

        public void set_rotation_deg(float degrees)
        {
            NativeCalls.godot_icall_1_45(method_bind_14, Object.GetPtr(this), degrees);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_scale");

        public void set_scale(Vector2 scale)
        {
            NativeCalls.godot_icall_1_23(method_bind_15, Object.GetPtr(this), ref scale);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_margin");

        /// <summary>
        /// Return a margin offset. Margin can be one of (MARGIN_LEFT, MARGIN_TOP, MARGIN_RIGHT, MARGIN_BOTTOM). Offset value being returned depends on the anchor mode.
        /// </summary>
        public float get_margin(int margin)
        {
            return NativeCalls.godot_icall_1_3(method_bind_16, Object.GetPtr(this), margin);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_begin");

        public Vector2 get_begin()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_17, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_end");

        /// <summary>
        /// Returns MARGIN_LEFT and MARGIN_TOP at the same time. This is a helper (see [method set_margin]).
        /// </summary>
        public Vector2 get_end()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_18, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pos");

        /// <summary>
        /// Returns the Control position, relative to the top-left corner of the parent Control and independent of the anchor mode.
        /// </summary>
        public Vector2 get_pos()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_19, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_size");

        /// <summary>
        /// Returns the size of the Control, computed from all margins, however the size returned will [b]never be smaller than the minimum size reported by [method get_minimum_size][/b]. This means that even if end position of the Control rectangle is smaller than the begin position, the Control will still display and interact correctly. (see description, [method get_minimum_size], [method set_margin], [method set_anchor]).
        /// </summary>
        public Vector2 get_size()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_20, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rotation");

        public float get_rotation()
        {
            return NativeCalls.godot_icall_0_46(method_bind_21, Object.GetPtr(this));
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rotation_deg");

        public float get_rotation_deg()
        {
            return NativeCalls.godot_icall_0_46(method_bind_22, Object.GetPtr(this));
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_scale");

        public Vector2 get_scale()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_23, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_custom_minimum_size");

        public Vector2 get_custom_minimum_size()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_24, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_parent_area_size");

        public Vector2 get_parent_area_size()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_25, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_global_pos");

        /// <summary>
        /// Returns the Control position, relative to the top-left corner of the parent Control and independent of the anchor mode.
        /// </summary>
        public Vector2 get_global_pos()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_26, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rect");

        /// <summary>
        /// Return position and size of the Control, relative to the top-left corner of the parent Control. This is a helper (see [method get_pos], [method get_size]).
        /// </summary>
        public Rect2 get_rect()
        {
            object ret = NativeCalls.godot_icall_0_82(method_bind_27, Object.GetPtr(this));
            return (Rect2)ret;
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_global_rect");

        /// <summary>
        /// Return position and size of the Control, relative to the top-left corner of the [i]window[/i] Control. This is a helper (see [method get_global_pos], [method get_size]).
        /// </summary>
        public Rect2 get_global_rect()
        {
            object ret = NativeCalls.godot_icall_0_82(method_bind_28, Object.GetPtr(this));
            return (Rect2)ret;
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_area_as_parent_rect");

        /// <summary>
        /// Change all margins and anchors, so this Control always takes up the same area as the parent Control. This is a helper (see [method set_anchor], [method set_margin]).
        /// </summary>
        public void set_area_as_parent_rect(int margin = 0)
        {
            NativeCalls.godot_icall_1_4(method_bind_29, Object.GetPtr(this), margin);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "show_modal");

        /// <summary>
        /// Display a Control as modal. Control must be a subwindow. Modal controls capture the input signals until closed or the area outside them is accessed. When a modal control loses focus, or the ESC key is pressed, they automatically hide. Modal controls are used extensively for popup dialogs and menus.
        /// </summary>
        public void show_modal(bool exclusive = false)
        {
            NativeCalls.godot_icall_1_13(method_bind_30, Object.GetPtr(this), exclusive);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_focus_mode");

        /// <summary>
        /// Set the focus access mode for the control (FOCUS_NONE, FOCUS_CLICK, FOCUS_ALL). Only one Control can be focused at the same time, and it will receive keyboard signals.
        /// </summary>
        public void set_focus_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_31, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_focus_mode");

        /// <summary>
        /// Returns the focus access mode for the control (FOCUS_NONE, FOCUS_CLICK, FOCUS_ALL) (see [method set_focus_mode]).
        /// </summary>
        public int get_focus_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_32, Object.GetPtr(this));
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_focus");

        /// <summary>
        /// Return whether the Control is the current focused control (see [method set_focus_mode]).
        /// </summary>
        public bool has_focus()
        {
            return NativeCalls.godot_icall_0_14(method_bind_33, Object.GetPtr(this));
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "grab_focus");

        /// <summary>
        /// Steal the focus from another control and become the focused control (see [method set_focus_mode]).
        /// </summary>
        public void grab_focus()
        {
            NativeCalls.godot_icall_0_7(method_bind_34, Object.GetPtr(this));
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "release_focus");

        /// <summary>
        /// Give up the focus, no other control will be able to receive keyboard input.
        /// </summary>
        public void release_focus()
        {
            NativeCalls.godot_icall_0_7(method_bind_35, Object.GetPtr(this));
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_focus_owner");

        /// <summary>
        /// Return which control is owning the keyboard focus, or null if no one.
        /// </summary>
        public Control get_focus_owner()
        {
            return NativeCalls.godot_icall_0_177(method_bind_36, Object.GetPtr(this));
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_h_size_flags");

        /// <summary>
        /// Hint for containers, set horizontal positioning flags.
        /// </summary>
        public void set_h_size_flags(int flags)
        {
            NativeCalls.godot_icall_1_4(method_bind_37, Object.GetPtr(this), flags);
        }

        private IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_h_size_flags");

        /// <summary>
        /// Hint for containers, return horizontal positioning flags.
        /// </summary>
        public int get_h_size_flags()
        {
            return NativeCalls.godot_icall_0_0(method_bind_38, Object.GetPtr(this));
        }

        private IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_stretch_ratio");

        /// <summary>
        /// Hint for containers, set the stretch ratio. This value is relative to other stretch ratio, so if this control has 2 and another has 1, this one will be twice as big.
        /// </summary>
        public void set_stretch_ratio(float ratio)
        {
            NativeCalls.godot_icall_1_45(method_bind_39, Object.GetPtr(this), ratio);
        }

        private IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stretch_ratio");

        /// <summary>
        /// Hint for containers, return the stretch ratio. This value is relative to other stretch ratio, so if this control has 2 and another has 1, this one will be twice as big.
        /// </summary>
        public float get_stretch_ratio()
        {
            return NativeCalls.godot_icall_0_46(method_bind_40, Object.GetPtr(this));
        }

        private IntPtr method_bind_41 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_v_size_flags");

        /// <summary>
        /// Hint for containers, set vertical positioning flags.
        /// </summary>
        public void set_v_size_flags(int flags)
        {
            NativeCalls.godot_icall_1_4(method_bind_41, Object.GetPtr(this), flags);
        }

        private IntPtr method_bind_42 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_v_size_flags");

        /// <summary>
        /// Hint for containers, return vertical positioning flags.
        /// </summary>
        public int get_v_size_flags()
        {
            return NativeCalls.godot_icall_0_0(method_bind_42, Object.GetPtr(this));
        }

        private IntPtr method_bind_43 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_theme");

        /// <summary>
        /// Override whole the [Theme] for this Control and all its children controls.
        /// </summary>
        public void set_theme(Theme theme)
        {
            NativeCalls.godot_icall_1_21(method_bind_43, Object.GetPtr(this), Object.GetPtr(theme));
        }

        private IntPtr method_bind_44 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_theme");

        /// <summary>
        /// Return a [Theme] override, if one exists (see [method set_theme]).
        /// </summary>
        public Theme get_theme()
        {
            return NativeCalls.godot_icall_0_178(method_bind_44, Object.GetPtr(this));
        }

        private IntPtr method_bind_45 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_icon_override");

        /// <summary>
        /// Override a single icon ([Texture]) in the theme of this Control. If texture is empty, override is cleared.
        /// </summary>
        public void add_icon_override(string name, Texture texture)
        {
            NativeCalls.godot_icall_2_65(method_bind_45, Object.GetPtr(this), name, Object.GetPtr(texture));
        }

        private IntPtr method_bind_46 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_shader_override");

        public void add_shader_override(string name, Shader shader)
        {
            NativeCalls.godot_icall_2_65(method_bind_46, Object.GetPtr(this), name, Object.GetPtr(shader));
        }

        private IntPtr method_bind_47 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_style_override");

        /// <summary>
        /// Override a single stylebox ([Stylebox]) in the theme of this Control. If stylebox is empty, override is cleared.
        /// </summary>
        public void add_style_override(string name, StyleBox stylebox)
        {
            NativeCalls.godot_icall_2_65(method_bind_47, Object.GetPtr(this), name, Object.GetPtr(stylebox));
        }

        private IntPtr method_bind_48 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_font_override");

        /// <summary>
        /// Override a single font (font) in the theme of this Control. If font is empty, override is cleared.
        /// </summary>
        public void add_font_override(string name, Font font)
        {
            NativeCalls.godot_icall_2_65(method_bind_48, Object.GetPtr(this), name, Object.GetPtr(font));
        }

        private IntPtr method_bind_49 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_color_override");

        public void add_color_override(string name, Color color)
        {
            NativeCalls.godot_icall_2_179(method_bind_49, Object.GetPtr(this), name, ref color);
        }

        private IntPtr method_bind_50 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_constant_override");

        /// <summary>
        /// Override a single constant (integer) in the theme of this Control. If constant equals Theme.INVALID_CONSTANT, override is cleared.
        /// </summary>
        public void add_constant_override(string name, int constant)
        {
            NativeCalls.godot_icall_2_71(method_bind_50, Object.GetPtr(this), name, constant);
        }

        private IntPtr method_bind_51 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_icon");

        public Texture get_icon(string name, string type = "")
        {
            return NativeCalls.godot_icall_2_180(method_bind_51, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_52 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stylebox");

        public StyleBox get_stylebox(string name, string type = "")
        {
            return NativeCalls.godot_icall_2_181(method_bind_52, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_53 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_font");

        public Font get_font(string name, string type = "")
        {
            return NativeCalls.godot_icall_2_182(method_bind_53, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_54 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_color");

        public Color get_color(string name, string type = "")
        {
            object ret = NativeCalls.godot_icall_2_183(method_bind_54, Object.GetPtr(this), name, type);
            return (Color)ret;
        }

        private IntPtr method_bind_55 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_constant");

        public int get_constant(string name, string type = "")
        {
            return NativeCalls.godot_icall_2_62(method_bind_55, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_56 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_icon_override");

        public bool has_icon_override(string name)
        {
            return NativeCalls.godot_icall_1_49(method_bind_56, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_57 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_stylebox_override");

        public bool has_stylebox_override(string name)
        {
            return NativeCalls.godot_icall_1_49(method_bind_57, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_58 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_font_override");

        public bool has_font_override(string name)
        {
            return NativeCalls.godot_icall_1_49(method_bind_58, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_59 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_color_override");

        public bool has_color_override(string name)
        {
            return NativeCalls.godot_icall_1_49(method_bind_59, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_60 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_constant_override");

        public bool has_constant_override(string name)
        {
            return NativeCalls.godot_icall_1_49(method_bind_60, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_61 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_icon");

        public bool has_icon(string name, string type = "")
        {
            return NativeCalls.godot_icall_2_171(method_bind_61, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_62 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_stylebox");

        public bool has_stylebox(string name, string type = "")
        {
            return NativeCalls.godot_icall_2_171(method_bind_62, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_63 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_font");

        public bool has_font(string name, string type = "")
        {
            return NativeCalls.godot_icall_2_171(method_bind_63, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_64 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_color");

        public bool has_color(string name, string type = "")
        {
            return NativeCalls.godot_icall_2_171(method_bind_64, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_65 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_constant");

        public bool has_constant(string name, string type = "")
        {
            return NativeCalls.godot_icall_2_171(method_bind_65, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_66 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_parent_control");

        public Control get_parent_control()
        {
            return NativeCalls.godot_icall_0_177(method_bind_66, Object.GetPtr(this));
        }

        private IntPtr method_bind_67 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_tooltip");

        /// <summary>
        /// Set a tooltip, which will appear when the cursor is resting over this control.
        /// </summary>
        public void set_tooltip(string tooltip)
        {
            NativeCalls.godot_icall_1_18(method_bind_67, Object.GetPtr(this), tooltip);
        }

        private IntPtr method_bind_68 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_tooltip");

        /// <summary>
        /// Return the tooltip, which will appear when the cursor is resting over this control.
        /// <param name="atpos">If the param is null, then the default value is new Vector2(0, 0)</param>
        /// </summary>
        public string get_tooltip(Nullable<Vector2> atpos = null)
        {
            Vector2 atpos_in = atpos.HasValue ? atpos.Value : new Vector2(0, 0);
            return NativeCalls.godot_icall_1_184(method_bind_68, Object.GetPtr(this), ref atpos_in);
        }

        private IntPtr method_bind_69 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_default_cursor_shape");

        /// <summary>
        /// Set the default cursor shape for this control. See enum CURSOR_* for the list of shapes.
        /// </summary>
        public void set_default_cursor_shape(int shape)
        {
            NativeCalls.godot_icall_1_4(method_bind_69, Object.GetPtr(this), shape);
        }

        private IntPtr method_bind_70 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_cursor_shape");

        /// <summary>
        /// Return the default cursor shape for this control. See enum CURSOR_* for the list of shapes.
        /// </summary>
        public int get_default_cursor_shape()
        {
            return NativeCalls.godot_icall_0_0(method_bind_70, Object.GetPtr(this));
        }

        private IntPtr method_bind_71 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_cursor_shape");

        /// <summary>
        /// Return the cursor shape at a certain position in the control.
        /// <param name="pos">If the param is null, then the default value is new Vector2(0, 0)</param>
        /// </summary>
        public int get_cursor_shape(Nullable<Vector2> pos = null)
        {
            Vector2 pos_in = pos.HasValue ? pos.Value : new Vector2(0, 0);
            return NativeCalls.godot_icall_1_185(method_bind_71, Object.GetPtr(this), ref pos_in);
        }

        private IntPtr method_bind_72 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_focus_neighbour");

        /// <summary>
        /// Force a neighbour for moving the input focus to. When pressing TAB or directional/joypad directions focus is moved to the next control in that direction. However, the neighbour to move to can be forced with this function.
        /// </summary>
        public void set_focus_neighbour(int margin, NodePath neighbour)
        {
            NativeCalls.godot_icall_2_30(method_bind_72, Object.GetPtr(this), margin, NodePath.GetPtr(neighbour));
        }

        private IntPtr method_bind_73 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_focus_neighbour");

        /// <summary>
        /// Return the forced neighbour for moving the input focus to. When pressing TAB or directional/joypad directions focus is moved to the next control in that direction. However, the neighbour to move to can be forced with this function.
        /// </summary>
        public NodePath get_focus_neighbour(int margin)
        {
            IntPtr ret = NativeCalls.godot_icall_1_29(method_bind_73, Object.GetPtr(this), margin);
            return new NodePath(ret);
        }

        private IntPtr method_bind_74 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_ignore_mouse");

        /// <summary>
        /// Ignore mouse events on this control (even touchpad events send mouse events).
        /// </summary>
        public void set_ignore_mouse(bool ignore)
        {
            NativeCalls.godot_icall_1_13(method_bind_74, Object.GetPtr(this), ignore);
        }

        private IntPtr method_bind_75 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_ignoring_mouse");

        /// <summary>
        /// Return if the control is ignoring mouse events (even touchpad events send mouse events).
        /// </summary>
        public bool is_ignoring_mouse()
        {
            return NativeCalls.godot_icall_0_14(method_bind_75, Object.GetPtr(this));
        }

        private IntPtr method_bind_76 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "force_drag");

        public void force_drag(object data, Object preview)
        {
            NativeCalls.godot_icall_2_186(method_bind_76, Object.GetPtr(this), data, Object.GetPtr(preview));
        }

        private IntPtr method_bind_77 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_stop_mouse");

        public void set_stop_mouse(bool stop)
        {
            NativeCalls.godot_icall_1_13(method_bind_77, Object.GetPtr(this), stop);
        }

        private IntPtr method_bind_78 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_stopping_mouse");

        public bool is_stopping_mouse()
        {
            return NativeCalls.godot_icall_0_14(method_bind_78, Object.GetPtr(this));
        }

        private IntPtr method_bind_79 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "grab_click_focus");

        public void grab_click_focus()
        {
            NativeCalls.godot_icall_0_7(method_bind_79, Object.GetPtr(this));
        }

        private IntPtr method_bind_80 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_drag_forwarding");

        public void set_drag_forwarding(Control target)
        {
            NativeCalls.godot_icall_1_20(method_bind_80, Object.GetPtr(this), Object.GetPtr(target));
        }

        private IntPtr method_bind_81 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_drag_preview");

        public void set_drag_preview(Control control)
        {
            NativeCalls.godot_icall_1_20(method_bind_81, Object.GetPtr(this), Object.GetPtr(control));
        }

        private IntPtr method_bind_82 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "warp_mouse");

        public void warp_mouse(Vector2 to_pos)
        {
            NativeCalls.godot_icall_1_23(method_bind_82, Object.GetPtr(this), ref to_pos);
        }

        private IntPtr method_bind_83 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "minimum_size_changed");

        public void minimum_size_changed()
        {
            NativeCalls.godot_icall_0_7(method_bind_83, Object.GetPtr(this));
        }
    }
}
