using System;

namespace GodotEngine
{
    /// <summary>
    /// PopupDialog is a base class for popup dialogs, along with [WindowDialog].
    /// </summary>
    public class PopupDialog : Popup
    {
        private const string nativeName = "PopupDialog";

        public PopupDialog() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_PopupDialog_Ctor(this);
        }

        internal PopupDialog(bool memoryOwn) : base(memoryOwn) {}

        ~PopupDialog()
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
    }
}
