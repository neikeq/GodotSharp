using System;

namespace GodotEngine
{
    /// <summary>
    /// Vertical box container. See [BoxContainer].
    /// </summary>
    public class VBoxContainer : BoxContainer
    {
        private const string nativeName = "VBoxContainer";

        public VBoxContainer() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VBoxContainer_Ctor(this);
        }

        internal VBoxContainer(bool memoryOwn) : base(memoryOwn) {}

        ~VBoxContainer()
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
