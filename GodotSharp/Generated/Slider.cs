using System;

namespace GodotEngine
{
    /// <summary>
    /// Base class for GUI Sliders.
    /// </summary>
    public class Slider : Range
    {
        private const string nativeName = "Slider";

        internal Slider() {}

        internal Slider(bool memoryOwn) : base(memoryOwn) {}

        ~Slider()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_ticks");

        /// <summary>
        /// Set amount of ticks to display in slider.
        /// </summary>
        public void set_ticks(int count)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), count);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_ticks");

        /// <summary>
        /// Return amounts of ticks to display on slider.
        /// </summary>
        public int get_ticks()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_ticks_on_borders");

        /// <summary>
        /// Return true if ticks are visible on borders.
        /// </summary>
        public bool get_ticks_on_borders()
        {
            return NativeCalls.godot_icall_0_14(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_ticks_on_borders");

        /// <summary>
        /// Set true if ticks are visible on borders.
        /// </summary>
        public void set_ticks_on_borders(bool ticks_on_border)
        {
            NativeCalls.godot_icall_1_13(method_bind_3, Object.GetPtr(this), ticks_on_border);
        }
    }
}
