using System;

namespace GodotEngine
{
    /// <summary>
    /// Reference frame for GUI. It's just like an empty control, except a red box is displayed while editing around its size at all times.
    /// </summary>
    public class ReferenceFrame : Control
    {
        private const string nativeName = "ReferenceFrame";

        public ReferenceFrame() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ReferenceFrame_Ctor(this);
        }

        internal ReferenceFrame(bool memoryOwn) : base(memoryOwn) {}

        ~ReferenceFrame()
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
