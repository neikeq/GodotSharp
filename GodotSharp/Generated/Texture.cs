using System;

namespace GodotEngine
{
    /// <summary>
    /// A texture works by registering an image in the video hardware, which then can be used in 3D models or 2D [Sprite] or GUI [Control].
    /// </summary>
    public class Texture : Resource
    {
        /// <summary>
        /// Generate mipmaps, to enable smooth zooming out of the texture.
        /// </summary>
        public const int FLAG_MIPMAPS = 1;
        /// <summary>
        /// Repeat (instead of clamp to edge).
        /// </summary>
        public const int FLAG_REPEAT = 2;
        /// <summary>
        /// Turn on magnifying filter, to enable smooth zooming in of the texture.
        /// </summary>
        public const int FLAG_FILTER = 4;
        /// <summary>
        /// Texture is a video surface.
        /// </summary>
        public const int FLAG_VIDEO_SURFACE = 4096;
        /// <summary>
        /// Default flags. Generate mipmaps, repeat, and filter are enabled.
        /// </summary>
        public const int FLAGS_DEFAULT = 7;
        public const int FLAG_ANISOTROPIC_FILTER = 8;
        public const int FLAG_CONVERT_TO_LINEAR = 16;
        public const int FLAG_MIRRORED_REPEAT = 32;

        private const string nativeName = "Texture";

        internal Texture() {}

        internal Texture(bool memoryOwn) : base(memoryOwn) {}

        ~Texture()
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
                    NativeCalls.godot_icall_Texture_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_width");

        /// <summary>
        /// Return the texture width.
        /// </summary>
        public int get_width()
        {
            return NativeCalls.godot_icall_0_0(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_height");

        /// <summary>
        /// Return the texture height.
        /// </summary>
        public int get_height()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_size");

        /// <summary>
        /// Return the texture size.
        /// </summary>
        public Vector2 get_size()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_2, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rid");

        /// <summary>
        /// Return the texture RID as used in the [VisualServer].
        /// </summary>
        public RID get_rid()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_3, Object.GetPtr(this));
            return new RID(ret);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_alpha");

        public bool has_alpha()
        {
            return NativeCalls.godot_icall_0_14(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_flags");

        /// <summary>
        /// Change the texture flags.
        /// </summary>
        public void set_flags(int flags)
        {
            NativeCalls.godot_icall_1_4(method_bind_5, Object.GetPtr(this), flags);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_flags");

        /// <summary>
        /// Return the current texture flags.
        /// </summary>
        public int get_flags()
        {
            return NativeCalls.godot_icall_0_0(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "draw");

        public void draw(RID canvas_item, Vector2 pos, Nullable<Color> modulate = null, bool transpose = false)
        {
            Color modulate_in = modulate.HasValue ? modulate.Value : new Color(1, 1, 1, 1);
            NativeCalls.godot_icall_4_481(method_bind_7, Object.GetPtr(this), RID.GetPtr(canvas_item), ref pos, ref modulate_in, transpose);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "draw_rect");

        public void draw_rect(RID canvas_item, Rect2 rect, bool tile, Nullable<Color> modulate = null, bool transpose = false)
        {
            Color modulate_in = modulate.HasValue ? modulate.Value : new Color(1, 1, 1, 1);
            NativeCalls.godot_icall_5_482(method_bind_8, Object.GetPtr(this), RID.GetPtr(canvas_item), ref rect, tile, ref modulate_in, transpose);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "draw_rect_region");

        public void draw_rect_region(RID canvas_item, Rect2 rect, Rect2 src_rect, Nullable<Color> modulate = null, bool transpose = false)
        {
            Color modulate_in = modulate.HasValue ? modulate.Value : new Color(1, 1, 1, 1);
            NativeCalls.godot_icall_5_483(method_bind_9, Object.GetPtr(this), RID.GetPtr(canvas_item), ref rect, ref src_rect, ref modulate_in, transpose);
        }
    }
}
