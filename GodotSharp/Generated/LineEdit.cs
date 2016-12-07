using System;

namespace GodotEngine
{
    /// <summary>
    /// LineEdit provides a single line string editor, used for text fields.
    /// </summary>
    public class LineEdit : Control
    {
        public const int ALIGN_LEFT = 0;
        public const int ALIGN_CENTER = 1;
        public const int ALIGN_RIGHT = 2;
        public const int ALIGN_FILL = 3;
        public const int MENU_CUT = 0;
        public const int MENU_COPY = 1;
        public const int MENU_PASTE = 2;
        public const int MENU_CLEAR = 3;
        public const int MENU_SELECT_ALL = 4;
        public const int MENU_UNDO = 5;
        public const int MENU_MAX = 6;

        private const string nativeName = "LineEdit";

        public LineEdit() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_LineEdit_Ctor(this);
        }

        internal LineEdit(bool memoryOwn) : base(memoryOwn) {}

        ~LineEdit()
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

        public void set_align(int align)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), align);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_align");

        public int get_align()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        /// <summary>
        /// Clear the [LineEdit] text.
        /// </summary>
        public void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "select_all");

        /// <summary>
        /// Select the whole string.
        /// </summary>
        public void select_all()
        {
            NativeCalls.godot_icall_0_7(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_text");

        /// <summary>
        /// Set the text in the [LineEdit], clearing the existing one and the selection.
        /// </summary>
        public void set_text(string text)
        {
            NativeCalls.godot_icall_1_18(method_bind_4, Object.GetPtr(this), text);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_text");

        /// <summary>
        /// Return the text in the [LineEdit].
        /// </summary>
        public string get_text()
        {
            return NativeCalls.godot_icall_0_19(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_placeholder");

        public void set_placeholder(string text)
        {
            NativeCalls.godot_icall_1_18(method_bind_6, Object.GetPtr(this), text);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_placeholder");

        public string get_placeholder()
        {
            return NativeCalls.godot_icall_0_19(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_placeholder_alpha");

        public void set_placeholder_alpha(float alpha)
        {
            NativeCalls.godot_icall_1_45(method_bind_8, Object.GetPtr(this), alpha);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_placeholder_alpha");

        public float get_placeholder_alpha()
        {
            return NativeCalls.godot_icall_0_46(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_cursor_pos");

        /// <summary>
        /// Set the cursor position inside the [LineEdit], causing it to scroll if needed.
        /// </summary>
        public void set_cursor_pos(int pos)
        {
            NativeCalls.godot_icall_1_4(method_bind_10, Object.GetPtr(this), pos);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_cursor_pos");

        /// <summary>
        /// Return the cursor position inside the [LineEdit].
        /// </summary>
        public int get_cursor_pos()
        {
            return NativeCalls.godot_icall_0_0(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_expand_to_text_length");

        public void set_expand_to_text_length(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_12, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_expand_to_text_length");

        public bool get_expand_to_text_length()
        {
            return NativeCalls.godot_icall_0_14(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cursor_set_blink_enabled");

        /// <summary>
        /// Set the line edit caret to blink.
        /// </summary>
        public void cursor_set_blink_enabled(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_14, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cursor_get_blink_enabled");

        /// <summary>
        /// Gets whether the line edit caret is blinking.
        /// </summary>
        public bool cursor_get_blink_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cursor_set_blink_speed");

        /// <summary>
        /// Set the line edit caret blink speed. Cannot be less then or equal to 0.
        /// </summary>
        public void cursor_set_blink_speed(float blink_speed)
        {
            NativeCalls.godot_icall_1_45(method_bind_16, Object.GetPtr(this), blink_speed);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cursor_get_blink_speed");

        /// <summary>
        /// Gets the line edit caret blink speed.
        /// </summary>
        public float cursor_get_blink_speed()
        {
            return NativeCalls.godot_icall_0_46(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_max_length");

        /// <summary>
        /// Set the maximum amount of characters the [LineEdit] can edit, and cropping existing text in case it exceeds that limit. Setting 0 removes the limit.
        /// </summary>
        public void set_max_length(int chars)
        {
            NativeCalls.godot_icall_1_4(method_bind_18, Object.GetPtr(this), chars);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_max_length");

        /// <summary>
        /// Return the maximum amount of characters the [LineEdit] can edit. If 0 is returned, no limit exists.
        /// </summary>
        public int get_max_length()
        {
            return NativeCalls.godot_icall_0_0(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "append_at_cursor");

        /// <summary>
        /// Append text at cursor, scrolling the [LineEdit] when needed.
        /// </summary>
        public void append_at_cursor(string text)
        {
            NativeCalls.godot_icall_1_18(method_bind_20, Object.GetPtr(this), text);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_editable");

        /// <summary>
        /// Set the [i]editable[/i] status of the [LineEdit]. When disabled, existing text can't be modified and new text can't be added.
        /// </summary>
        public void set_editable(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_21, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_editable");

        /// <summary>
        /// Return the [i]editable[/i] status of the [LineEdit] (see [method set_editable]).
        /// </summary>
        public bool is_editable()
        {
            return NativeCalls.godot_icall_0_14(method_bind_22, Object.GetPtr(this));
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_secret");

        /// <summary>
        /// Set the [i]secret[/i] status of the [LineEdit]. When enabled, every character is displayed as "*".
        /// </summary>
        public void set_secret(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_23, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_secret");

        /// <summary>
        /// Return the [i]secret[/i] status of the [LineEdit] (see [method set_secret]).
        /// </summary>
        public bool is_secret()
        {
            return NativeCalls.godot_icall_0_14(method_bind_24, Object.GetPtr(this));
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "select");

        public void @select(int @from = 0, int to = -1)
        {
            NativeCalls.godot_icall_2_5(method_bind_25, Object.GetPtr(this), @from, to);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "menu_option");

        public void menu_option(int option)
        {
            NativeCalls.godot_icall_1_4(method_bind_26, Object.GetPtr(this), option);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_menu");

        public PopupMenu get_menu()
        {
            return NativeCalls.godot_icall_0_274(method_bind_27, Object.GetPtr(this));
        }
    }
}
