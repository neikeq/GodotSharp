using System;

namespace GodotEngine
{
    /// <summary>
    /// Stylebox of a single color. Displays the stylebox of a single color, alternatively a border with light/dark colors can be assigned.
    /// </summary>
    public class StyleBoxFlat : StyleBox
    {
        private const string nativeName = "StyleBoxFlat";

        public StyleBoxFlat() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_StyleBoxFlat_Ctor(this);
        }

        internal StyleBoxFlat(bool memoryOwn) : base(memoryOwn) {}

        ~StyleBoxFlat()
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
                    NativeCalls.godot_icall_StyleBoxFlat_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bg_color");

        public void set_bg_color(Color color)
        {
            NativeCalls.godot_icall_1_25(method_bind_0, Object.GetPtr(this), ref color);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bg_color");

        public Color get_bg_color()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_1, Object.GetPtr(this));
            return (Color)ret;
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_light_color");

        public void set_light_color(Color color)
        {
            NativeCalls.godot_icall_1_25(method_bind_2, Object.GetPtr(this), ref color);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_light_color");

        public Color get_light_color()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_3, Object.GetPtr(this));
            return (Color)ret;
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_dark_color");

        public void set_dark_color(Color color)
        {
            NativeCalls.godot_icall_1_25(method_bind_4, Object.GetPtr(this), ref color);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_dark_color");

        public Color get_dark_color()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_5, Object.GetPtr(this));
            return (Color)ret;
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_border_size");

        public void set_border_size(int size)
        {
            NativeCalls.godot_icall_1_4(method_bind_6, Object.GetPtr(this), size);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_border_size");

        public int get_border_size()
        {
            return NativeCalls.godot_icall_0_0(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_border_blend");

        public void set_border_blend(bool blend)
        {
            NativeCalls.godot_icall_1_13(method_bind_8, Object.GetPtr(this), blend);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_border_blend");

        public bool get_border_blend()
        {
            return NativeCalls.godot_icall_0_14(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_draw_center");

        public void set_draw_center(bool size)
        {
            NativeCalls.godot_icall_1_13(method_bind_10, Object.GetPtr(this), size);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_draw_center");

        public bool get_draw_center()
        {
            return NativeCalls.godot_icall_0_14(method_bind_11, Object.GetPtr(this));
        }
    }
}
