using System;

namespace GodotEngine
{
    /// <summary>
    /// Vertical button array. See [ButtonArray].
    /// </summary>
    public class VButtonArray : ButtonArray
    {
        private const string nativeName = "VButtonArray";

        public VButtonArray() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VButtonArray_Ctor(this);
        }

        internal VButtonArray(bool memoryOwn) : base(memoryOwn) {}

        ~VButtonArray()
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
