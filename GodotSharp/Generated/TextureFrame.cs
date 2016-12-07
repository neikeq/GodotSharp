using System;

namespace GodotEngine
{
    /// <summary>
    /// Control frame that simply draws an assigned texture. It can stretch or not. It's a simple way to just show an image in a UI.
    /// </summary>
    public class TextureFrame : Control
    {
        public const int STRETCH_SCALE_ON_EXPAND = 0;
        public const int STRETCH_SCALE = 1;
        public const int STRETCH_TILE = 2;
        public const int STRETCH_KEEP = 3;
        public const int STRETCH_KEEP_CENTERED = 4;
        public const int STRETCH_KEEP_ASPECT = 5;
        public const int STRETCH_KEEP_ASPECT_CENTERED = 6;

        private const string nativeName = "TextureFrame";

        public TextureFrame() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_TextureFrame_Ctor(this);
        }

        internal TextureFrame(bool memoryOwn) : base(memoryOwn) {}

        ~TextureFrame()
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

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_expand");

        public void set_expand(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_4, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_expand");

        public bool has_expand()
        {
            return NativeCalls.godot_icall_0_14(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_stretch_mode");

        public void set_stretch_mode(int stretch_mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_6, Object.GetPtr(this), stretch_mode);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stretch_mode");

        public int get_stretch_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_7, Object.GetPtr(this));
        }
    }
}
