using System;

namespace GodotEngine
{
    public class Patch9Frame : Control
    {
        private const string nativeName = "Patch9Frame";

        public Patch9Frame() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Patch9Frame_Ctor(this);
        }

        internal Patch9Frame(bool memoryOwn) : base(memoryOwn) {}

        ~Patch9Frame()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_texture");

        public void set_texture(Object texture)
        {
            NativeCalls.godot_icall_1_20(method_bind_0, Object.GetPtr(this), Object.GetPtr(texture));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_texture");

        public Object get_texture()
        {
            return NativeCalls.godot_icall_0_12(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_modulate");

        public void set_modulate(Color modulate)
        {
            NativeCalls.godot_icall_1_25(method_bind_2, Object.GetPtr(this), ref modulate);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_modulate");

        public Color get_modulate()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_3, Object.GetPtr(this));
            return (Color)ret;
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_patch_margin");

        public void set_patch_margin(int margin, int @value)
        {
            NativeCalls.godot_icall_2_5(method_bind_4, Object.GetPtr(this), margin, @value);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_patch_margin");

        public int get_patch_margin(int margin)
        {
            return NativeCalls.godot_icall_1_28(method_bind_5, Object.GetPtr(this), margin);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_region_rect");

        public void set_region_rect(Rect2 rect)
        {
            NativeCalls.godot_icall_1_81(method_bind_6, Object.GetPtr(this), ref rect);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_region_rect");

        public Rect2 get_region_rect()
        {
            object ret = NativeCalls.godot_icall_0_82(method_bind_7, Object.GetPtr(this));
            return (Rect2)ret;
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_draw_center");

        public void set_draw_center(bool draw_center)
        {
            NativeCalls.godot_icall_1_13(method_bind_8, Object.GetPtr(this), draw_center);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_draw_center");

        public bool get_draw_center()
        {
            return NativeCalls.godot_icall_0_14(method_bind_9, Object.GetPtr(this));
        }
    }
}
