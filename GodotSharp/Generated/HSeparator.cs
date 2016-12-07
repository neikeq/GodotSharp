using System;

namespace GodotEngine
{
    /// <summary>
    /// Horizontal separator. See [Separator]. It is used to separate objects vertically, though (but it looks horizontal!).
    /// </summary>
    public class HSeparator : Separator
    {
        private const string nativeName = "HSeparator";

        public HSeparator() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_HSeparator_Ctor(this);
        }

        internal HSeparator(bool memoryOwn) : base(memoryOwn) {}

        ~HSeparator()
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
