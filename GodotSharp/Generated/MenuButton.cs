using System;

namespace GodotEngine
{
    /// <summary>
    /// Special button that brings up a [PopupMenu] when clicked. That's pretty much all it does, as it's just a helper class when building GUIs.
    /// </summary>
    public class MenuButton : Button
    {
        private const string nativeName = "MenuButton";

        public MenuButton() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_MenuButton_Ctor(this);
        }

        internal MenuButton(bool memoryOwn) : base(memoryOwn) {}

        ~MenuButton()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_popup");

        /// <summary>
        /// Return the [PopupMenu] contained in this button.
        /// </summary>
        public PopupMenu get_popup()
        {
            return NativeCalls.godot_icall_0_274(method_bind_0, Object.GetPtr(this));
        }
    }
}
