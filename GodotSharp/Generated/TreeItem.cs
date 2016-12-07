using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class TreeItem : Object
    {
        public const int CELL_MODE_STRING = 0;
        public const int CELL_MODE_CHECK = 1;
        public const int CELL_MODE_RANGE = 2;
        public const int CELL_MODE_RANGE_EXPRESSION = 3;
        public const int CELL_MODE_ICON = 4;
        public const int CELL_MODE_CUSTOM = 5;

        private const string nativeName = "TreeItem";

        internal TreeItem() {}

        internal TreeItem(bool memoryOwn) : base(memoryOwn) {}

        ~TreeItem()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_cell_mode");

        public void set_cell_mode(int column, int mode)
        {
            NativeCalls.godot_icall_2_5(method_bind_0, Object.GetPtr(this), column, mode);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_cell_mode");

        public int get_cell_mode(int column)
        {
            return NativeCalls.godot_icall_1_28(method_bind_1, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_checked");

        public void set_checked(int column, bool @checked)
        {
            NativeCalls.godot_icall_2_32(method_bind_2, Object.GetPtr(this), column, @checked);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_checked");

        public bool is_checked(int column)
        {
            return NativeCalls.godot_icall_1_33(method_bind_3, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_text");

        public void set_text(int column, string text)
        {
            NativeCalls.godot_icall_2_61(method_bind_4, Object.GetPtr(this), column, text);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_text");

        public string get_text(int column)
        {
            return NativeCalls.godot_icall_1_116(method_bind_5, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_icon");

        public void set_icon(int column, Texture texture)
        {
            NativeCalls.godot_icall_2_115(method_bind_6, Object.GetPtr(this), column, Object.GetPtr(texture));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_icon");

        public Texture get_icon(int column)
        {
            return NativeCalls.godot_icall_1_112(method_bind_7, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_icon_region");

        public void set_icon_region(int column, Rect2 region)
        {
            NativeCalls.godot_icall_2_267(method_bind_8, Object.GetPtr(this), column, ref region);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_icon_region");

        public Rect2 get_icon_region(int column)
        {
            object ret = NativeCalls.godot_icall_1_268(method_bind_9, Object.GetPtr(this), column);
            return (Rect2)ret;
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_icon_max_width");

        public void set_icon_max_width(int column, int width)
        {
            NativeCalls.godot_icall_2_5(method_bind_10, Object.GetPtr(this), column, width);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_icon_max_width");

        public int get_icon_max_width(int column)
        {
            return NativeCalls.godot_icall_1_28(method_bind_11, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_range");

        public void set_range(int column, float @value)
        {
            NativeCalls.godot_icall_2_36(method_bind_12, Object.GetPtr(this), column, @value);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_range");

        public float get_range(int column)
        {
            return NativeCalls.godot_icall_1_3(method_bind_13, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_range_config");

        public void set_range_config(int column, float min, float max, float step, bool expr = false)
        {
            NativeCalls.godot_icall_5_499(method_bind_14, Object.GetPtr(this), column, min, max, step, expr);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_range_config");

        public Dictionary<object, object> get_range_config(int column)
        {
            return NativeCalls.godot_icall_1_500(method_bind_15, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_metadata");

        public void set_metadata(int column, object meta)
        {
            NativeCalls.godot_icall_2_225(method_bind_16, Object.GetPtr(this), column, meta);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_metadata");

        public void get_metadata(int column)
        {
            NativeCalls.godot_icall_1_4(method_bind_17, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_custom_draw");

        public void set_custom_draw(int column, Object @object, string callback)
        {
            NativeCalls.godot_icall_3_501(method_bind_18, Object.GetPtr(this), column, Object.GetPtr(@object), callback);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collapsed");

        public void set_collapsed(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_19, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_collapsed");

        public bool is_collapsed()
        {
            return NativeCalls.godot_icall_0_14(method_bind_20, Object.GetPtr(this));
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_next");

        public TreeItem get_next()
        {
            return NativeCalls.godot_icall_0_496(method_bind_21, Object.GetPtr(this));
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_prev");

        public TreeItem get_prev()
        {
            return NativeCalls.godot_icall_0_496(method_bind_22, Object.GetPtr(this));
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_parent");

        public TreeItem get_parent()
        {
            return NativeCalls.godot_icall_0_496(method_bind_23, Object.GetPtr(this));
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_children");

        public TreeItem get_children()
        {
            return NativeCalls.godot_icall_0_496(method_bind_24, Object.GetPtr(this));
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_next_visible");

        public TreeItem get_next_visible()
        {
            return NativeCalls.godot_icall_0_496(method_bind_25, Object.GetPtr(this));
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_prev_visible");

        public TreeItem get_prev_visible()
        {
            return NativeCalls.godot_icall_0_496(method_bind_26, Object.GetPtr(this));
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_child");

        public TreeItem remove_child(Object child)
        {
            return NativeCalls.godot_icall_1_495(method_bind_27, Object.GetPtr(this), Object.GetPtr(child));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_selectable");

        public void set_selectable(int column, bool selectable)
        {
            NativeCalls.godot_icall_2_32(method_bind_28, Object.GetPtr(this), column, selectable);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_selectable");

        public bool is_selectable(int column)
        {
            return NativeCalls.godot_icall_1_33(method_bind_29, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_selected");

        public bool is_selected(int column)
        {
            return NativeCalls.godot_icall_1_33(method_bind_30, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "select");

        public void @select(int column)
        {
            NativeCalls.godot_icall_1_4(method_bind_31, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "deselect");

        public void deselect(int column)
        {
            NativeCalls.godot_icall_1_4(method_bind_32, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_editable");

        public void set_editable(int column, bool enabled)
        {
            NativeCalls.godot_icall_2_32(method_bind_33, Object.GetPtr(this), column, enabled);
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_editable");

        public bool is_editable(int column)
        {
            return NativeCalls.godot_icall_1_33(method_bind_34, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_custom_color");

        public void set_custom_color(int column, Color color)
        {
            NativeCalls.godot_icall_2_160(method_bind_35, Object.GetPtr(this), column, ref color);
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_custom_color");

        public void clear_custom_color(int column)
        {
            NativeCalls.godot_icall_1_4(method_bind_36, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_custom_bg_color");

        public void set_custom_bg_color(int column, Color color, bool just_outline = false)
        {
            NativeCalls.godot_icall_3_502(method_bind_37, Object.GetPtr(this), column, ref color, just_outline);
        }

        private IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_custom_bg_color");

        public void clear_custom_bg_color(int column)
        {
            NativeCalls.godot_icall_1_4(method_bind_38, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_custom_bg_color");

        public Color get_custom_bg_color(int column)
        {
            object ret = NativeCalls.godot_icall_1_161(method_bind_39, Object.GetPtr(this), column);
            return (Color)ret;
        }

        private IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_button");

        public void add_button(int column, Texture button, int button_idx = -1, bool disabled = false)
        {
            NativeCalls.godot_icall_4_503(method_bind_40, Object.GetPtr(this), column, Object.GetPtr(button), button_idx, disabled);
        }

        private IntPtr method_bind_41 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_button_count");

        public int get_button_count(int column)
        {
            return NativeCalls.godot_icall_1_28(method_bind_41, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_42 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_button");

        public Texture get_button(int column, int button_idx)
        {
            return NativeCalls.godot_icall_2_443(method_bind_42, Object.GetPtr(this), column, button_idx);
        }

        private IntPtr method_bind_43 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_button");

        public void set_button(int column, int button_idx, Texture button)
        {
            NativeCalls.godot_icall_3_442(method_bind_43, Object.GetPtr(this), column, button_idx, Object.GetPtr(button));
        }

        private IntPtr method_bind_44 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "erase_button");

        public void erase_button(int column, int button_idx)
        {
            NativeCalls.godot_icall_2_5(method_bind_44, Object.GetPtr(this), column, button_idx);
        }

        private IntPtr method_bind_45 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_button_disabled");

        public bool is_button_disabled(int column, int button_idx)
        {
            return NativeCalls.godot_icall_2_6(method_bind_45, Object.GetPtr(this), column, button_idx);
        }

        private IntPtr method_bind_46 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_tooltip");

        public void set_tooltip(int column, string tooltip)
        {
            NativeCalls.godot_icall_2_61(method_bind_46, Object.GetPtr(this), column, tooltip);
        }

        private IntPtr method_bind_47 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_tooltip");

        public string get_tooltip(int column)
        {
            return NativeCalls.godot_icall_1_116(method_bind_47, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_48 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "move_to_top");

        public void move_to_top()
        {
            NativeCalls.godot_icall_0_7(method_bind_48, Object.GetPtr(this));
        }

        private IntPtr method_bind_49 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "move_to_bottom");

        public void move_to_bottom()
        {
            NativeCalls.godot_icall_0_7(method_bind_49, Object.GetPtr(this));
        }
    }
}
