using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// This control provides a selectable list of items that may be in a single (or multiple columns) with option of text, icons,
    /// or both text and icon.  Tooltips are supported and may be different for every item in the list.  Selectable items in the list
    /// may be selected or deselected and multiple selection may be enabled.  Selection with right mouse button may also be enabled
    /// to allow use of popup context menus.  Items may also be 'activated' with a double click (or Enter key).
    /// </summary>
    public class ItemList : Control
    {
        public const int ICON_MODE_TOP = 0;
        public const int ICON_MODE_LEFT = 1;
        public const int SELECT_SINGLE = 0;
        public const int SELECT_MULTI = 1;

        private const string nativeName = "ItemList";

        public ItemList() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ItemList_Ctor(this);
        }

        internal ItemList(bool memoryOwn) : base(memoryOwn) {}

        ~ItemList()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_item");

        /// <summary>
        /// Adds an item to the item list with specified text.  Specify an icon of null for a list item with no icon.
        /// If selectable is true the list item will be selectable.
        /// </summary>
        public void add_item(string text, Texture icon = null, bool selectable = true)
        {
            NativeCalls.godot_icall_3_265(method_bind_0, Object.GetPtr(this), text, Object.GetPtr(icon), selectable);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_icon_item");

        /// <summary>
        /// Adds an item to the item list with no text, only an icon.
        /// </summary>
        public void add_icon_item(Texture icon, bool selectable = true)
        {
            NativeCalls.godot_icall_2_266(method_bind_1, Object.GetPtr(this), Object.GetPtr(icon), selectable);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_text");

        /// <summary>
        /// Sets text of item at specified index.
        /// </summary>
        public void set_item_text(int idx, string text)
        {
            NativeCalls.godot_icall_2_61(method_bind_2, Object.GetPtr(this), idx, text);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_text");

        /// <summary>
        /// Return the text for specified item index.
        /// </summary>
        public string get_item_text(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_3, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_icon");

        /// <summary>
        /// Set (or replace) icon of the item at the specified index.
        /// </summary>
        public void set_item_icon(int idx, Texture icon)
        {
            NativeCalls.godot_icall_2_115(method_bind_4, Object.GetPtr(this), idx, Object.GetPtr(icon));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_icon");

        public Texture get_item_icon(int idx)
        {
            return NativeCalls.godot_icall_1_112(method_bind_5, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_icon_region");

        public void set_item_icon_region(int idx, Rect2 rect)
        {
            NativeCalls.godot_icall_2_267(method_bind_6, Object.GetPtr(this), idx, ref rect);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_icon_region");

        public Rect2 get_item_icon_region(int idx)
        {
            object ret = NativeCalls.godot_icall_1_268(method_bind_7, Object.GetPtr(this), idx);
            return (Rect2)ret;
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_selectable");

        /// <summary>
        /// Allow or disallow selection of the item at the specified index.
        /// </summary>
        public void set_item_selectable(int idx, bool selectable)
        {
            NativeCalls.godot_icall_2_32(method_bind_8, Object.GetPtr(this), idx, selectable);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_item_selectable");

        /// <summary>
        /// Returns whether or not the item at the specified index is selectable.
        /// </summary>
        public bool is_item_selectable(int idx)
        {
            return NativeCalls.godot_icall_1_33(method_bind_9, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_disabled");

        /// <summary>
        /// Disable (or enable) item at specified index.
        /// Disabled items are not be selectable and do not fire activation (Enter or double-click) signals.
        /// </summary>
        public void set_item_disabled(int idx, bool disabled)
        {
            NativeCalls.godot_icall_2_32(method_bind_10, Object.GetPtr(this), idx, disabled);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_item_disabled");

        /// <summary>
        /// Returns whether or not the item at the specified index is disabled
        /// </summary>
        public bool is_item_disabled(int idx)
        {
            return NativeCalls.godot_icall_1_33(method_bind_11, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_metadata");

        /// <summary>
        /// Sets a value (of any type) to be stored with the item at the specified index.
        /// </summary>
        public void set_item_metadata(int idx, object metadata)
        {
            NativeCalls.godot_icall_2_225(method_bind_12, Object.GetPtr(this), idx, metadata);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_metadata");

        public void get_item_metadata(int idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_13, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_custom_bg_color");

        public void set_item_custom_bg_color(int idx, Color custom_bg_color)
        {
            NativeCalls.godot_icall_2_160(method_bind_14, Object.GetPtr(this), idx, ref custom_bg_color);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_custom_bg_color");

        public Color get_item_custom_bg_color(int idx)
        {
            object ret = NativeCalls.godot_icall_1_161(method_bind_15, Object.GetPtr(this), idx);
            return (Color)ret;
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_tooltip_enabled");

        /// <summary>
        /// Sets whether the tooltip is enabled for specified item index.
        /// </summary>
        public void set_item_tooltip_enabled(int idx, bool enable)
        {
            NativeCalls.godot_icall_2_32(method_bind_16, Object.GetPtr(this), idx, enable);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_item_tooltip_enabled");

        /// <summary>
        /// Returns whether the tooptip is enabled for specified item index.
        /// </summary>
        public bool is_item_tooltip_enabled(int idx)
        {
            return NativeCalls.godot_icall_1_33(method_bind_17, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_tooltip");

        /// <summary>
        /// Sets tooltip hint for item at specified index.
        /// </summary>
        public void set_item_tooltip(int idx, string tooltip)
        {
            NativeCalls.godot_icall_2_61(method_bind_18, Object.GetPtr(this), idx, tooltip);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_tooltip");

        /// <summary>
        /// Return tooltip hint for specified item index.
        /// </summary>
        public string get_item_tooltip(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_19, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "select");

        /// <summary>
        /// Select the item at the specified index.
        /// Note:  This method does not trigger the item selection signal.
        /// </summary>
        public void @select(int idx, bool single = true)
        {
            NativeCalls.godot_icall_2_32(method_bind_20, Object.GetPtr(this), idx, single);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "unselect");

        /// <summary>
        /// Ensure item at specified index is not selected.
        /// </summary>
        public void unselect(int idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_21, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_selected");

        /// <summary>
        /// Returns whether or not item at the specified index is currently selected.
        /// </summary>
        public bool is_selected(int idx)
        {
            return NativeCalls.godot_icall_1_33(method_bind_22, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_selected_items");

        /// <summary>
        /// Returns the list of selected indexes.
        /// </summary>
        public List<int> get_selected_items()
        {
            int[] ret = NativeCalls.godot_icall_0_104(method_bind_23, Object.GetPtr(this));
            return new List<int>(ret);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_count");

        /// <summary>
        /// Return count of items currently in the item list.
        /// </summary>
        public int get_item_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_24, Object.GetPtr(this));
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_item");

        /// <summary>
        /// Remove item at specified index from the list.
        /// </summary>
        public void remove_item(int idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_25, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        /// <summary>
        /// Remove all items from the list.
        /// </summary>
        public void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_26, Object.GetPtr(this));
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sort_items_by_text");

        /// <summary>
        /// Sorts items in the list by their text.
        /// </summary>
        public void sort_items_by_text()
        {
            NativeCalls.godot_icall_0_7(method_bind_27, Object.GetPtr(this));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_fixed_column_width");

        /// <summary>
        /// Set the size (width) all columns in the list are to use.
        /// </summary>
        public void set_fixed_column_width(int width)
        {
            NativeCalls.godot_icall_1_4(method_bind_28, Object.GetPtr(this), width);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_fixed_column_width");

        /// <summary>
        /// If column size has been fixed to a value, return that value.
        /// </summary>
        public int get_fixed_column_width()
        {
            return NativeCalls.godot_icall_0_0(method_bind_29, Object.GetPtr(this));
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_same_column_width");

        /// <summary>
        /// Sets a fixed size (width) to use for all columns of the list.
        /// </summary>
        public void set_same_column_width(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_30, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_same_column_width");

        /// <summary>
        /// Returns whether or not all columns of the list are of the same size.
        /// </summary>
        public int is_same_column_width()
        {
            return NativeCalls.godot_icall_0_0(method_bind_31, Object.GetPtr(this));
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_max_text_lines");

        /// <summary>
        /// Set maximum number of lines to use for the list.
        /// </summary>
        public void set_max_text_lines(int lines)
        {
            NativeCalls.godot_icall_1_4(method_bind_32, Object.GetPtr(this), lines);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_max_text_lines");

        /// <summary>
        /// Return total number of lines currently in use by the list.
        /// </summary>
        public int get_max_text_lines()
        {
            return NativeCalls.godot_icall_0_0(method_bind_33, Object.GetPtr(this));
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_max_columns");

        /// <summary>
        /// Set maximum number of columns to use for the list.
        /// </summary>
        public void set_max_columns(int amount)
        {
            NativeCalls.godot_icall_1_4(method_bind_34, Object.GetPtr(this), amount);
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_max_columns");

        /// <summary>
        /// Return total number of columns in use by the list.
        /// </summary>
        public int get_max_columns()
        {
            return NativeCalls.godot_icall_0_0(method_bind_35, Object.GetPtr(this));
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_select_mode");

        public void set_select_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_36, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_select_mode");

        public int get_select_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_37, Object.GetPtr(this));
        }

        private IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_icon_mode");

        public void set_icon_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_38, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_icon_mode");

        public int get_icon_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_39, Object.GetPtr(this));
        }

        private IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_fixed_icon_size");

        public void set_fixed_icon_size(Vector2 size)
        {
            NativeCalls.godot_icall_1_23(method_bind_40, Object.GetPtr(this), ref size);
        }

        private IntPtr method_bind_41 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_fixed_icon_size");

        public Vector2 get_fixed_icon_size()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_41, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_42 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_icon_scale");

        public void set_icon_scale(float scale)
        {
            NativeCalls.godot_icall_1_45(method_bind_42, Object.GetPtr(this), scale);
        }

        private IntPtr method_bind_43 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_icon_scale");

        public float get_icon_scale()
        {
            return NativeCalls.godot_icall_0_46(method_bind_43, Object.GetPtr(this));
        }

        private IntPtr method_bind_44 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_allow_rmb_select");

        /// <summary>
        /// Allow (or disallow) selection of (selectable) items in the list using right mouse button.
        /// </summary>
        public void set_allow_rmb_select(bool allow)
        {
            NativeCalls.godot_icall_1_13(method_bind_44, Object.GetPtr(this), allow);
        }

        private IntPtr method_bind_45 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_allow_rmb_select");

        /// <summary>
        /// Return whether or not items may be selected via right mouse clicking.
        /// </summary>
        public bool get_allow_rmb_select()
        {
            return NativeCalls.godot_icall_0_14(method_bind_45, Object.GetPtr(this));
        }

        private IntPtr method_bind_46 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_at_pos");

        /// <summary>
        /// Given a position within the control return the item (if any) at that point.
        /// </summary>
        public int get_item_at_pos(Vector2 pos, bool exact = false)
        {
            return NativeCalls.godot_icall_2_269(method_bind_46, Object.GetPtr(this), ref pos, exact);
        }

        private IntPtr method_bind_47 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "ensure_current_is_visible");

        /// <summary>
        /// Ensure selection is visible, adjusting the scroll position as necessary.
        /// </summary>
        public void ensure_current_is_visible()
        {
            NativeCalls.godot_icall_0_7(method_bind_47, Object.GetPtr(this));
        }

        private IntPtr method_bind_48 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_v_scroll");

        /// <summary>
        /// Returns the current vertical scroll bar for the List.
        /// </summary>
        public Object get_v_scroll()
        {
            return NativeCalls.godot_icall_0_12(method_bind_48, Object.GetPtr(this));
        }
    }
}
