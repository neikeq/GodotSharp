using System;

namespace GodotEngine
{
    public class BitmapFont : Font
    {
        private const string nativeName = "BitmapFont";

        public BitmapFont() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_BitmapFont_Ctor(this);
        }

        internal BitmapFont(bool memoryOwn) : base(memoryOwn) {}

        ~BitmapFont()
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
                    NativeCalls.godot_icall_BitmapFont_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "create_from_fnt");

        public int create_from_fnt(string path)
        {
            return NativeCalls.godot_icall_1_63(method_bind_0, Object.GetPtr(this), path);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_height");

        /// <summary>
        /// Set the total font height (ascent plus descent) in pixels.
        /// </summary>
        public void set_height(float px)
        {
            NativeCalls.godot_icall_1_45(method_bind_1, Object.GetPtr(this), px);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_ascent");

        /// <summary>
        /// Set the font ascent (number of pixels above the baseline).
        /// </summary>
        public void set_ascent(float px)
        {
            NativeCalls.godot_icall_1_45(method_bind_2, Object.GetPtr(this), px);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_kerning_pair");

        /// <summary>
        /// Add a kerning pair to the [BitmapFont] as a difference. Kerning pairs are special cases where a typeface advance is determined by the next character.
        /// </summary>
        public void add_kerning_pair(int char_a, int char_b, int kerning)
        {
            NativeCalls.godot_icall_3_110(method_bind_3, Object.GetPtr(this), char_a, char_b, kerning);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_kerning_pair");

        /// <summary>
        /// Return a kerning pair as a difference.
        /// </summary>
        public int get_kerning_pair(int char_a, int char_b)
        {
            return NativeCalls.godot_icall_2_27(method_bind_4, Object.GetPtr(this), char_a, char_b);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_texture");

        /// <summary>
        /// Add a texture to the [BitmapFont].
        /// </summary>
        public void add_texture(Texture texture)
        {
            NativeCalls.godot_icall_1_21(method_bind_5, Object.GetPtr(this), Object.GetPtr(texture));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_char");

        /// <summary>
        /// Add a character to the font, where [i]character[/i] is the unicode value, [i]texture[/i] is the texture index, [i]rect[/i] is the region in the texture (in pixels!), [i]align[/i] is the (optional) alignment for the character and [i]advance[/i] is the (optional) advance.
        /// <param name="align">If the param is null, then the default value is new Vector2(0, 0)</param>
        /// </summary>
        public void add_char(int character, int texture, Rect2 rect, Nullable<Vector2> align = null, float advance = -1)
        {
            Vector2 align_in = align.HasValue ? align.Value : new Vector2(0, 0);
            NativeCalls.godot_icall_5_111(method_bind_6, Object.GetPtr(this), character, texture, ref rect, ref align_in, advance);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_texture_count");

        public int get_texture_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_texture");

        public Texture get_texture(int idx)
        {
            return NativeCalls.godot_icall_1_112(method_bind_8, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_char_size");

        /// <summary>
        /// Return the size of a character, optionally taking kerning into account if the next character is provided.
        /// </summary>
        public Vector2 get_char_size(int @char, int next = 0)
        {
            object ret = NativeCalls.godot_icall_2_113(method_bind_9, Object.GetPtr(this), @char, next);
            return (Vector2)ret;
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_distance_field_hint");

        public void set_distance_field_hint(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_10, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        /// <summary>
        /// Clear all the font data.
        /// </summary>
        public void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_fallback");

        public void set_fallback(Object fallback)
        {
            NativeCalls.godot_icall_1_20(method_bind_12, Object.GetPtr(this), Object.GetPtr(fallback));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_fallback");

        public Object get_fallback()
        {
            return NativeCalls.godot_icall_0_12(method_bind_13, Object.GetPtr(this));
        }
    }
}
