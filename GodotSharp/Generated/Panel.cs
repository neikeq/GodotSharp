using System;

namespace GodotEngine
{
    /// <summary>
    /// Panel is a [Control] that displays an opaque background. It's commonly used as a parent and container for other types of [Control] nodes.
    /// </summary>
    public class Panel : Control
    {
        private const string nativeName = "Panel";

        public Panel() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Panel_Ctor(this);
        }

        internal Panel(bool memoryOwn) : base(memoryOwn) {}

        ~Panel()
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
