using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Built in native image datatype. Contains image data, which can be converted to a texture, and several functions to interact with it.
    /// </summary>
    public class Image
    {
        public const int COMPRESS_BC = 0;
        public const int COMPRESS_PVRTC2 = 1;
        public const int COMPRESS_PVRTC4 = 2;
        public const int COMPRESS_ETC = 3;
        public const int FORMAT_GRAYSCALE = 0;
        public const int FORMAT_INTENSITY = 1;
        public const int FORMAT_GRAYSCALE_ALPHA = 2;
        public const int FORMAT_RGB = 3;
        public const int FORMAT_RGBA = 4;
        public const int FORMAT_INDEXED = 5;
        public const int FORMAT_INDEXED_ALPHA = 6;
        public const int FORMAT_YUV_422 = 7;
        public const int FORMAT_YUV_444 = 8;
        public const int FORMAT_BC1 = 9;
        public const int FORMAT_BC2 = 10;
        public const int FORMAT_BC3 = 11;
        public const int FORMAT_BC4 = 12;
        public const int FORMAT_BC5 = 13;
        public const int FORMAT_PVRTC2 = 14;
        public const int FORMAT_PVRTC2_ALPHA = 15;
        public const int FORMAT_PVRTC4 = 16;
        public const int FORMAT_PVRTC4_ALPHA = 17;
        public const int FORMAT_ETC = 18;
        public const int FORMAT_ATC = 19;
        public const int FORMAT_ATC_ALPHA_EXPLICIT = 20;
        public const int FORMAT_ATC_ALPHA_INTERPOLATED = 21;
        public const int FORMAT_CUSTOM = 22;
        public const int INTERPOLATE_NEAREST = 0;
        public const int INTERPOLATE_BILINEAR = 1;
        public const int INTERPOLATE_CUBIC = 2;

        private const string nativeName = "Image";

        internal IntPtr ptr;

        internal static IntPtr GetPtr(Image instance)
        {
            return instance == null ? IntPtr.Zero : instance.ptr;
        }

        ~Image()
        {
            Dispose();
        }

        public virtual void Dispose()
        {
            lock (this)
            {
                if (ptr != IntPtr.Zero)
                {
                    NativeCalls.godot_icall_Image_Dtor(ptr);
                    ptr = IntPtr.Zero;
                }

                GC.SuppressFinalize(this);
            }
        }

        internal Image(IntPtr ptr)
        {
            this.ptr = ptr;
        }

        public bool HasValidHandle()
        {
            return ptr == IntPtr.Zero;
        }

        public Image()
        {
            this.ptr = NativeCalls.godot_icall_Image_Ctor();
        }

        public Image(int width, int height, bool mipmaps, int format)        {
            this.ptr = NativeCalls.godot_icall_Image_Ctor_2(width, height, mipmaps, format);
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "blit_rect");

        /// <summary>
        /// Copy a "src_rect" [Rect2] from "src" [Image] to this [Image] on coordinates "dest".
        /// <param name="dest">If the param is null, then the default value is new Vector2(0, 0)</param>
        /// </summary>
        public void blit_rect(Image src, Rect2 src_rect, Nullable<Vector2> dest = null)
        {
            Vector2 dest_in = dest.HasValue ? dest.Value : new Vector2(0, 0);
            NativeCalls.godot_icall_3_598(method_bind_0, Image.GetPtr(this), Image.GetPtr(src), ref src_rect, ref dest_in);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "brush_transfer");

        /// <summary>
        /// Transfer data from "src" to this [Image] using a "brush" as a mask/brush on coordinates "pos".
        /// <param name="pos">If the param is null, then the default value is new Vector2(0, 0)</param>
        /// </summary>
        public void brush_transfer(Image src, Image brush, Nullable<Vector2> pos = null)
        {
            Vector2 pos_in = pos.HasValue ? pos.Value : new Vector2(0, 0);
            NativeCalls.godot_icall_3_599(method_bind_1, Image.GetPtr(this), Image.GetPtr(src), Image.GetPtr(brush), ref pos_in);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "brushed");

        /// <summary>
        /// Return a new [Image] from this [Image] that is created by brushhing see [method brush_transfer].
        /// <param name="pos">If the param is null, then the default value is new Vector2(0, 0)</param>
        /// </summary>
        public Image brushed(Image src, Image brush, Nullable<Vector2> pos = null)
        {
            Vector2 pos_in = pos.HasValue ? pos.Value : new Vector2(0, 0);
            IntPtr ret = NativeCalls.godot_icall_3_600(method_bind_2, Image.GetPtr(this), Image.GetPtr(src), Image.GetPtr(brush), ref pos_in);
            return new Image(ret);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "compressed");

        /// <summary>
        /// Return a new compressed [Image] from this [Image] using one of [Image].COMPRESS_*.
        /// </summary>
        public Image compressed(int format = 0)
        {
            IntPtr ret = NativeCalls.godot_icall_1_188(method_bind_3, Image.GetPtr(this), format);
            return new Image(ret);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "converted");

        /// <summary>
        /// Return a new [Image] from this [Image] with a different format.
        /// </summary>
        public Image converted(int format = 0)
        {
            IntPtr ret = NativeCalls.godot_icall_1_188(method_bind_4, Image.GetPtr(this), format);
            return new Image(ret);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "decompressed");

        /// <summary>
        /// Return a new decompressed [Image].
        /// </summary>
        public Image decompressed()
        {
            IntPtr ret = NativeCalls.godot_icall_0_256(method_bind_5, Image.GetPtr(this));
            return new Image(ret);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "empty");

        /// <summary>
        /// Return whether this [Image] is empty(no data).
        /// </summary>
        public bool empty()
        {
            return NativeCalls.godot_icall_0_14(method_bind_6, Image.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "fix_alpha_edges");

        public void fix_alpha_edges()
        {
            NativeCalls.godot_icall_0_7(method_bind_7, Image.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_data");

        /// <summary>
        /// Return the raw data of the [Image].
        /// </summary>
        public List<byte> get_data()
        {
            byte[] ret = NativeCalls.godot_icall_0_102(method_bind_8, Image.GetPtr(this));
            return new List<byte>(ret);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_format");

        /// <summary>
        /// Return the format of the [Image], one of [Image].FORMAT_*.
        /// </summary>
        public int get_format()
        {
            return NativeCalls.godot_icall_0_0(method_bind_9, Image.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_height");

        /// <summary>
        /// Return the height of the [Image].
        /// </summary>
        public int get_height()
        {
            return NativeCalls.godot_icall_0_0(method_bind_10, Image.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pixel");

        /// <summary>
        /// Return the color of the pixel in the [Image] on coordinates "x,y" on mipmap level "mipmap_level".
        /// </summary>
        public Color get_pixel(int x, int y, int mipmap_level = 0)
        {
            object ret = NativeCalls.godot_icall_3_601(method_bind_11, Image.GetPtr(this), x, y, mipmap_level);
            return (Color)ret;
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rect");

        /// <summary>
        /// Return a new [Image] that is a copy of "area" in this [Image].
        /// <param name="area">If the param is null, then the default value is new Rect2(0, 0, 0, 0)</param>
        /// </summary>
        public Image get_rect(Nullable<Rect2> area = null)
        {
            Rect2 area_in = area.HasValue ? area.Value : new Rect2(0, 0, 0, 0);
            IntPtr ret = NativeCalls.godot_icall_1_602(method_bind_12, Image.GetPtr(this), ref area_in);
            return new Image(ret);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_used_rect");

        /// <summary>
        /// Return the area of this [Image] that is used/visibly colored/opaque.
        /// </summary>
        public Rect2 get_used_rect()
        {
            object ret = NativeCalls.godot_icall_0_82(method_bind_13, Image.GetPtr(this));
            return (Rect2)ret;
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_width");

        /// <summary>
        /// Return the width of the [Image].
        /// </summary>
        public int get_width()
        {
            return NativeCalls.godot_icall_0_0(method_bind_14, Image.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "load");

        /// <summary>
        /// Load an [Image].
        /// </summary>
        public int load(string path = "")
        {
            return NativeCalls.godot_icall_1_63(method_bind_15, Image.GetPtr(this), path);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "put_pixel");

        /// <summary>
        /// Put a pixel of "color" on coordinates "x,y" on mipmap level "mipmap_level".
        /// </summary>
        public void put_pixel(int x, int y, Color color, int mipmap_level = 0)
        {
            NativeCalls.godot_icall_4_603(method_bind_16, Image.GetPtr(this), x, y, ref color, mipmap_level);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "resized");

        /// <summary>
        /// Return a new [Image] from this [Image] that is resized to size "x,y" using [Image].INTERPOLATE_*.
        /// </summary>
        public Image resized(int x, int y, int interpolation = 0)
        {
            IntPtr ret = NativeCalls.godot_icall_3_604(method_bind_17, Image.GetPtr(this), x, y, interpolation);
            return new Image(ret);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "save_png");

        /// <summary>
        /// Save this [Image] as a png.
        /// </summary>
        public int save_png(string path = "")
        {
            return NativeCalls.godot_icall_1_63(method_bind_18, Image.GetPtr(this), path);
        }
    }
}
