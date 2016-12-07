using System;

namespace GodotEngine
{
    /// <summary>
    /// Horizontal slider. See [Slider]. This one goes from left (min) to right (max).
    /// </summary>
    public class HSlider : Slider
    {
        private const string nativeName = "HSlider";

        public HSlider() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_HSlider_Ctor(this);
        }

        internal HSlider(bool memoryOwn) : base(memoryOwn) {}

        ~HSlider()
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
