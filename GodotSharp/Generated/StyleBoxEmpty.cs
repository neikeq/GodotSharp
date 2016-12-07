using System;

namespace GodotEngine
{
    /// <summary>
    /// Empty stylebox (really does not display anything).
    /// </summary>
    public class StyleBoxEmpty : StyleBox
    {
        private const string nativeName = "StyleBoxEmpty";

        public StyleBoxEmpty() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_StyleBoxEmpty_Ctor(this);
        }

        internal StyleBoxEmpty(bool memoryOwn) : base(memoryOwn) {}

        ~StyleBoxEmpty()
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
                    NativeCalls.godot_icall_StyleBoxEmpty_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
