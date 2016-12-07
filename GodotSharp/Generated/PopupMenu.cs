using System;

namespace GodotEngine
{
    /// <summary>
    /// PopupMenu is the typical Control that displays a list of options. They are popular in toolbars or context menus.
    /// </summary>
    public class PopupMenu : Popup
    {
        private const string nativeName = "PopupMenu";

        public PopupMenu() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_PopupMenu_Ctor(this);
        }

        internal PopupMenu(bool memoryOwn) : base(memoryOwn) {}

        ~PopupMenu()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_icon_item");

        /// <summary>
        /// Add a new item with text "label" and icon "texture". An id can optionally be provided, as well as an accelerator keybinding. If no id is provided, one will be created from the index.
        /// </summary>
        public void add_icon_item(Object texture, string label, int id = -1, int accel = 0)
        {
            NativeCalls.godot_icall_4_399(method_bind_0, Object.GetPtr(this), Object.GetPtr(texture), label, id, accel);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_item");

        /// <summary>
        /// Add a new item with text "label". An id can optionally be provided, as well as an accelerator keybinding. If no id is provided, one will be created from the index.
        /// </summary>
        public void add_item(string label, int id = -1, int accel = 0)
        {
            NativeCalls.godot_icall_3_400(method_bind_1, Object.GetPtr(this), label, id, accel);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_icon_check_item");

        /// <summary>
        /// Add a new checkable item with text "label" and icon "texture". An id can optionally be provided, as well as an accelerator. If no id is provided, one will be created from the index. Note that checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually.
        /// </summary>
        public void add_icon_check_item(Object texture, string label, int id = -1, int accel = 0)
        {
            NativeCalls.godot_icall_4_399(method_bind_2, Object.GetPtr(this), Object.GetPtr(texture), label, id, accel);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_check_item");

        /// <summary>
        /// Add a new checkable item with text "label". An id can optionally be provided, as well as an accelerator. If no id is provided, one will be created from the index. Note that checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually.
        /// </summary>
        public void add_check_item(string label, int id = -1, int accel = 0)
        {
            NativeCalls.godot_icall_3_400(method_bind_3, Object.GetPtr(this), label, id, accel);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_submenu_item");

        /// <summary>
        /// Adds an item with a submenu. The submenu is the name of a child PopupMenu node that would be shown when the item is clicked. An id can optionally be provided, but if is isn't provided, one will be created from the index.
        /// </summary>
        public void add_submenu_item(string label, string submenu, int id = -1)
        {
            NativeCalls.godot_icall_3_401(method_bind_4, Object.GetPtr(this), label, submenu, id);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_icon_shortcut");

        public void add_icon_shortcut(Object texture, ShortCut shortcut, int id = -1)
        {
            NativeCalls.godot_icall_3_402(method_bind_5, Object.GetPtr(this), Object.GetPtr(texture), Object.GetPtr(shortcut), id);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_shortcut");

        public void add_shortcut(ShortCut shortcut, int id = -1)
        {
            NativeCalls.godot_icall_2_403(method_bind_6, Object.GetPtr(this), Object.GetPtr(shortcut), id);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_icon_check_shortcut");

        public void add_icon_check_shortcut(Object texture, ShortCut shortcut, int id = -1)
        {
            NativeCalls.godot_icall_3_402(method_bind_7, Object.GetPtr(this), Object.GetPtr(texture), Object.GetPtr(shortcut), id);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_check_shortcut");

        public void add_check_shortcut(ShortCut shortcut, int id = -1)
        {
            NativeCalls.godot_icall_2_403(method_bind_8, Object.GetPtr(this), Object.GetPtr(shortcut), id);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_text");

        /// <summary>
        /// Set the text of the item at index "idx".
        /// </summary>
        public void set_item_text(int idx, string text)
        {
            NativeCalls.godot_icall_2_61(method_bind_9, Object.GetPtr(this), idx, text);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_icon");

        /// <summary>
        /// Set the icon of the item at index "idx".
        /// </summary>
        public void set_item_icon(int idx, Object icon)
        {
            NativeCalls.godot_icall_2_208(method_bind_10, Object.GetPtr(this), idx, Object.GetPtr(icon));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_checked");

        /// <summary>
        /// Set the checkstate status of the item at index "idx".
        /// </summary>
        public void set_item_checked(int idx, bool @checked)
        {
            NativeCalls.godot_icall_2_32(method_bind_11, Object.GetPtr(this), idx, @checked);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_ID");

        /// <summary>
        /// Set the id of the item at index "idx".
        /// </summary>
        public void set_item_ID(int idx, int id)
        {
            NativeCalls.godot_icall_2_5(method_bind_12, Object.GetPtr(this), idx, id);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_accelerator");

        /// <summary>
        /// Set the accelerator of the item at index "idx". Accelerators are special combinations of keys that activate the item, no matter which control is focused.
        /// </summary>
        public void set_item_accelerator(int idx, int accel)
        {
            NativeCalls.godot_icall_2_5(method_bind_13, Object.GetPtr(this), idx, accel);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_metadata");

        /// <summary>
        /// Sets the metadata of an item, which might be of any type. You can later get it with [method get_item_metadata], which provides a simple way of assigning context data to items.
        /// </summary>
        public void set_item_metadata(int idx, object metadata)
        {
            NativeCalls.godot_icall_2_225(method_bind_14, Object.GetPtr(this), idx, metadata);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_disabled");

        /// <summary>
        /// Sets whether the item at index "idx" is disabled or not. When it is disabled it can't be selected, or its action invoked.
        /// </summary>
        public void set_item_disabled(int idx, bool disabled)
        {
            NativeCalls.godot_icall_2_32(method_bind_15, Object.GetPtr(this), idx, disabled);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_submenu");

        /// <summary>
        /// Sets the submenu of the item at index "idx". The submenu is the name of a child PopupMenu node that would be shown when the item is clicked.
        /// </summary>
        public void set_item_submenu(int idx, string submenu)
        {
            NativeCalls.godot_icall_2_61(method_bind_16, Object.GetPtr(this), idx, submenu);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_as_separator");

        /// <summary>
        /// Mark the item at index "idx" as a seperator, which means that it would be displayed as a mere line.
        /// </summary>
        public void set_item_as_separator(int idx, bool enable)
        {
            NativeCalls.godot_icall_2_32(method_bind_17, Object.GetPtr(this), idx, enable);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_as_checkable");

        /// <summary>
        /// Set whether the item at index "idx" has a checkbox. Note that checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually.
        /// </summary>
        public void set_item_as_checkable(int idx, bool enable)
        {
            NativeCalls.godot_icall_2_32(method_bind_18, Object.GetPtr(this), idx, enable);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_tooltip");

        public void set_item_tooltip(int idx, string tooltip)
        {
            NativeCalls.godot_icall_2_61(method_bind_19, Object.GetPtr(this), idx, tooltip);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_shortcut");

        public void set_item_shortcut(int idx, ShortCut shortcut)
        {
            NativeCalls.godot_icall_2_115(method_bind_20, Object.GetPtr(this), idx, Object.GetPtr(shortcut));
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "toggle_item_checked");

        public void toggle_item_checked(int idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_21, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_text");

        /// <summary>
        /// Return the text of the item at index "idx".
        /// </summary>
        public string get_item_text(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_22, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_icon");

        /// <summary>
        /// Return the icon of the item at index "idx".
        /// </summary>
        public Object get_item_icon(int idx)
        {
            return NativeCalls.godot_icall_1_207(method_bind_23, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_item_checked");

        /// <summary>
        /// Return the checkstate status of the item at index "idx".
        /// </summary>
        public bool is_item_checked(int idx)
        {
            return NativeCalls.godot_icall_1_33(method_bind_24, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_ID");

        /// <summary>
        /// Return the id of the item at index "idx".
        /// </summary>
        public int get_item_ID(int idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_25, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_index");

        /// <summary>
        /// Find and return the index of the item containing a given id.
        /// </summary>
        public int get_item_index(int id)
        {
            return NativeCalls.godot_icall_1_28(method_bind_26, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_accelerator");

        /// <summary>
        /// Return the accelerator of the item at index "idx". Accelerators are special combinations of keys that activate the item, no matter which control is focused.
        /// </summary>
        public int get_item_accelerator(int idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_27, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_metadata");

        /// <summary>
        /// Return the metadata of an item, which might be of any type. You can set it with [method set_item_metadata], which provides a simple way of assigning context data to items.
        /// </summary>
        public void get_item_metadata(int idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_28, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_item_disabled");

        /// <summary>
        /// Return whether the item at index "idx" is disabled. When it is disabled it can't be selected, or its action invoked.
        /// </summary>
        public bool is_item_disabled(int idx)
        {
            return NativeCalls.godot_icall_1_33(method_bind_29, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_submenu");

        /// <summary>
        /// Return the submenu name of the item at index "idx".
        /// </summary>
        public string get_item_submenu(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_30, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_item_separator");

        /// <summary>
        /// Return whether the item is a seperator. If it is, it would be displayed as a line.
        /// </summary>
        public bool is_item_separator(int idx)
        {
            return NativeCalls.godot_icall_1_33(method_bind_31, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_item_checkable");

        /// <summary>
        /// Return whether the item at index "idx" has a checkbox. Note that checkable items just display a checkmark, but don't have any built-in checking behavior and must be checked/unchecked manually.
        /// </summary>
        public bool is_item_checkable(int idx)
        {
            return NativeCalls.godot_icall_1_33(method_bind_32, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_tooltip");

        public string get_item_tooltip(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_33, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_shortcut");

        public ShortCut get_item_shortcut(int idx)
        {
            return NativeCalls.godot_icall_1_404(method_bind_34, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_count");

        /// <summary>
        /// Return the amount of items.
        /// </summary>
        public int get_item_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_35, Object.GetPtr(this));
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_item");

        /// <summary>
        /// Removes the item at index "idx" from the menu. Note that the indexes of items after the removed item are going to be shifted by one.
        /// </summary>
        public void remove_item(int idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_36, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_separator");

        /// <summary>
        /// Add a separator between items. Separators also occupy an index.
        /// </summary>
        public void add_separator()
        {
            NativeCalls.godot_icall_0_7(method_bind_37, Object.GetPtr(this));
        }

        private IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        /// <summary>
        /// Clear the popup menu, in effect removing all items.
        /// </summary>
        public void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_38, Object.GetPtr(this));
        }
    }
}
