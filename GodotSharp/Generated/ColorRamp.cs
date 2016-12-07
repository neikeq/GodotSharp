using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Given a set of colors, this node will interpolate them in order, meaning, that if you have color 1, color 2 and color3, the ramp will interpolate (generate the colors between two colors) from color 1 to color 2 and from color 2 to color 3. Initially the ramp will have 2 colors (black and white), one (black) at ramp lower offset offset 0 and the other (white) at the ramp higher offset 1.
    /// </summary>
    public class ColorRamp : Resource
    {
        private const string nativeName = "ColorRamp";

        public ColorRamp() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ColorRamp_Ctor(this);
        }

        internal ColorRamp(bool memoryOwn) : base(memoryOwn) {}

        ~ColorRamp()
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
                    NativeCalls.godot_icall_ColorRamp_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_point");

        /// <summary>
        /// Adds the specified color to the end of the ramp, with the specified offset
        /// </summary>
        public void add_point(float offset, Color color)
        {
            NativeCalls.godot_icall_2_159(method_bind_0, Object.GetPtr(this), offset, ref color);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_point");

        /// <summary>
        /// Removes the color at the index [i]offset[/i]
        /// </summary>
        public void remove_point(int offset)
        {
            NativeCalls.godot_icall_1_4(method_bind_1, Object.GetPtr(this), offset);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_offset");

        /// <summary>
        /// Sets the offset for the ramp color at index [i]point[/i]
        /// </summary>
        public void set_offset(int point, float offset)
        {
            NativeCalls.godot_icall_2_36(method_bind_2, Object.GetPtr(this), point, offset);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_offset");

        /// <summary>
        /// Returns the offset of the ramp color at index [i]point[/i]
        /// </summary>
        public float get_offset(int point)
        {
            return NativeCalls.godot_icall_1_3(method_bind_3, Object.GetPtr(this), point);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_color");

        /// <summary>
        /// Sets the color of the ramp color at index [i]point[/i]
        /// </summary>
        public void set_color(int point, Color color)
        {
            NativeCalls.godot_icall_2_160(method_bind_4, Object.GetPtr(this), point, ref color);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_color");

        /// <summary>
        /// Returns the color of the ramp color at index [i]point[/i]
        /// </summary>
        public Color get_color(int point)
        {
            object ret = NativeCalls.godot_icall_1_161(method_bind_5, Object.GetPtr(this), point);
            return (Color)ret;
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "interpolate");

        /// <summary>
        /// Returns the interpolated color specified by [i]offset[/i]
        /// </summary>
        public Color interpolate(float offset)
        {
            object ret = NativeCalls.godot_icall_1_162(method_bind_6, Object.GetPtr(this), offset);
            return (Color)ret;
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_point_count");

        /// <summary>
        /// Returns the number of colors in the ramp
        /// </summary>
        public int get_point_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_offsets");

        /// <summary>
        /// Sets the offset for the specified amount of elements. Calling this function with a different number of elements than previously defined causes the ramp to resize its colors and offsets array to accomodate the new elements, all new colors will be black by default.
        /// </summary>
        public void set_offsets(List<float> offsets)
        {
            NativeCalls.godot_icall_1_163(method_bind_8, Object.GetPtr(this), offsets.ToArray());
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_offsets");

        /// <summary>
        /// Returns the offsets for the colors in this ramp
        /// </summary>
        public List<float> get_offsets()
        {
            float[] ret = NativeCalls.godot_icall_0_164(method_bind_9, Object.GetPtr(this));
            return new List<float>(ret);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_colors");

        /// <summary>
        /// Sets the colors for the specified amount of elements. Calling this function with a different number of elements than previously defined causes the ramp to resize its colors and offsets array to accomodate the new elements.
        /// </summary>
        public void set_colors(List<Color> colors)
        {
            NativeCalls.godot_icall_1_165(method_bind_10, Object.GetPtr(this), colors.ToArray());
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_colors");

        /// <summary>
        /// Returns the colors in the ramp
        /// </summary>
        public List<Color> get_colors()
        {
            Color[] ret = NativeCalls.godot_icall_0_166(method_bind_11, Object.GetPtr(this));
            return new List<Color>(ret);
        }
    }
}
