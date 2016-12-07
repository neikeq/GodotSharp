using System;

namespace GodotEngine
{
    /// <summary>
    /// Vertical slider. See [Slider]. This one goes from left (min) to right (max).
    /// </summary>
    public class VSlider : Slider
    {
        private const string nativeName = "VSlider";

        public VSlider() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VSlider_Ctor(this);
        }

        internal VSlider(bool memoryOwn) : base(memoryOwn) {}

        ~VSlider()
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
