using System;

namespace GodotEngine
{
    /// <summary>
    /// Material is a base [Resource] used for coloring and shading geometry. All materials inherit from it and almost all [VisualInstance] derived nodes carry a Material. A few flags and parameters are shared between all material types and are configured here.
    /// </summary>
    public class Material : Resource
    {
        /// <summary>
        /// Geometry is visible when this flag is enabled (default).
        /// </summary>
        public const int FLAG_VISIBLE = 0;
        /// <summary>
        /// Both front facing and back facing triangles are rendered when this flag is enabled.
        /// </summary>
        public const int FLAG_DOUBLE_SIDED = 1;
        /// <summary>
        /// Front facing and back facing order is swapped when this flag is enabled.
        /// </summary>
        public const int FLAG_INVERT_FACES = 2;
        /// <summary>
        /// Shading (lighting) is disabled when this flag is enabled.
        /// </summary>
        public const int FLAG_UNSHADED = 3;
        public const int FLAG_ONTOP = 4;
        public const int FLAG_LIGHTMAP_ON_UV2 = 5;
        public const int FLAG_COLOR_ARRAY_SRGB = 6;
        /// <summary>
        /// Maximum amount of flags.
        /// </summary>
        public const int FLAG_MAX = 7;
        public const int DEPTH_DRAW_ALWAYS = 0;
        public const int DEPTH_DRAW_OPAQUE_ONLY = 1;
        public const int DEPTH_DRAW_OPAQUE_PRE_PASS_ALPHA = 2;
        public const int DEPTH_DRAW_NEVER = 3;
        /// <summary>
        /// Use the regular alpha blending equation (source and dest colors are faded) (default).
        /// </summary>
        public const int BLEND_MODE_MIX = 0;
        /// <summary>
        /// Use additive blending equation, often used for particle effects such as fire or light decals.
        /// </summary>
        public const int BLEND_MODE_ADD = 1;
        /// <summary>
        /// Use subtractive blending equation, often used for some smoke effects or types of glass.
        /// </summary>
        public const int BLEND_MODE_SUB = 2;
        public const int BLEND_MODE_MUL = 3;
        public const int BLEND_MODE_PREMULT_ALPHA = 4;

        private const string nativeName = "Material";

        internal Material() {}

        internal Material(bool memoryOwn) : base(memoryOwn) {}

        ~Material()
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
                    NativeCalls.godot_icall_Material_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_flag");

        /// <summary>
        /// Set a [Material] flag, which toggles on or off a behavior when rendering. See enumeration FLAG_* for a list.
        /// </summary>
        public void set_flag(int flag, bool enable)
        {
            NativeCalls.godot_icall_2_32(method_bind_0, Object.GetPtr(this), flag, enable);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_flag");

        /// <summary>
        /// Return a [Material] flag, which toggles on or off a behavior when rendering. See enumeration FLAG_* for a list.
        /// </summary>
        public bool get_flag(int flag)
        {
            return NativeCalls.godot_icall_1_33(method_bind_1, Object.GetPtr(this), flag);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_blend_mode");

        /// <summary>
        /// Set blend mode for the material, which can be one of BLEND_MODE_MIX (default), BLEND_MODE_ADD, BLEND_MODE_SUB. Keep in mind that only BLEND_MODE_MIX ensures that the material [i]may[/i] be opaque, any other blend mode will render with alpha blending enabled in raster-based [VisualServer] implementations.
        /// </summary>
        public void set_blend_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_blend_mode");

        /// <summary>
        /// Return blend mode for the material, which can be one of BLEND_MODE_MIX (default), BLEND_MODE_ADD, BLEND_MODE_SUB. Keep in mind that only BLEND_MODE_MIX ensures that the material [i]may[/i] be opaque, any other blend mode will render with alpha blending enabled in raster-based [VisualServer] implementations.
        /// </summary>
        public int get_blend_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_line_width");

        /// <summary>
        /// Set the line width for geometry drawn with FLAG_WIREFRAME enabled, or LINE primitives. Note that not all hardware or VisualServer backends support this (like DirectX).
        /// </summary>
        public void set_line_width(float width)
        {
            NativeCalls.godot_icall_1_45(method_bind_4, Object.GetPtr(this), width);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_line_width");

        /// <summary>
        /// Return the line width for geometry drawn with FLAG_WIREFRAME enabled, or LINE primitives. Note that not all hardware or VisualServer backends support this (like DirectX).
        /// </summary>
        public float get_line_width()
        {
            return NativeCalls.godot_icall_0_46(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_depth_draw_mode");

        public void set_depth_draw_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_6, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_depth_draw_mode");

        public int get_depth_draw_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_7, Object.GetPtr(this));
        }
    }
}
