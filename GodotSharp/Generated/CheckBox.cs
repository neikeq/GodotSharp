using System;

namespace GodotEngine
{
    /// <summary>
    /// A checkbox allows the user to make a binary choice (choosing only one of two posible options), for example Answer 'yes' or 'no'.
    /// </summary>
    public class CheckBox : Button
    {
        private const string nativeName = "CheckBox";

        public CheckBox() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_CheckBox_Ctor(this);
        }

        internal CheckBox(bool memoryOwn) : base(memoryOwn) {}

        ~CheckBox()
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
