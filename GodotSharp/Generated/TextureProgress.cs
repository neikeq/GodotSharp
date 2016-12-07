using System;

namespace GodotEngine
{
    /// <summary>
    /// [ProgressBar] implementation that is easier to theme (by just passing a few textures).
    /// </summary>
    public class TextureProgress : Range
    {
        public const int FILL_LEFT_TO_RIGHT = 0;
        public const int FILL_RIGHT_TO_LEFT = 1;
        public const int FILL_TOP_TO_BOTTOM = 2;
        public const int FILL_BOTTOM_TO_TOP = 3;
        public const int FILL_CLOCKWISE = 4;
        public const int FILL_COUNTER_CLOCKWISE = 5;

        private const string nativeName = "TextureProgress";

        public TextureProgress() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_TextureProgress_Ctor(this);
        }

        internal TextureProgress(bool memoryOwn) : base(memoryOwn) {}

        ~TextureProgress()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_under_texture");

        public void set_under_texture(Object tex)
        {
            NativeCalls.godot_icall_1_20(method_bind_0, Object.GetPtr(this), Object.GetPtr(tex));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_under_texture");

        public Object get_under_texture()
        {
            return NativeCalls.godot_icall_0_12(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_progress_texture");

        public void set_progress_texture(Object tex)
        {
            NativeCalls.godot_icall_1_20(method_bind_2, Object.GetPtr(this), Object.GetPtr(tex));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_progress_texture");

        public Object get_progress_texture()
        {
            return NativeCalls.godot_icall_0_12(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_over_texture");

        public void set_over_texture(Object tex)
        {
            NativeCalls.godot_icall_1_20(method_bind_4, Object.GetPtr(this), Object.GetPtr(tex));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_over_texture");

        public Object get_over_texture()
        {
            return NativeCalls.godot_icall_0_12(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_fill_mode");

        public void set_fill_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_6, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_fill_mode");

        public int get_fill_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_radial_initial_angle");

        public void set_radial_initial_angle(float mode)
        {
            NativeCalls.godot_icall_1_45(method_bind_8, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_radial_initial_angle");

        public float get_radial_initial_angle()
        {
            return NativeCalls.godot_icall_0_46(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_radial_center_offset");

        public void set_radial_center_offset(Vector2 mode)
        {
            NativeCalls.godot_icall_1_23(method_bind_10, Object.GetPtr(this), ref mode);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_radial_center_offset");

        public Vector2 get_radial_center_offset()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_11, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_fill_degrees");

        public void set_fill_degrees(float mode)
        {
            NativeCalls.godot_icall_1_45(method_bind_12, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_fill_degrees");

        public float get_fill_degrees()
        {
            return NativeCalls.godot_icall_0_46(method_bind_13, Object.GetPtr(this));
        }
    }
}
