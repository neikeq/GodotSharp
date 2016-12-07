using System;

namespace GodotEngine
{
    /// <summary>
    /// General purpose progress bar. Shows fill percentage from right to left.
    /// </summary>
    public class ProgressBar : Range
    {
        private const string nativeName = "ProgressBar";

        public ProgressBar() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ProgressBar_Ctor(this);
        }

        internal ProgressBar(bool memoryOwn) : base(memoryOwn) {}

        ~ProgressBar()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_percent_visible");

        public void set_percent_visible(bool visible)
        {
            NativeCalls.godot_icall_1_13(method_bind_0, Object.GetPtr(this), visible);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_percent_visible");

        public bool is_percent_visible()
        {
            return NativeCalls.godot_icall_0_14(method_bind_1, Object.GetPtr(this));
        }
    }
}
