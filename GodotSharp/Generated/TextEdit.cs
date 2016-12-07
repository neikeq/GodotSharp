using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// TextEdit is meant for editing large, multiline text. It also has facilities for editing code, such as syntax highlighting support and multiple levels of undo/redo.
    /// </summary>
    public class TextEdit : Control
    {
        /// <summary>
        /// Match case when searching.
        /// </summary>
        public const int SEARCH_MATCH_CASE = 1;
        /// <summary>
        /// Match whole words when searching.
        /// </summary>
        public const int SEARCH_WHOLE_WORDS = 2;
        /// <summary>
        /// Search from end to beginning.
        /// </summary>
        public const int SEARCH_BACKWARDS = 4;
        public const int MENU_CUT = 0;
        public const int MENU_COPY = 1;
        public const int MENU_PASTE = 2;
        public const int MENU_CLEAR = 3;
        public const int MENU_SELECT_ALL = 4;
        public const int MENU_UNDO = 5;
        public const int MENU_MAX = 6;

        private const string nativeName = "TextEdit";

        public TextEdit() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_TextEdit_Ctor(this);
        }

        internal TextEdit(bool memoryOwn) : base(memoryOwn) {}

        ~TextEdit()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_text");

        /// <summary>
        /// Set the entire text.
        /// </summary>
        public void set_text(string text)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), text);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "insert_text_at_cursor");

        /// <summary>
        /// Insert a given text at the cursor position.
        /// </summary>
        public void insert_text_at_cursor(string text)
        {
            NativeCalls.godot_icall_1_18(method_bind_1, Object.GetPtr(this), text);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_line_count");

        /// <summary>
        /// Return the amount of total lines in the text.
        /// </summary>
        public int get_line_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_text");

        /// <summary>
        /// Return the whole text.
        /// </summary>
        public string get_text()
        {
            return NativeCalls.godot_icall_0_19(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_line");

        /// <summary>
        /// Return the text of a specific line.
        /// </summary>
        public string get_line(int line)
        {
            return NativeCalls.godot_icall_1_116(method_bind_4, Object.GetPtr(this), line);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cursor_set_column");

        public void cursor_set_column(int column, bool adjust_viewport = false)
        {
            NativeCalls.godot_icall_2_32(method_bind_5, Object.GetPtr(this), column, adjust_viewport);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cursor_set_line");

        public void cursor_set_line(int line, bool adjust_viewport = false)
        {
            NativeCalls.godot_icall_2_32(method_bind_6, Object.GetPtr(this), line, adjust_viewport);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cursor_get_column");

        /// <summary>
        /// Return the column the editing cursor is at.
        /// </summary>
        public int cursor_get_column()
        {
            return NativeCalls.godot_icall_0_0(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cursor_get_line");

        /// <summary>
        /// Return the line the editing cursor is at.
        /// </summary>
        public int cursor_get_line()
        {
            return NativeCalls.godot_icall_0_0(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cursor_set_blink_enabled");

        /// <summary>
        /// Set the text editor caret to blink.
        /// </summary>
        public void cursor_set_blink_enabled(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_9, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cursor_get_blink_enabled");

        /// <summary>
        /// Gets whether the text editor caret is blinking.
        /// </summary>
        public bool cursor_get_blink_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cursor_set_blink_speed");

        /// <summary>
        /// Set the text editor caret blink speed. Cannot be less then or equal to 0.
        /// </summary>
        public void cursor_set_blink_speed(float blink_speed)
        {
            NativeCalls.godot_icall_1_45(method_bind_11, Object.GetPtr(this), blink_speed);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cursor_get_blink_speed");

        /// <summary>
        /// Gets the text editor caret blink speed.
        /// </summary>
        public float cursor_get_blink_speed()
        {
            return NativeCalls.godot_icall_0_46(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cursor_set_block_mode");

        /// <summary>
        /// Set the text editor caret to block mode.
        /// </summary>
        public void cursor_set_block_mode(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_13, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cursor_is_block_mode");

        /// <summary>
        /// Gets whether the text editor caret is in block mode.
        /// </summary>
        public bool cursor_is_block_mode()
        {
            return NativeCalls.godot_icall_0_14(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_readonly");

        /// <summary>
        /// Set the text editor as read-only. Text can be displayed but not edited.
        /// </summary>
        public void set_readonly(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_15, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_wrap");

        /// <summary>
        /// Enable text wrapping when it goes beyond he edge of what is visible.
        /// </summary>
        public void set_wrap(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_16, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_max_chars");

        /// <summary>
        /// Set the maximum amount of characters editable.
        /// </summary>
        public void set_max_chars(int amount)
        {
            NativeCalls.godot_icall_1_4(method_bind_17, Object.GetPtr(this), amount);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cut");

        /// <summary>
        /// Cut the current selection.
        /// </summary>
        public void cut()
        {
            NativeCalls.godot_icall_0_7(method_bind_18, Object.GetPtr(this));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "copy");

        /// <summary>
        /// Copy the current selection.
        /// </summary>
        public void copy()
        {
            NativeCalls.godot_icall_0_7(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "paste");

        /// <summary>
        /// Paste the current selection.
        /// </summary>
        public void paste()
        {
            NativeCalls.godot_icall_0_7(method_bind_20, Object.GetPtr(this));
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "select_all");

        /// <summary>
        /// Select all the text.
        /// </summary>
        public void select_all()
        {
            NativeCalls.godot_icall_0_7(method_bind_21, Object.GetPtr(this));
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "select");

        /// <summary>
        /// Perform selection, from line/column to line/column.
        /// </summary>
        public void @select(int from_line, int from_column, int to_line, int to_column)
        {
            NativeCalls.godot_icall_4_254(method_bind_22, Object.GetPtr(this), from_line, from_column, to_line, to_column);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_selection_active");

        /// <summary>
        /// Return true if the selection is active.
        /// </summary>
        public bool is_selection_active()
        {
            return NativeCalls.godot_icall_0_14(method_bind_23, Object.GetPtr(this));
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_selection_from_line");

        /// <summary>
        /// Return the selection begin line.
        /// </summary>
        public int get_selection_from_line()
        {
            return NativeCalls.godot_icall_0_0(method_bind_24, Object.GetPtr(this));
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_selection_from_column");

        /// <summary>
        /// Return the selection begin column.
        /// </summary>
        public int get_selection_from_column()
        {
            return NativeCalls.godot_icall_0_0(method_bind_25, Object.GetPtr(this));
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_selection_to_line");

        /// <summary>
        /// Return the selection end line.
        /// </summary>
        public int get_selection_to_line()
        {
            return NativeCalls.godot_icall_0_0(method_bind_26, Object.GetPtr(this));
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_selection_to_column");

        /// <summary>
        /// Return the selection end column.
        /// </summary>
        public int get_selection_to_column()
        {
            return NativeCalls.godot_icall_0_0(method_bind_27, Object.GetPtr(this));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_selection_text");

        /// <summary>
        /// Return the text inside the selection.
        /// </summary>
        public string get_selection_text()
        {
            return NativeCalls.godot_icall_0_19(method_bind_28, Object.GetPtr(this));
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_word_under_cursor");

        public string get_word_under_cursor()
        {
            return NativeCalls.godot_icall_0_19(method_bind_29, Object.GetPtr(this));
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "search");

        /// <summary>
        /// Perform a search inside the text. Search flags can be specified in the SEARCH_* enum.
        /// </summary>
        public List<int> search(string flags, int from_line, int from_column, int to_line)
        {
            int[] ret = NativeCalls.godot_icall_4_479(method_bind_30, Object.GetPtr(this), flags, from_line, from_column, to_line);
            return new List<int>(ret);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "undo");

        /// <summary>
        /// Perform undo operation.
        /// </summary>
        public void undo()
        {
            NativeCalls.godot_icall_0_7(method_bind_31, Object.GetPtr(this));
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "redo");

        /// <summary>
        /// Perform redo operation.
        /// </summary>
        public void redo()
        {
            NativeCalls.godot_icall_0_7(method_bind_32, Object.GetPtr(this));
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_undo_history");

        /// <summary>
        /// Clear the undo history.
        /// </summary>
        public void clear_undo_history()
        {
            NativeCalls.godot_icall_0_7(method_bind_33, Object.GetPtr(this));
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_show_line_numbers");

        /// <summary>
        /// Set to enable showing line numbers.
        /// </summary>
        public void set_show_line_numbers(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_34, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_show_line_numbers_enabled");

        /// <summary>
        /// Returns true if line numbers are enabled.
        /// </summary>
        public bool is_show_line_numbers_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_35, Object.GetPtr(this));
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_highlight_all_occurrences");

        /// <summary>
        /// Set to enable highlighting all occurrences of the current selection.
        /// </summary>
        public void set_highlight_all_occurrences(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_36, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_highlight_all_occurrences_enabled");

        /// <summary>
        /// Returns true if highlight all occurrences is enabled.
        /// </summary>
        public bool is_highlight_all_occurrences_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_37, Object.GetPtr(this));
        }

        private IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_syntax_coloring");

        /// <summary>
        /// Set to enable the syntax coloring.
        /// </summary>
        public void set_syntax_coloring(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_38, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_syntax_coloring_enabled");

        /// <summary>
        /// Return true if the syntax coloring is enabled.
        /// </summary>
        public bool is_syntax_coloring_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_39, Object.GetPtr(this));
        }

        private IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_keyword_color");

        /// <summary>
        /// Add a keyword and its color.
        /// </summary>
        public void add_keyword_color(string keyword, Color color)
        {
            NativeCalls.godot_icall_2_179(method_bind_40, Object.GetPtr(this), keyword, ref color);
        }

        private IntPtr method_bind_41 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_color_region");

        /// <summary>
        /// Add color region (given the delimiters) and its colors.
        /// </summary>
        public void add_color_region(string begin_key, string end_key, Color color, bool line_only = false)
        {
            NativeCalls.godot_icall_4_480(method_bind_41, Object.GetPtr(this), begin_key, end_key, ref color, line_only);
        }

        private IntPtr method_bind_42 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_colors");

        /// <summary>
        /// Clear all the syntax coloring information.
        /// </summary>
        public void clear_colors()
        {
            NativeCalls.godot_icall_0_7(method_bind_42, Object.GetPtr(this));
        }

        private IntPtr method_bind_43 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "menu_option");

        public void menu_option(int arg0)
        {
            NativeCalls.godot_icall_1_4(method_bind_43, Object.GetPtr(this), arg0);
        }

        private IntPtr method_bind_44 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_menu");

        public PopupMenu get_menu()
        {
            return NativeCalls.godot_icall_0_274(method_bind_44, Object.GetPtr(this));
        }
    }
}
