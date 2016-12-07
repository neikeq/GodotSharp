using System;

namespace GodotEngine
{
    /// <summary>
    /// Dialog for confirmation of actions. This dialog inherits from [AcceptDialog], but has by default an OK and Cancel button (in host OS order).
    /// </summary>
    public class ConfirmationDialog : AcceptDialog
    {
        private const string nativeName = "ConfirmationDialog";

        public ConfirmationDialog() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ConfirmationDialog_Ctor(this);
        }

        internal ConfirmationDialog(bool memoryOwn) : base(memoryOwn) {}

        ~ConfirmationDialog()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_cancel");

        /// <summary>
        /// Return the cancel button.
        /// </summary>
        public Button get_cancel()
        {
            return NativeCalls.godot_icall_0_174(method_bind_0, Object.GetPtr(this));
        }
    }
}
