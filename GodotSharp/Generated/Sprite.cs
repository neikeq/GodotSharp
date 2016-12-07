using System;

namespace GodotEngine
{
    /// <summary>
    /// General purpose Sprite node. This Sprite node can show any texture as a sprite. The texture can be used as a spritesheet for animation, or only a region from a bigger texture can referenced, like an atlas.
    /// </summary>
    public class Sprite : Node2D
    {
        private const string nativeName = "Sprite";

        public Sprite() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Sprite_Ctor(this);
        }

        internal Sprite(bool memoryOwn) : base(memoryOwn) {}

        ~Sprite()
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

        /// <summary>
        /// Set the base texture for the sprite.
        /// </summary>
        public void set_texture(Texture texture)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(texture));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_texture");

        /// <summary>
        /// Return the base texture for the sprite.
        /// </summary>
        public Texture get_texture()
        {
            return NativeCalls.godot_icall_0_80(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_centered");

        /// <summary>
        /// Set whether the sprite should be centered on the origin.
        /// </summary>
        public void set_centered(bool centered)
        {
            NativeCalls.godot_icall_1_13(method_bind_2, Object.GetPtr(this), centered);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_centered");

        /// <summary>
        /// Return if the sprite is centered at the local origin.
        /// </summary>
        public bool is_centered()
        {
            return NativeCalls.godot_icall_0_14(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_offset");

        /// <summary>
        /// Set the sprite draw offset, useful for setting rotation pivots.
        /// </summary>
        public void set_offset(Vector2 offset)
        {
            NativeCalls.godot_icall_1_23(method_bind_4, Object.GetPtr(this), ref offset);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_offset");

        /// <summary>
        /// Return sprite draw offset.
        /// </summary>
        public Vector2 get_offset()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_5, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_flip_h");

        /// <summary>
        /// Set true to flip the sprite horizontally.
        /// </summary>
        public void set_flip_h(bool flip_h)
        {
            NativeCalls.godot_icall_1_13(method_bind_6, Object.GetPtr(this), flip_h);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_flipped_h");

        /// <summary>
        /// Return true if the sprite is flipped horizontally.
        /// </summary>
        public bool is_flipped_h()
        {
            return NativeCalls.godot_icall_0_14(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_flip_v");

        /// <summary>
        /// Set true to flip the sprite vertically.
        /// </summary>
        public void set_flip_v(bool flip_v)
        {
            NativeCalls.godot_icall_1_13(method_bind_8, Object.GetPtr(this), flip_v);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_flipped_v");

        /// <summary>
        /// Return true if the sprite is flipped vertically.
        /// </summary>
        public bool is_flipped_v()
        {
            return NativeCalls.godot_icall_0_14(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_region");

        /// <summary>
        /// Set the sprite as a sub-region of a bigger texture. Useful for texture-atlases.
        /// </summary>
        public void set_region(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_10, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_region");

        /// <summary>
        /// Return if the sprite reads from a region.
        /// </summary>
        public bool is_region()
        {
            return NativeCalls.godot_icall_0_14(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_region_rect");

        /// <summary>
        /// Set the region rect to read from.
        /// </summary>
        public void set_region_rect(Rect2 rect)
        {
            NativeCalls.godot_icall_1_81(method_bind_12, Object.GetPtr(this), ref rect);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_region_rect");

        /// <summary>
        /// Return the region rect to read from.
        /// </summary>
        public Rect2 get_region_rect()
        {
            object ret = NativeCalls.godot_icall_0_82(method_bind_13, Object.GetPtr(this));
            return (Rect2)ret;
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_frame");

        /// <summary>
        /// Set the texture frame for a sprite-sheet, works when vframes or hframes are greater than 1.
        /// </summary>
        public void set_frame(int frame)
        {
            NativeCalls.godot_icall_1_4(method_bind_14, Object.GetPtr(this), frame);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_frame");

        /// <summary>
        /// Return the texture frame for a sprite-sheet, works when vframes or hframes are greater than 1.
        /// </summary>
        public int get_frame()
        {
            return NativeCalls.godot_icall_0_0(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_vframes");

        /// <summary>
        /// Set the amount of vertical frames and converts the sprite into a sprite-sheet. This is useful for animation.
        /// </summary>
        public void set_vframes(int vframes)
        {
            NativeCalls.godot_icall_1_4(method_bind_16, Object.GetPtr(this), vframes);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_vframes");

        /// <summary>
        /// Return the amount of vertical frames. See [method set_vframes].
        /// </summary>
        public int get_vframes()
        {
            return NativeCalls.godot_icall_0_0(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_hframes");

        /// <summary>
        /// Set the amount of horizontal frames and converts the sprite into a sprite-sheet. This is useful for animation.
        /// </summary>
        public void set_hframes(int hframes)
        {
            NativeCalls.godot_icall_1_4(method_bind_18, Object.GetPtr(this), hframes);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_hframes");

        /// <summary>
        /// Return the amount of horizontal frames. See [method set_hframes].
        /// </summary>
        public int get_hframes()
        {
            return NativeCalls.godot_icall_0_0(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_modulate");

        /// <summary>
        /// Set color modulation for the sprite. All sprite pixels are multiplied by this color.  Color may contain rgb values above 1 to achieve a highlight effect.
        /// </summary>
        public void set_modulate(Color modulate)
        {
            NativeCalls.godot_icall_1_25(method_bind_20, Object.GetPtr(this), ref modulate);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_modulate");

        /// <summary>
        /// Return color modulation for the sprite. All sprite pixels are multiplied by this color.
        /// </summary>
        public Color get_modulate()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_21, Object.GetPtr(this));
            return (Color)ret;
        }
    }
}
