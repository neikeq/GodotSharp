using System;

namespace GodotEngine
{
    /// <summary>
    /// Array of Buttons. A ButtonArray is useful to have an array of buttons laid out vertically or horizontally. Only one button can be selected, and is referenced by its index in the array (first button is 0, second button is 1, etc.).
    /// This is useful [i]e.g.[/i] for joypad-friendly interfaces and option menus.
    /// </summary>
    public class ButtonArray : Control
    {
        /// <summary>
        /// Align buttons at the beginning.
        /// </summary>
        public const int ALIGN_BEGIN = 0;
        /// <summary>
        /// Align buttons in the middle.
        /// </summary>
        public const int ALIGN_CENTER = 1;
        /// <summary>
        /// Align buttons at the end.
        /// </summary>
        public const int ALIGN_END = 2;
        /// <summary>
        /// Spread the buttons, but keep them small.
        /// </summary>
        public const int ALIGN_FILL = 3;
        /// <summary>
        /// Spread the buttons, but expand them.
        /// </summary>
        public const int ALIGN_EXPAND_FILL = 4;

        private const string nativeName = "ButtonArray";

        internal ButtonArray() {}

        internal ButtonArray(bool memoryOwn) : base(memoryOwn) {}

        ~ButtonArray()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_button");

        public void add_button(string text, string tooltip = "")
        {
            NativeCalls.godot_icall_2_48(method_bind_0, Object.GetPtr(this), text, tooltip);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_icon_button");

        public void add_icon_button(Texture icon, string text = "", string tooltip = "")
        {
            NativeCalls.godot_icall_3_114(method_bind_1, Object.GetPtr(this), Object.GetPtr(icon), text, tooltip);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_button_text");

        /// <summary>
        /// Define the text of the specified button.
        /// </summary>
        public void set_button_text(int button_idx, string text)
        {
            NativeCalls.godot_icall_2_61(method_bind_2, Object.GetPtr(this), button_idx, text);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_button_tooltip");

        public void set_button_tooltip(int button_idx, string text)
        {
            NativeCalls.godot_icall_2_61(method_bind_3, Object.GetPtr(this), button_idx, text);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_button_icon");

        /// <summary>
        /// Set the icon of the specified button.
        /// </summary>
        public void set_button_icon(int button_idx, Texture icon)
        {
            NativeCalls.godot_icall_2_115(method_bind_4, Object.GetPtr(this), button_idx, Object.GetPtr(icon));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_button_text");

        /// <summary>
        /// Return the text of the specified button.
        /// </summary>
        public string get_button_text(int button_idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_5, Object.GetPtr(this), button_idx);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_button_tooltip");

        public string get_button_tooltip(int button_idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_6, Object.GetPtr(this), button_idx);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_button_icon");

        /// <summary>
        /// Return the icon of the specified button.
        /// </summary>
        public Texture get_button_icon(int button_idx)
        {
            return NativeCalls.godot_icall_1_112(method_bind_7, Object.GetPtr(this), button_idx);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_button_count");

        /// <summary>
        /// Return the amount of buttons in the array.
        /// </summary>
        public int get_button_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_flat");

        public void set_flat(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_9, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_flat");

        public bool is_flat()
        {
            return NativeCalls.godot_icall_0_14(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_selected");

        /// <summary>
        /// Return the index of the currently selected button in the array.
        /// </summary>
        public int get_selected()
        {
            return NativeCalls.godot_icall_0_0(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_hovered");

        /// <summary>
        /// Return the index of the currently hovered button in the array.
        /// </summary>
        public int get_hovered()
        {
            return NativeCalls.godot_icall_0_0(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_selected");

        /// <summary>
        /// Select a button in the array based on the given index.
        /// </summary>
        public void set_selected(int button_idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_13, Object.GetPtr(this), button_idx);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "erase_button");

        /// <summary>
        /// Remove the specified button in the array.
        /// </summary>
        public void erase_button(int button_idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_14, Object.GetPtr(this), button_idx);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        /// <summary>
        /// Remove all buttons from the array.
        /// </summary>
        public void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_15, Object.GetPtr(this));
        }
    }
}
