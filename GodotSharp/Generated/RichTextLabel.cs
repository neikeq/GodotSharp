using System;

namespace GodotEngine
{
    /// <summary>
    /// Label that displays rich text. Rich text can contain custom text, fonts, images and some basic formatting. It also adapts itself to given width/heights.
    /// </summary>
    public class RichTextLabel : Control
    {
        public const int ALIGN_LEFT = 0;
        public const int ALIGN_CENTER = 1;
        public const int ALIGN_RIGHT = 2;
        public const int ALIGN_FILL = 3;
        public const int LIST_NUMBERS = 0;
        public const int LIST_LETTERS = 1;
        public const int LIST_DOTS = 2;
        public const int ITEM_FRAME = 0;
        public const int ITEM_TEXT = 1;
        public const int ITEM_IMAGE = 2;
        public const int ITEM_NEWLINE = 3;
        public const int ITEM_FONT = 4;
        public const int ITEM_COLOR = 5;
        public const int ITEM_UNDERLINE = 6;
        public const int ITEM_ALIGN = 7;
        public const int ITEM_INDENT = 8;
        public const int ITEM_LIST = 9;
        public const int ITEM_META = 11;

        private const string nativeName = "RichTextLabel";

        public RichTextLabel() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_RichTextLabel_Ctor(this);
        }

        internal RichTextLabel(bool memoryOwn) : base(memoryOwn) {}

        ~RichTextLabel()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_text");

        /// <summary>
        /// Returns the raw text, stripping out the formatting information.
        /// </summary>
        public string get_text()
        {
            return NativeCalls.godot_icall_0_19(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_text");

        public void add_text(string text)
        {
            NativeCalls.godot_icall_1_18(method_bind_1, Object.GetPtr(this), text);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_image");

        public void add_image(Texture image)
        {
            NativeCalls.godot_icall_1_21(method_bind_2, Object.GetPtr(this), Object.GetPtr(image));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "newline");

        public void newline()
        {
            NativeCalls.godot_icall_0_7(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "push_font");

        public void push_font(Object font)
        {
            NativeCalls.godot_icall_1_20(method_bind_4, Object.GetPtr(this), Object.GetPtr(font));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "push_color");

        public void push_color(Color color)
        {
            NativeCalls.godot_icall_1_25(method_bind_5, Object.GetPtr(this), ref color);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "push_align");

        public void push_align(int align)
        {
            NativeCalls.godot_icall_1_4(method_bind_6, Object.GetPtr(this), align);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "push_indent");

        public void push_indent(int level)
        {
            NativeCalls.godot_icall_1_4(method_bind_7, Object.GetPtr(this), level);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "push_list");

        public void push_list(int type)
        {
            NativeCalls.godot_icall_1_4(method_bind_8, Object.GetPtr(this), type);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "push_meta");

        public void push_meta(object data)
        {
            NativeCalls.godot_icall_1_125(method_bind_9, Object.GetPtr(this), data);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "push_underline");

        public void push_underline()
        {
            NativeCalls.godot_icall_0_7(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "push_table");

        public void push_table(int columns)
        {
            NativeCalls.godot_icall_1_4(method_bind_11, Object.GetPtr(this), columns);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_table_column_expand");

        public void set_table_column_expand(int column, bool expand, int ratio)
        {
            NativeCalls.godot_icall_3_410(method_bind_12, Object.GetPtr(this), column, expand, ratio);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "push_cell");

        public void push_cell()
        {
            NativeCalls.godot_icall_0_7(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "pop");

        public void pop()
        {
            NativeCalls.godot_icall_0_7(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        public void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_meta_underline");

        public void set_meta_underline(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_16, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_meta_underlined");

        public bool is_meta_underlined()
        {
            return NativeCalls.godot_icall_0_14(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_scroll_active");

        public void set_scroll_active(bool active)
        {
            NativeCalls.godot_icall_1_13(method_bind_18, Object.GetPtr(this), active);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_scroll_active");

        public bool is_scroll_active()
        {
            return NativeCalls.godot_icall_0_14(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_scroll_follow");

        public void set_scroll_follow(bool follow)
        {
            NativeCalls.godot_icall_1_13(method_bind_20, Object.GetPtr(this), follow);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_scroll_following");

        public bool is_scroll_following()
        {
            return NativeCalls.godot_icall_0_14(method_bind_21, Object.GetPtr(this));
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_v_scroll");

        public Object get_v_scroll()
        {
            return NativeCalls.godot_icall_0_12(method_bind_22, Object.GetPtr(this));
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "scroll_to_line");

        public void scroll_to_line(int line)
        {
            NativeCalls.godot_icall_1_4(method_bind_23, Object.GetPtr(this), line);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_tab_size");

        public void set_tab_size(int spaces)
        {
            NativeCalls.godot_icall_1_4(method_bind_24, Object.GetPtr(this), spaces);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_tab_size");

        public int get_tab_size()
        {
            return NativeCalls.godot_icall_0_0(method_bind_25, Object.GetPtr(this));
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_selection_enabled");

        /// <summary>
        /// Set to true if selecting the text inside this richtext is allowed.
        /// </summary>
        public void set_selection_enabled(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_26, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_selection_enabled");

        /// <summary>
        /// Return true if selecting the text inside this richtext is allowed.
        /// </summary>
        public bool is_selection_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_27, Object.GetPtr(this));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "parse_bbcode");

        public int parse_bbcode(string bbcode)
        {
            return NativeCalls.godot_icall_1_63(method_bind_28, Object.GetPtr(this), bbcode);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "append_bbcode");

        public int append_bbcode(string bbcode)
        {
            return NativeCalls.godot_icall_1_63(method_bind_29, Object.GetPtr(this), bbcode);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bbcode");

        public void set_bbcode(string text)
        {
            NativeCalls.godot_icall_1_18(method_bind_30, Object.GetPtr(this), text);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bbcode");

        public string get_bbcode()
        {
            return NativeCalls.godot_icall_0_19(method_bind_31, Object.GetPtr(this));
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_visible_characters");

        public void set_visible_characters(int amount)
        {
            NativeCalls.godot_icall_1_4(method_bind_32, Object.GetPtr(this), amount);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_visible_characters");

        public int get_visible_characters()
        {
            return NativeCalls.godot_icall_0_0(method_bind_33, Object.GetPtr(this));
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_total_character_count");

        public int get_total_character_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_34, Object.GetPtr(this));
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_use_bbcode");

        public void set_use_bbcode(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_35, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_using_bbcode");

        public bool is_using_bbcode()
        {
            return NativeCalls.godot_icall_0_14(method_bind_36, Object.GetPtr(this));
        }
    }
}
