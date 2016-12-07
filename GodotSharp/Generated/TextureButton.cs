using System;

namespace GodotEngine
{
    /// <summary>
    /// Button that can be themed with textures. This is like a regular [Button] but can be themed by assigning textures to it. This button is intended to be easy to theme, however a regular button can expand (that uses styleboxes) and still be better if the interface is expect to have internationalization of texts.
    /// Only the normal texture is required, the others are optional.
    /// </summary>
    public class TextureButton : BaseButton
    {
        private const string nativeName = "TextureButton";

        public TextureButton() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_TextureButton_Ctor(this);
        }

        internal TextureButton(bool memoryOwn) : base(memoryOwn) {}

        ~TextureButton()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_normal_texture");

        public void set_normal_texture(Texture texture)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(texture));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_pressed_texture");

        public void set_pressed_texture(Texture texture)
        {
            NativeCalls.godot_icall_1_21(method_bind_1, Object.GetPtr(this), Object.GetPtr(texture));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_hover_texture");

        public void set_hover_texture(Texture texture)
        {
            NativeCalls.godot_icall_1_21(method_bind_2, Object.GetPtr(this), Object.GetPtr(texture));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_disabled_texture");

        public void set_disabled_texture(Texture texture)
        {
            NativeCalls.godot_icall_1_21(method_bind_3, Object.GetPtr(this), Object.GetPtr(texture));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_focused_texture");

        public void set_focused_texture(Texture texture)
        {
            NativeCalls.godot_icall_1_21(method_bind_4, Object.GetPtr(this), Object.GetPtr(texture));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_click_mask");

        public void set_click_mask(BitMap mask)
        {
            NativeCalls.godot_icall_1_21(method_bind_5, Object.GetPtr(this), Object.GetPtr(mask));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_texture_scale");

        public void set_texture_scale(Vector2 scale)
        {
            NativeCalls.godot_icall_1_23(method_bind_6, Object.GetPtr(this), ref scale);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_modulate");

        public void set_modulate(Color color)
        {
            NativeCalls.godot_icall_1_25(method_bind_7, Object.GetPtr(this), ref color);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_normal_texture");

        public Texture get_normal_texture()
        {
            return NativeCalls.godot_icall_0_80(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pressed_texture");

        public Texture get_pressed_texture()
        {
            return NativeCalls.godot_icall_0_80(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_hover_texture");

        public Texture get_hover_texture()
        {
            return NativeCalls.godot_icall_0_80(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_disabled_texture");

        public Texture get_disabled_texture()
        {
            return NativeCalls.godot_icall_0_80(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_focused_texture");

        public Texture get_focused_texture()
        {
            return NativeCalls.godot_icall_0_80(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_click_mask");

        public BitMap get_click_mask()
        {
            return NativeCalls.godot_icall_0_484(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_texture_scale");

        public Vector2 get_texture_scale()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_14, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_modulate");

        public Color get_modulate()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_15, Object.GetPtr(this));
            return (Color)ret;
        }
    }
}
