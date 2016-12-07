using System;

namespace GodotEngine
{
    public class SpriteBase3D : GeometryInstance
    {
        public const int FLAG_TRANSPARENT = 0;
        public const int FLAG_SHADED = 1;
        public const int FLAG_MAX = 2;
        public const int ALPHA_CUT_DISABLED = 0;
        public const int ALPHA_CUT_DISCARD = 1;
        public const int ALPHA_CUT_OPAQUE_PREPASS = 2;

        private const string nativeName = "SpriteBase3D";

        internal SpriteBase3D() {}

        internal SpriteBase3D(bool memoryOwn) : base(memoryOwn) {}

        ~SpriteBase3D()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_centered");

        public void set_centered(bool centered)
        {
            NativeCalls.godot_icall_1_13(method_bind_0, Object.GetPtr(this), centered);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_centered");

        public bool is_centered()
        {
            return NativeCalls.godot_icall_0_14(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_offset");

        public void set_offset(Vector2 offset)
        {
            NativeCalls.godot_icall_1_23(method_bind_2, Object.GetPtr(this), ref offset);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_offset");

        public Vector2 get_offset()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_3, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_flip_h");

        public void set_flip_h(bool flip_h)
        {
            NativeCalls.godot_icall_1_13(method_bind_4, Object.GetPtr(this), flip_h);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_flipped_h");

        public bool is_flipped_h()
        {
            return NativeCalls.godot_icall_0_14(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_flip_v");

        public void set_flip_v(bool flip_v)
        {
            NativeCalls.godot_icall_1_13(method_bind_6, Object.GetPtr(this), flip_v);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_flipped_v");

        public bool is_flipped_v()
        {
            return NativeCalls.godot_icall_0_14(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_modulate");

        public void set_modulate(Color modulate)
        {
            NativeCalls.godot_icall_1_25(method_bind_8, Object.GetPtr(this), ref modulate);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_modulate");

        public Color get_modulate()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_9, Object.GetPtr(this));
            return (Color)ret;
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_opacity");

        public void set_opacity(float opacity)
        {
            NativeCalls.godot_icall_1_45(method_bind_10, Object.GetPtr(this), opacity);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_opacity");

        public float get_opacity()
        {
            return NativeCalls.godot_icall_0_46(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_pixel_size");

        public void set_pixel_size(float pixel_size)
        {
            NativeCalls.godot_icall_1_45(method_bind_12, Object.GetPtr(this), pixel_size);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pixel_size");

        public float get_pixel_size()
        {
            return NativeCalls.godot_icall_0_46(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_axis");

        public void set_axis(int axis)
        {
            NativeCalls.godot_icall_1_4(method_bind_14, Object.GetPtr(this), axis);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_axis");

        public int get_axis()
        {
            return NativeCalls.godot_icall_0_0(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_draw_flag");

        public void set_draw_flag(int flag, bool enabled)
        {
            NativeCalls.godot_icall_2_32(method_bind_16, Object.GetPtr(this), flag, enabled);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_draw_flag");

        public bool get_draw_flag(int flag)
        {
            return NativeCalls.godot_icall_1_33(method_bind_17, Object.GetPtr(this), flag);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_alpha_cut_mode");

        public void set_alpha_cut_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_18, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_alpha_cut_mode");

        public int get_alpha_cut_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_rect");

        public Rect2 get_item_rect()
        {
            object ret = NativeCalls.godot_icall_0_82(method_bind_20, Object.GetPtr(this));
            return (Rect2)ret;
        }
    }
}
