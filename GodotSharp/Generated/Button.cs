using System;

namespace GodotEngine
{
    /// <summary>
    /// Button is the standard themed button. It can contain text and an icon, and will display them according to the current [Theme].
    /// </summary>
    public class Button : BaseButton
    {
        /// <summary>
        /// Align the text to the left.
        /// </summary>
        public const int ALIGN_LEFT = 0;
        /// <summary>
        /// Center the text.
        /// </summary>
        public const int ALIGN_CENTER = 1;
        /// <summary>
        /// Align the text to the right.
        /// </summary>
        public const int ALIGN_RIGHT = 2;

        private const string nativeName = "Button";

        public Button() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Button_Ctor(this);
        }

        internal Button(bool memoryOwn) : base(memoryOwn) {}

        ~Button()
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
        /// Set the button text, which will be displayed inside the button area.
        /// </summary>
        public void set_text(string text)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), text);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_text");

        /// <summary>
        /// Return the button text.
        /// </summary>
        public string get_text()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_button_icon");

        /// <summary>
        /// Set the icon that will be displayed next to the text inside the button area.
        /// </summary>
        public void set_button_icon(Texture texture)
        {
            NativeCalls.godot_icall_1_21(method_bind_2, Object.GetPtr(this), Object.GetPtr(texture));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_button_icon");

        /// <summary>
        /// Return the button icon.
        /// </summary>
        public Texture get_button_icon()
        {
            return NativeCalls.godot_icall_0_80(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_flat");

        /// <summary>
        /// Set the [i]flat[/i] property of a Button. Flat buttons don't display decoration unless hovered or pressed.
        /// </summary>
        public void set_flat(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_4, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_clip_text");

        /// <summary>
        /// Set the [i]clip_text[/i] property of a Button. When this property is enabled, text that is too large to fit the button is clipped, when disabled (default) the Button will always be wide enough to hold the text.
        /// </summary>
        public void set_clip_text(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_5, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_clip_text");

        /// <summary>
        /// Return the state of the [i]clip_text[/i] property (see [method set_clip_text])
        /// </summary>
        public bool get_clip_text()
        {
            return NativeCalls.godot_icall_0_14(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_text_align");

        /// <summary>
        /// Set the text alignment policy, using one of the ALIGN_* constants.
        /// </summary>
        public void set_text_align(int align)
        {
            NativeCalls.godot_icall_1_4(method_bind_7, Object.GetPtr(this), align);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_text_align");

        /// <summary>
        /// Return the text alignment policy.
        /// </summary>
        public int get_text_align()
        {
            return NativeCalls.godot_icall_0_0(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_flat");

        /// <summary>
        /// Return the state of the [i]flat[/i] property (see [method set_flat]).
        /// </summary>
        public bool is_flat()
        {
            return NativeCalls.godot_icall_0_14(method_bind_9, Object.GetPtr(this));
        }
    }
}
