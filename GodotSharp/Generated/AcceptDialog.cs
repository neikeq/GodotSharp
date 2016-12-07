using System;

namespace GodotEngine
{
    /// <summary>
    /// This dialog is useful for small notifications to the user about an event. It can only be accepted or closed, with the same result.
    /// </summary>
    public class AcceptDialog : WindowDialog
    {
        private const string nativeName = "AcceptDialog";

        public AcceptDialog() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_AcceptDialog_Ctor(this);
        }

        internal AcceptDialog(bool memoryOwn) : base(memoryOwn) {}

        ~AcceptDialog()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_ok");

        /// <summary>
        /// Return the OK Button.
        /// </summary>
        public Object get_ok()
        {
            return NativeCalls.godot_icall_0_12(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_label");

        /// <summary>
        /// Return the label used for built-in text.
        /// </summary>
        public Object get_label()
        {
            return NativeCalls.godot_icall_0_12(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_hide_on_ok");

        /// <summary>
        /// Set whether the dialog is hidden when accepted (default true).
        /// </summary>
        public void set_hide_on_ok(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_2, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_hide_on_ok");

        /// <summary>
        /// Return true if the dialog will be hidden when accepted (default true).
        /// </summary>
        public bool get_hide_on_ok()
        {
            return NativeCalls.godot_icall_0_14(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_button");

        /// <summary>
        /// Add custom button to the dialog and return the created button.
        /// The button titled with [i]text[/i] and the [i]action[/i] will be passed to [custom_action] signal when it is pressed.
        /// </summary>
        public Button add_button(string text, bool right = false, string action = "")
        {
            return NativeCalls.godot_icall_3_15(method_bind_4, Object.GetPtr(this), text, right, action);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_cancel");

        /// <summary>
        /// Add custom cancel button to the dialog and return the created button.
        /// </summary>
        public Button add_cancel(string name)
        {
            return NativeCalls.godot_icall_1_16(method_bind_5, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "register_text_enter");

        /// <summary>
        /// Register a [LineEdit] in the dialog. When the enter key is pressed, the dialog will be accepted.
        /// </summary>
        public LineEdit register_text_enter(Object line_edit)
        {
            return NativeCalls.godot_icall_1_17(method_bind_6, Object.GetPtr(this), Object.GetPtr(line_edit));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_text");

        /// <summary>
        /// Set the built-in label text.
        /// </summary>
        public void set_text(string text)
        {
            NativeCalls.godot_icall_1_18(method_bind_7, Object.GetPtr(this), text);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_text");

        /// <summary>
        /// Return the built-in label text.
        /// </summary>
        public string get_text()
        {
            return NativeCalls.godot_icall_0_19(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_child_rect");

        public void set_child_rect(Control child)
        {
            NativeCalls.godot_icall_1_20(method_bind_9, Object.GetPtr(this), Object.GetPtr(child));
        }
    }
}
