using System;

namespace GodotEngine
{
    /// <summary>
    /// This shows a tree of items that can be selected, expanded and collapsed. The tree can have multiple columns with custom controls like text editing, buttons and popups. It can be useful for structural displaying and interactions.
    /// Trees are built via code, using [TreeItem] objects to create the structure. They have a single root but multiple root can be simulated if a dummy hidden root is added.
    /// [codeblock]
    /// func _ready():
    /// var tree = Tree.new()
    /// var root = tree.create_item()
    /// tree.set_hide_root(true)
    /// var child1 = tree.create_item(root)
    /// var child2 = tree.create_item(root)
    /// var subchild1 = tree.create_item(child1)
    /// subchild1.set_text(0, "Subchild1")
    /// [/codeblock]
    /// </summary>
    public class Tree : Control
    {
        public const int SELECT_SINGLE = 0;
        public const int SELECT_ROW = 1;
        public const int SELECT_MULTI = 2;
        public const int DROP_MODE_DISABLED = 0;
        public const int DROP_MODE_ON_ITEM = 1;
        public const int DROP_MODE_INBETWEEN = 2;

        private const string nativeName = "Tree";

        public Tree() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Tree_Ctor(this);
        }

        internal Tree(bool memoryOwn) : base(memoryOwn) {}

        ~Tree()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        /// <summary>
        /// Clear the tree. This erases all of the items.
        /// </summary>
        public void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "create_item");

        /// <summary>
        /// Create an item in the tree and add it as the last child of [code]parent[/code]. If parent is not given, it will be added as the last child of the root, or it'll the be the root itself if the tree is empty.
        /// </summary>
        public TreeItem create_item(TreeItem parent = null)
        {
            return NativeCalls.godot_icall_1_495(method_bind_1, Object.GetPtr(this), Object.GetPtr(parent));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_root");

        /// <summary>
        /// Get the root item of the tree.
        /// </summary>
        public TreeItem get_root()
        {
            return NativeCalls.godot_icall_0_496(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_column_min_width");

        /// <summary>
        /// Set the minimum width of a column.
        /// </summary>
        public void set_column_min_width(int column, int min_width)
        {
            NativeCalls.godot_icall_2_5(method_bind_3, Object.GetPtr(this), column, min_width);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_column_expand");

        /// <summary>
        /// Set whether a column will have the "Expand" flag of [Control].
        /// </summary>
        public void set_column_expand(int column, bool expand)
        {
            NativeCalls.godot_icall_2_32(method_bind_4, Object.GetPtr(this), column, expand);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_column_width");

        /// <summary>
        /// Get the width of the given column in pixels.
        /// </summary>
        public int get_column_width(int column)
        {
            return NativeCalls.godot_icall_1_28(method_bind_5, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_hide_root");

        /// <summary>
        /// Set whether the root of the tree should be hidden.
        /// </summary>
        public void set_hide_root(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_6, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_next_selected");

        /// <summary>
        /// Get the next selected item after the given one.
        /// </summary>
        public TreeItem get_next_selected(TreeItem @from)
        {
            return NativeCalls.godot_icall_1_495(method_bind_7, Object.GetPtr(this), Object.GetPtr(@from));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_selected");

        /// <summary>
        /// Get the currently selected item.
        /// </summary>
        public TreeItem get_selected()
        {
            return NativeCalls.godot_icall_0_496(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_selected_column");

        /// <summary>
        /// Get the column number of the current selection.
        /// </summary>
        public int get_selected_column()
        {
            return NativeCalls.godot_icall_0_0(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pressed_button");

        /// <summary>
        /// Get the index of the last pressed button.
        /// </summary>
        public int get_pressed_button()
        {
            return NativeCalls.godot_icall_0_0(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_select_mode");

        /// <summary>
        /// Set the selection mode. Use one of the [code]SELECT_*[/code] constants.
        /// </summary>
        public void set_select_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_11, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_columns");

        /// <summary>
        /// Set the amount of columns.
        /// </summary>
        public void set_columns(int amount)
        {
            NativeCalls.godot_icall_1_4(method_bind_12, Object.GetPtr(this), amount);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_columns");

        /// <summary>
        /// Get the amount of columns.
        /// </summary>
        public int get_columns()
        {
            return NativeCalls.godot_icall_0_0(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_edited");

        /// <summary>
        /// Get the current edited item. This is only available for custom cell mode.
        /// </summary>
        public TreeItem get_edited()
        {
            return NativeCalls.godot_icall_0_496(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_edited_column");

        /// <summary>
        /// Get the column of the cell for the current edited icon. This is only available for custom cell mode.
        /// </summary>
        public int get_edited_column()
        {
            return NativeCalls.godot_icall_0_0(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_custom_popup_rect");

        /// <summary>
        /// Get the rectangle for custom popups. Helper to create custom cell controls that display a popup. See [method TreeItem.set_cell_mode].
        /// </summary>
        public Rect2 get_custom_popup_rect()
        {
            object ret = NativeCalls.godot_icall_0_82(method_bind_16, Object.GetPtr(this));
            return (Rect2)ret;
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_area_rect");

        /// <summary>
        /// Get the rectangle area of the the specified item. If column is specified, only get the position and size of that column, otherwise get the rectangle containing all columns.
        /// </summary>
        public Rect2 get_item_area_rect(TreeItem item, int column = -1)
        {
            object ret = NativeCalls.godot_icall_2_497(method_bind_17, Object.GetPtr(this), Object.GetPtr(item), column);
            return (Rect2)ret;
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_at_pos");

        /// <summary>
        /// Get the tree item at the specified position (relative to the tree origin position).
        /// </summary>
        public TreeItem get_item_at_pos(Vector2 pos)
        {
            return NativeCalls.godot_icall_1_498(method_bind_18, Object.GetPtr(this), ref pos);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_column_at_pos");

        /// <summary>
        /// Get the column index under the given point.
        /// </summary>
        public int get_column_at_pos(Vector2 pos)
        {
            return NativeCalls.godot_icall_1_185(method_bind_19, Object.GetPtr(this), ref pos);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "ensure_cursor_is_visible");

        /// <summary>
        /// Make the current selected item visible. This will scroll the tree to make sure the selected item is in sight.
        /// </summary>
        public void ensure_cursor_is_visible()
        {
            NativeCalls.godot_icall_0_7(method_bind_20, Object.GetPtr(this));
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_column_titles_visible");

        /// <summary>
        /// Set whether the column titles visibility.
        /// </summary>
        public void set_column_titles_visible(bool visible)
        {
            NativeCalls.godot_icall_1_13(method_bind_21, Object.GetPtr(this), visible);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "are_column_titles_visible");

        /// <summary>
        /// Get whether the column titles are being shown.
        /// </summary>
        public bool are_column_titles_visible()
        {
            return NativeCalls.godot_icall_0_14(method_bind_22, Object.GetPtr(this));
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_column_title");

        /// <summary>
        /// Set the title of a column.
        /// </summary>
        public void set_column_title(int column, string title)
        {
            NativeCalls.godot_icall_2_61(method_bind_23, Object.GetPtr(this), column, title);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_column_title");

        /// <summary>
        /// Get the title of the given column.
        /// </summary>
        public string get_column_title(int column)
        {
            return NativeCalls.godot_icall_1_116(method_bind_24, Object.GetPtr(this), column);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_scroll");

        /// <summary>
        /// Get the current scrolling position.
        /// </summary>
        public Vector2 get_scroll()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_25, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_hide_folding");

        /// <summary>
        /// Set whether the folding arrow should be hidden.
        /// </summary>
        public void set_hide_folding(bool hide)
        {
            NativeCalls.godot_icall_1_13(method_bind_26, Object.GetPtr(this), hide);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_folding_hidden");

        /// <summary>
        /// Get whether the folding arrow is hidden.
        /// </summary>
        public bool is_folding_hidden()
        {
            return NativeCalls.godot_icall_0_14(method_bind_27, Object.GetPtr(this));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_drop_mode_flags");

        /// <summary>
        /// Set the drop mode as an OR combination of flags. See [code]DROP_MODE_*[/code] constants.
        /// </summary>
        public void set_drop_mode_flags(int flags)
        {
            NativeCalls.godot_icall_1_4(method_bind_28, Object.GetPtr(this), flags);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_drop_mode_flags");

        /// <summary>
        /// Get the flags of the current drop mode.
        /// </summary>
        public int get_drop_mode_flags()
        {
            return NativeCalls.godot_icall_0_0(method_bind_29, Object.GetPtr(this));
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_allow_rmb_select");

        /// <summary>
        /// Set whether or not a right mouse button click can select items.
        /// </summary>
        public void set_allow_rmb_select(bool allow)
        {
            NativeCalls.godot_icall_1_13(method_bind_30, Object.GetPtr(this), allow);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_allow_rmb_select");

        /// <summary>
        /// Get whether a right click can select items.
        /// </summary>
        public bool get_allow_rmb_select()
        {
            return NativeCalls.godot_icall_0_14(method_bind_31, Object.GetPtr(this));
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_single_select_cell_editing_only_when_already_selected");

        /// <summary>
        /// Set whether the editing of a cell should only happen when it is already selected.
        /// </summary>
        public void set_single_select_cell_editing_only_when_already_selected(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_32, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_single_select_cell_editing_only_when_already_selected");

        /// <summary>
        /// Get whether the editing of a cell should only happen when it is already selected.
        /// </summary>
        public bool get_single_select_cell_editing_only_when_already_selected()
        {
            return NativeCalls.godot_icall_0_14(method_bind_33, Object.GetPtr(this));
        }
    }
}
