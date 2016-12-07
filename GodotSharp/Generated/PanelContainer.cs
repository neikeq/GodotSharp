using System;

namespace GodotEngine
{
    /// <summary>
    /// Panel container type. This container fits controls inside of the delimited area of a stylebox. It's useful for giving controls an outline.
    /// </summary>
    public class PanelContainer : Container
    {
        private const string nativeName = "PanelContainer";

        public PanelContainer() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_PanelContainer_Ctor(this);
        }

        internal PanelContainer(bool memoryOwn) : base(memoryOwn) {}

        ~PanelContainer()
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
