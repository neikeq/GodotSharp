using System;

namespace GodotEngine
{
    /// <summary>
    /// Windowdialog is the base class for all window-based dialogs. It's a by-default toplevel [Control] that draws a window decoration and allows motion and resizing.
    /// </summary>
    public class WindowDialog : Popup
    {
        private const string nativeName = "WindowDialog";

        public WindowDialog() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_WindowDialog_Ctor(this);
        }

        internal WindowDialog(bool memoryOwn) : base(memoryOwn) {}

        ~WindowDialog()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_title");

        /// <summary>
        /// Set the title of the window.
        /// </summary>
        public void set_title(string title)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), title);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_title");

        /// <summary>
        /// Return the title of the window.
        /// </summary>
        public string get_title()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_close_button");

        /// <summary>
        /// Return the close [TextureButton].
        /// </summary>
        public TextureButton get_close_button()
        {
            return NativeCalls.godot_icall_0_566(method_bind_2, Object.GetPtr(this));
        }
    }
}
