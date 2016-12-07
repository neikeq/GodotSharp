using System;

namespace GodotEngine
{
    /// <summary>
    /// This is a simple color picker [Control]. It's useful for selecting a color from an RGB/RGBA colorspace.
    /// </summary>
    public class ColorPicker : BoxContainer
    {
        private const string nativeName = "ColorPicker";

        public ColorPicker() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ColorPicker_Ctor(this);
        }

        internal ColorPicker(bool memoryOwn) : base(memoryOwn) {}

        ~ColorPicker()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_color");

        /// <summary>
        /// Select the current color.
        /// </summary>
        public void set_color(Color color)
        {
            NativeCalls.godot_icall_1_25(method_bind_0, Object.GetPtr(this), ref color);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_color");

        /// <summary>
        /// Return the current (edited) color.
        /// </summary>
        public Color get_color()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_1, Object.GetPtr(this));
            return (Color)ret;
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_raw_mode");

        /// <summary>
        /// Set whether this color picker is using raw mode or not, see [method is_raw_mode].
        /// </summary>
        public void set_raw_mode(bool mode)
        {
            NativeCalls.godot_icall_1_13(method_bind_2, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_raw_mode");

        /// <summary>
        /// Returns whether this color picker is in raw mode or not, raw mode will allow the color R, G, B component values to go beyond 1, you have to consider that the max value for color components is 1, going beyond that value will not have effect in the color, but can be used for special operations that require it (like tinting without darkening or rendering sprites in HDR).
        /// </summary>
        public bool is_raw_mode()
        {
            return NativeCalls.godot_icall_0_14(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_edit_alpha");

        /// <summary>
        /// Set true if you want the color to have an alpha channel (transparency), or false if you want a solid color.
        /// </summary>
        public void set_edit_alpha(bool show)
        {
            NativeCalls.godot_icall_1_13(method_bind_4, Object.GetPtr(this), show);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_editing_alpha");

        /// <summary>
        /// Returns whether the color has transparency or not.
        /// </summary>
        public bool is_editing_alpha()
        {
            return NativeCalls.godot_icall_0_14(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_preset");

        /// <summary>
        /// Adds the current selected to color to a list of colors (presets), the presets will be displayed in the color picker and the user will be able to select them, notice that the presets list is only for this color picker.
        /// </summary>
        public void add_preset(Color arg0)
        {
            NativeCalls.godot_icall_1_25(method_bind_6, Object.GetPtr(this), ref arg0);
        }
    }
}
