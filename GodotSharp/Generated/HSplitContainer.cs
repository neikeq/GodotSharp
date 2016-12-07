using System;

namespace GodotEngine
{
    /// <summary>
    /// Horizontal split container. See [SplitContainer]. This goes from left to right.
    /// </summary>
    public class HSplitContainer : SplitContainer
    {
        private const string nativeName = "HSplitContainer";

        public HSplitContainer() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_HSplitContainer_Ctor(this);
        }

        internal HSplitContainer(bool memoryOwn) : base(memoryOwn) {}

        ~HSplitContainer()
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
