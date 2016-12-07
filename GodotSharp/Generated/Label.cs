using System;

namespace GodotEngine
{
    /// <summary>
    /// Label is a control that displays formatted text, optionally autowrapping it to the [Control] area. It inherits from range to be able to scroll wrapped text vertically.
    /// </summary>
    public class Label : Control
    {
        /// <summary>
        /// Align rows to the left (default).
        /// </summary>
        public const int ALIGN_LEFT = 0;
        /// <summary>
        /// Align rows centered.
        /// </summary>
        public const int ALIGN_CENTER = 1;
        /// <summary>
        /// Align rows to the right (default).
        /// </summary>
        public const int ALIGN_RIGHT = 2;
        /// <summary>
        /// Expand row whitespaces to fit the width.
        /// </summary>
        public const int ALIGN_FILL = 3;
        /// <summary>
        /// Align the whole text to the top.
        /// </summary>
        public const int VALIGN_TOP = 0;
        /// <summary>
        /// Align the whole text to the center.
        /// </summary>
        public const int VALIGN_CENTER = 1;
        /// <summary>
        /// Align the whole text to the bottom.
        /// </summary>
        public const int VALIGN_BOTTOM = 2;
        /// <summary>
        /// Align the whole text by spreading the rows.
        /// </summary>
        public const int VALIGN_FILL = 3;

        private const string nativeName = "Label";

        public Label() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Label_Ctor(this);
        }

        internal Label(bool memoryOwn) : base(memoryOwn) {}

        ~Label()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_align");

        /// <summary>
        /// Sets the alignment mode to any of the ALIGN_* enumeration values.
        /// </summary>
        public void set_align(int align)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), align);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_align");

        /// <summary>
        /// Return the alignment mode (any of the ALIGN_* enumeration values).
        /// </summary>
        public int get_align()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_valign");

        /// <summary>
        /// Sets the vertical alignment mode to any of the VALIGN_* enumeration values.
        /// </summary>
        public void set_valign(int valign)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), valign);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_valign");

        /// <summary>
        /// Return the vertical alignment mode (any of the VALIGN_* enumeration values).
        /// </summary>
        public int get_valign()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_text");

        /// <summary>
        /// Set the label text. Text can contain newlines.
        /// </summary>
        public void set_text(string text)
        {
            NativeCalls.godot_icall_1_18(method_bind_4, Object.GetPtr(this), text);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_text");

        /// <summary>
        /// Return the label text. Text can contain newlines.
        /// </summary>
        public string get_text()
        {
            return NativeCalls.godot_icall_0_19(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_autowrap");

        /// <summary>
        /// Set [i]autowrap[/i] mode. When enabled, autowrap will fit text to the control width, breaking sentences when they exceed the available horizontal space. When disabled, the label minimum width becomes the width of the longest row, and the minimum height large enough to fit all rows.
        /// </summary>
        public void set_autowrap(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_6, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_autowrap");

        /// <summary>
        /// Return the state of the [i]autowrap[/i] mode (see [method set_autowrap]).
        /// </summary>
        public bool has_autowrap()
        {
            return NativeCalls.godot_icall_0_14(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_clip_text");

        /// <summary>
        /// Cuts off the rest of the text if it is too wide.
        /// </summary>
        public void set_clip_text(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_8, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_clipping_text");

        /// <summary>
        /// Return true if text would be cut off if it is too wide.
        /// </summary>
        public bool is_clipping_text()
        {
            return NativeCalls.godot_icall_0_14(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_uppercase");

        /// <summary>
        /// Display text in all capitals.
        /// </summary>
        public void set_uppercase(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_10, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_uppercase");

        /// <summary>
        /// Return true if text is displayed in all capitals.
        /// </summary>
        public bool is_uppercase()
        {
            return NativeCalls.godot_icall_0_14(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_line_height");

        /// <summary>
        /// Return the height of a line.
        /// </summary>
        public int get_line_height()
        {
            return NativeCalls.godot_icall_0_0(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_line_count");

        /// <summary>
        /// Return the amount of lines.
        /// </summary>
        public int get_line_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_visible_line_count");

        public int get_visible_line_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_total_character_count");

        /// <summary>
        /// Return the total length of the text.
        /// </summary>
        public int get_total_character_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_visible_characters");

        /// <summary>
        /// Restricts the number of characters to display. Set to -1 to disable.
        /// </summary>
        public void set_visible_characters(int amount)
        {
            NativeCalls.godot_icall_1_4(method_bind_16, Object.GetPtr(this), amount);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_visible_characters");

        /// <summary>
        /// Return the restricted number of characters to display. Returns -1 if unrestricted.
        /// </summary>
        public int get_visible_characters()
        {
            return NativeCalls.godot_icall_0_0(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_percent_visible");

        /// <summary>
        /// Restricts the number of characters to display (as a percentage of the total text).
        /// </summary>
        public void set_percent_visible(float percent_visible)
        {
            NativeCalls.godot_icall_1_45(method_bind_18, Object.GetPtr(this), percent_visible);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_percent_visible");

        /// <summary>
        /// Return the restricted number of characters to display (as a percentage of the total text).
        /// </summary>
        public float get_percent_visible()
        {
            return NativeCalls.godot_icall_0_46(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_lines_skipped");

        /// <summary>
        /// Sets the number of lines to skip before displaying. Useful for scrolling text.
        /// </summary>
        public void set_lines_skipped(int lines_skipped)
        {
            NativeCalls.godot_icall_1_4(method_bind_20, Object.GetPtr(this), lines_skipped);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_lines_skipped");

        /// <summary>
        /// Return the the number of lines to skipped before displaying.
        /// </summary>
        public int get_lines_skipped()
        {
            return NativeCalls.godot_icall_0_0(method_bind_21, Object.GetPtr(this));
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_max_lines_visible");

        /// <summary>
        /// Restricts the number of lines to display. Set to -1 to disable.
        /// </summary>
        public void set_max_lines_visible(int lines_visible)
        {
            NativeCalls.godot_icall_1_4(method_bind_22, Object.GetPtr(this), lines_visible);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_max_lines_visible");

        /// <summary>
        /// Return the restricted number of lines to display. Returns -1 if unrestricted.
        /// </summary>
        public int get_max_lines_visible()
        {
            return NativeCalls.godot_icall_0_0(method_bind_23, Object.GetPtr(this));
        }
    }
}
