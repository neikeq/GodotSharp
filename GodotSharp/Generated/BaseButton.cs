using System;

namespace GodotEngine
{
    /// <summary>
    /// BaseButton is the abstract base class for buttons, so it shouldn't be used directly (It doesn't display anything). Other types of buttons inherit from it.
    /// </summary>
    public class BaseButton : Control
    {
        /// <summary>
        /// The normal state (i.e. not pressed, not hovered, not toggled and enabled) of buttons.
        /// </summary>
        public const int DRAW_NORMAL = 0;
        /// <summary>
        /// The state of buttons are pressed.
        /// </summary>
        public const int DRAW_PRESSED = 1;
        /// <summary>
        /// The state of buttons are hovered.
        /// </summary>
        public const int DRAW_HOVER = 2;
        /// <summary>
        /// The state of buttons are disabled.
        /// </summary>
        public const int DRAW_DISABLED = 3;

        private const string nativeName = "BaseButton";

        internal BaseButton() {}

        internal BaseButton(bool memoryOwn) : base(memoryOwn) {}

        ~BaseButton()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_pressed");

        /// <summary>
        /// Set the button to pressed state (only if toggle_mode is active).
        /// </summary>
        public void set_pressed(bool pressed)
        {
            NativeCalls.godot_icall_1_13(method_bind_0, Object.GetPtr(this), pressed);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_pressed");

        /// <summary>
        /// If toggle_mode is active, return whether the button is toggled. If toggle_mode is not active, return whether the button is pressed down.
        /// </summary>
        public bool is_pressed()
        {
            return NativeCalls.godot_icall_0_14(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_hovered");

        /// <summary>
        /// Return true if mouse entered the button before it exit.
        /// </summary>
        public bool is_hovered()
        {
            return NativeCalls.godot_icall_0_14(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_toggle_mode");

        /// <summary>
        /// Set the button toggle_mode property. Toggle mode makes the button flip state between pressed and unpressed each time its area is clicked.
        /// </summary>
        public void set_toggle_mode(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_3, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_toggle_mode");

        /// <summary>
        /// Return the toggle_mode property (see [method set_toggle_mode]).
        /// </summary>
        public bool is_toggle_mode()
        {
            return NativeCalls.godot_icall_0_14(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_disabled");

        /// <summary>
        /// Set the button into disabled state. When a button is disabled, it can't be clicked or toggled.
        /// </summary>
        public void set_disabled(bool disabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_5, Object.GetPtr(this), disabled);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_disabled");

        /// <summary>
        /// Return whether the button is in disabled state (see [method set_disabled]).
        /// </summary>
        public bool is_disabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_click_on_press");

        /// <summary>
        /// Set the button click_on_press mode. This mode generates click events when a mouse button or key is just pressed (by default events are generated when the button/keys are released and both press and release occur in the visual area of the Button).
        /// </summary>
        public void set_click_on_press(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_7, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_click_on_press");

        /// <summary>
        /// Return the state of the click_on_press property (see [method set_click_on_press]).
        /// </summary>
        public bool get_click_on_press()
        {
            return NativeCalls.godot_icall_0_14(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_draw_mode");

        /// <summary>
        /// Return the visual state used to draw the button. This is useful mainly when implementing your own draw code by either overriding _draw() or connecting to "draw" signal. The visual state of the button is defined by the DRAW_* enum.
        /// </summary>
        public int get_draw_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_enabled_focus_mode");

        /// <summary>
        /// Sets the focus access mode to use when switching between enabled/disabled (see [method Control.set_focus_mode] and [method set_disabled]).
        /// </summary>
        public void set_enabled_focus_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_10, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_enabled_focus_mode");

        /// <summary>
        /// Returns focus access mode used when switching between enabled/disabled (see [method Control.set_focus_mode] and [method set_disabled]).
        /// </summary>
        public int get_enabled_focus_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shortcut");

        public void set_shortcut(Object shortcut)
        {
            NativeCalls.godot_icall_1_20(method_bind_12, Object.GetPtr(this), Object.GetPtr(shortcut));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shortcut");

        public Object get_shortcut()
        {
            return NativeCalls.godot_icall_0_12(method_bind_13, Object.GetPtr(this));
        }
    }
}
