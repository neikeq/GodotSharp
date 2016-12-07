using System;

namespace GodotEngine
{
    /// <summary>
    /// This kind of buttons are primarily used when the interaction with the button causes a context change (like linking to a web page).
    /// </summary>
    public class LinkButton : BaseButton
    {
        /// <summary>
        /// The LinkButton will always show an underline at the bottom of its text
        /// </summary>
        public const int UNDERLINE_MODE_ALWAYS = 0;
        /// <summary>
        /// The LinkButton will show an underline at the bottom of its text when the mouse cursor is over it.
        /// </summary>
        public const int UNDERLINE_MODE_ON_HOVER = 1;
        /// <summary>
        /// The LinkButton will never show an underline at the bottom of its text.
        /// </summary>
        public const int UNDERLINE_MODE_NEVER = 2;

        private const string nativeName = "LinkButton";

        public LinkButton() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_LinkButton_Ctor(this);
        }

        internal LinkButton(bool memoryOwn) : base(memoryOwn) {}

        ~LinkButton()
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
        /// Sets the text of the button.
        /// </summary>
        public void set_text(string text)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), text);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_text");

        /// <summary>
        /// Returns the text of the button.
        /// </summary>
        public string get_text()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_underline_mode");

        /// <summary>
        /// Sets the underline mode for this button, the argument must be one of the [LinkButton] constants (see constants section).
        /// </summary>
        public void set_underline_mode(int underline_mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), underline_mode);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_underline_mode");

        /// <summary>
        /// Returns the underline mode for this button.
        /// </summary>
        public int get_underline_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }
    }
}
