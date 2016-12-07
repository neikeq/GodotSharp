using System;

namespace GodotEngine
{
    /// <summary>
    /// OptionButton is a type button that provides a selectable list of items when pressed. The item selected becomes the "current" item and is displayed as the button text.
    /// </summary>
    public class OptionButton : Button
    {
        private const string nativeName = "OptionButton";

        public OptionButton() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_OptionButton_Ctor(this);
        }

        internal OptionButton(bool memoryOwn) : base(memoryOwn) {}

        ~OptionButton()
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
        /// Add an item, with text "label" and (optionally) id. If no "id" is passed, "id" becomes the item index. New items are appended at the end.
        /// </summary>
        public void add_item(string label, int id = -1)
        {
            NativeCalls.godot_icall_2_71(method_bind_0, Object.GetPtr(this), label, id);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_icon_item");

        /// <summary>
        /// Add an item, with a "texture" icon, text "label" and (optionally) id. If no "id" is passed, "id" becomes the item index. New items are appended at the end.
        /// </summary>
        public void add_icon_item(Texture texture, string label, int id)
        {
            NativeCalls.godot_icall_3_328(method_bind_1, Object.GetPtr(this), Object.GetPtr(texture), label, id);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_text");

        /// <summary>
        /// Set the text of an item at index "idx".
        /// </summary>
        public void set_item_text(int idx, string text)
        {
            NativeCalls.godot_icall_2_61(method_bind_2, Object.GetPtr(this), idx, text);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_icon");

        /// <summary>
        /// Set the icon of an item at index "idx".
        /// </summary>
        public void set_item_icon(int idx, Texture texture)
        {
            NativeCalls.godot_icall_2_115(method_bind_3, Object.GetPtr(this), idx, Object.GetPtr(texture));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_disabled");

        public void set_item_disabled(int idx, bool disabled)
        {
            NativeCalls.godot_icall_2_32(method_bind_4, Object.GetPtr(this), idx, disabled);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_ID");

        /// <summary>
        /// Set the ID of an item at index "idx".
        /// </summary>
        public void set_item_ID(int idx, int id)
        {
            NativeCalls.godot_icall_2_5(method_bind_5, Object.GetPtr(this), idx, id);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_metadata");

        public void set_item_metadata(int idx, object metadata)
        {
            NativeCalls.godot_icall_2_225(method_bind_6, Object.GetPtr(this), idx, metadata);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_text");

        /// <summary>
        /// Return the text of the item at index "idx".
        /// </summary>
        public string get_item_text(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_7, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_icon");

        /// <summary>
        /// Return the icon of the item at index "idx".
        /// </summary>
        public Texture get_item_icon(int idx)
        {
            return NativeCalls.godot_icall_1_112(method_bind_8, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_ID");

        /// <summary>
        /// Return the ID of the item at index "idx".
        /// </summary>
        public int get_item_ID(int idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_9, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_metadata");

        public void get_item_metadata(int idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_10, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_item_disabled");

        public bool is_item_disabled(int idx)
        {
            return NativeCalls.godot_icall_1_33(method_bind_11, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_count");

        /// <summary>
        /// Return the amount of items in the OptionButton.
        /// </summary>
        public int get_item_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_separator");

        /// <summary>
        /// Add a separator to the list of items. Separators help to group items. Separator also takes up an index and is appended at the end.
        /// </summary>
        public void add_separator()
        {
            NativeCalls.godot_icall_0_7(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        /// <summary>
        /// Clear all the items in the [OptionButton].
        /// </summary>
        public void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "select");

        /// <summary>
        /// Select an item by index and make it the current item.
        /// </summary>
        public void @select(int idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_15, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_selected");

        /// <summary>
        /// Return the current item index
        /// </summary>
        public int get_selected()
        {
            return NativeCalls.godot_icall_0_0(method_bind_16, Object.GetPtr(this));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_selected_ID");

        public int get_selected_ID()
        {
            return NativeCalls.godot_icall_0_0(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_selected_metadata");

        public void get_selected_metadata()
        {
            NativeCalls.godot_icall_0_7(method_bind_18, Object.GetPtr(this));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_item");

        public void remove_item(int idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_19, Object.GetPtr(this), idx);
        }
    }
}
