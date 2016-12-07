using System;

namespace GodotEngine
{
    public class VScrollBar : ScrollBar
    {
        private const string nativeName = "VScrollBar";

        public VScrollBar() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VScrollBar_Ctor(this);
        }

        internal VScrollBar(bool memoryOwn) : base(memoryOwn) {}

        ~VScrollBar()
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
