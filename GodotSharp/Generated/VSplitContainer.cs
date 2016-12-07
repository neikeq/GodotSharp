using System;

namespace GodotEngine
{
    /// <summary>
    /// Vertical split container. See [SplitContainer]. This goes from left to right.
    /// </summary>
    public class VSplitContainer : SplitContainer
    {
        private const string nativeName = "VSplitContainer";

        public VSplitContainer() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VSplitContainer_Ctor(this);
        }

        internal VSplitContainer(bool memoryOwn) : base(memoryOwn) {}

        ~VSplitContainer()
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
