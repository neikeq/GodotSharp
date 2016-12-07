using System;

namespace GodotEngine
{
    /// <summary>
    /// Horizontal button array. See [ButtonArray].
    /// </summary>
    public class HButtonArray : ButtonArray
    {
        private const string nativeName = "HButtonArray";

        public HButtonArray() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_HButtonArray_Ctor(this);
        }

        internal HButtonArray(bool memoryOwn) : base(memoryOwn) {}

        ~HButtonArray()
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
