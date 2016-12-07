using System;

namespace GodotEngine
{
    /// <summary>
    /// Font contains an unicode compatible character set, as well as the ability to draw it with variable width, ascent, descent and kerning. For creating fonts from TTF files (or other font formats), see the editor support for fonts. TODO check wikipedia for graph of ascent/baseline/descent/height/etc.
    /// </summary>
    public class Font : Resource
    {
        private const string nativeName = "Font";

        internal Font() {}

        internal Font(bool memoryOwn) : base(memoryOwn) {}

        ~Font()
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
                    NativeCalls.godot_icall_Font_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "draw");

        /// <summary>
        /// Draw "string" into a canvas item using the font at a given "pos" position, with "modulate" color, and optionally clipping the width. "pos" specifies the baseline, not the top. To draw from the top, [i]ascent[/i] must be added to the Y axis.
        /// <param name="modulate">If the param is null, then the default value is new Color(1, 1, 1, 1)</param>
        /// </summary>
        public void draw(RID canvas_item, Vector2 pos, string @string, Nullable<Color> modulate = null, int clip_w = -1)
        {
            Color modulate_in = modulate.HasValue ? modulate.Value : new Color(1, 1, 1, 1);
            NativeCalls.godot_icall_5_228(method_bind_0, Object.GetPtr(this), RID.GetPtr(canvas_item), ref pos, @string, ref modulate_in, clip_w);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_ascent");

        /// <summary>
        /// Return the font ascent (number of pixels above the baseline).
        /// </summary>
        public float get_ascent()
        {
            return NativeCalls.godot_icall_0_46(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_descent");

        /// <summary>
        /// Return the font descent (number of pixels below the baseline).
        /// </summary>
        public float get_descent()
        {
            return NativeCalls.godot_icall_0_46(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_height");

        /// <summary>
        /// Return the total font height (ascent plus descent) in pixels.
        /// </summary>
        public float get_height()
        {
            return NativeCalls.godot_icall_0_46(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_distance_field_hint");

        public bool is_distance_field_hint()
        {
            return NativeCalls.godot_icall_0_14(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_string_size");

        /// <summary>
        /// Return the size of a string, taking kerning and advance into account.
        /// </summary>
        public Vector2 get_string_size(string @string)
        {
            object ret = NativeCalls.godot_icall_1_70(method_bind_5, Object.GetPtr(this), @string);
            return (Vector2)ret;
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "draw_char");

        /// <summary>
        /// Draw character "char" into a canvas item using the font at a given "pos" position, with "modulate" color, and optionally kerning if "next" is passed. clipping the width. "pos" specifies the baseline, not the top. To draw from the top, [i]ascent[/i] must be added to the Y axis. The width used by the character is returned, making this function useful for drawing strings character by character.
        /// <param name="modulate">If the param is null, then the default value is new Color(1, 1, 1, 1)</param>
        /// </summary>
        public float draw_char(RID canvas_item, Vector2 pos, int @char, int next = -1, Nullable<Color> modulate = null)
        {
            Color modulate_in = modulate.HasValue ? modulate.Value : new Color(1, 1, 1, 1);
            return NativeCalls.godot_icall_5_229(method_bind_6, Object.GetPtr(this), RID.GetPtr(canvas_item), ref pos, @char, next, ref modulate_in);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "update_changes");

        /// <summary>
        /// After editing a font (changing size, ascent, char rects, etc.). Call this function to propagate changes to controls that might use it.
        /// </summary>
        public void update_changes()
        {
            NativeCalls.godot_icall_0_7(method_bind_7, Object.GetPtr(this));
        }
    }
}
