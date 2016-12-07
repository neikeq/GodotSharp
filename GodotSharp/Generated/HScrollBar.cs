using System;

namespace GodotEngine
{
    /// <summary>
    /// Horizontal scroll bar. See [ScrollBar]. This one goes from left (min) to right (max).
    /// </summary>
    public class HScrollBar : ScrollBar
    {
        private const string nativeName = "HScrollBar";

        public HScrollBar() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_HScrollBar_Ctor(this);
        }

        internal HScrollBar(bool memoryOwn) : base(memoryOwn) {}

        ~HScrollBar()
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
