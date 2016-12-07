using System;

namespace GodotEngine
{
    /// <summary>
    /// Class for displaying popups with a panel background. In some cases it might be simpler to use than [Popup], since it provides a configurable background. If you are making windows, better check [WindowDialog].
    /// </summary>
    public class PopupPanel : Popup
    {
        private const string nativeName = "PopupPanel";

        public PopupPanel() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_PopupPanel_Ctor(this);
        }

        internal PopupPanel(bool memoryOwn) : base(memoryOwn) {}

        ~PopupPanel()
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
