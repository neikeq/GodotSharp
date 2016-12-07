using System;

namespace GodotEngine
{
    /// <summary>
    /// FixedMaterial is a simple type of material [Resource], which contains a fixed amount of parameters. It is the only type of material supported in fixed-pipeline devices and APIs. It is also an often a better alternative to [ShaderMaterial] for most simple use cases.
    /// </summary>
    public class FixedMaterial : Material
    {
        /// <summary>
        /// Diffuse Lighting (light scattered from surface).
        /// </summary>
        public const int PARAM_DIFFUSE = 0;
        /// <summary>
        /// Detail Layer for diffuse lighting.
        /// </summary>
        public const int PARAM_DETAIL = 1;
        /// <summary>
        /// Specular Lighting (light reflected from the surface).
        /// </summary>
        public const int PARAM_SPECULAR = 2;
        /// <summary>
        /// Emission Lighting (light emitted from the surface).
        /// </summary>
        public const int PARAM_EMISSION = 3;
        /// <summary>
        /// Specular Exponent (size of the specular dot).
        /// </summary>
        public const int PARAM_SPECULAR_EXP = 4;
        /// <summary>
        /// Glow (Visible emitted scattered light).
        /// </summary>
        public const int PARAM_GLOW = 5;
        /// <summary>
        /// Normal Map (irregularity map).
        /// </summary>
        public const int PARAM_NORMAL = 6;
        public const int PARAM_SHADE_PARAM = 7;
        /// <summary>
        /// Maximum amount of parameters.
        /// </summary>
        public const int PARAM_MAX = 8;
        /// <summary>
        /// Read texture coordinates from the UV array.
        /// </summary>
        public const int TEXCOORD_UV = 0;
        /// <summary>
        /// Read texture coordinates from the UV array and transform them by uv_xform.
        /// </summary>
        public const int TEXCOORD_UV_TRANSFORM = 1;
        /// <summary>
        /// Read texture coordinates from the UV2 array.
        /// </summary>
        public const int TEXCOORD_UV2 = 2;
        public const int TEXCOORD_SPHERE = 3;
        public const int FLAG_USE_ALPHA = 0;
        public const int FLAG_USE_COLOR_ARRAY = 1;
        public const int FLAG_USE_POINT_SIZE = 2;
        public const int FLAG_DISCARD_ALPHA = 3;
        public const int LIGHT_SHADER_LAMBERT = 0;
        public const int LIGHT_SHADER_WRAP = 1;
        public const int LIGHT_SHADER_VELVET = 2;
        public const int LIGHT_SHADER_TOON = 3;

        private const string nativeName = "FixedMaterial";

        public FixedMaterial() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_FixedMaterial_Ctor(this);
        }

        internal FixedMaterial(bool memoryOwn) : base(memoryOwn) {}

        ~FixedMaterial()
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
                    NativeCalls.godot_icall_FixedMaterial_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_parameter");

        /// <summary>
        /// Set a parameter, parameters are defined in the PARAM_* enum. The type of each parameter may change, so it's best to check the enum.
        /// </summary>
        public void set_parameter(int param, object @value)
        {
            NativeCalls.godot_icall_2_225(method_bind_0, Object.GetPtr(this), param, @value);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_parameter");

        /// <summary>
        /// Return a parameter, parameters are defined in the PARAM_* enum. The type of each parameter may change, so it's best to check the enum.
        /// </summary>
        public void get_parameter(int param)
        {
            NativeCalls.godot_icall_1_4(method_bind_1, Object.GetPtr(this), param);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_texture");

        /// <summary>
        /// Set a texture. Textures change parameters per texel and are mapped to the model depending on the texcoord mode (see [method set_texcoord_mode]).
        /// </summary>
        public void set_texture(int param, Texture texture)
        {
            NativeCalls.godot_icall_2_115(method_bind_2, Object.GetPtr(this), param, Object.GetPtr(texture));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_texture");

        /// <summary>
        /// Return a texture. Textures change parameters per texel and are mapped to the model depending on the texcoord mode (see [method set_texcoord_mode]).
        /// </summary>
        public Texture get_texture(int param)
        {
            return NativeCalls.godot_icall_1_112(method_bind_3, Object.GetPtr(this), param);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_texcoord_mode");

        /// <summary>
        /// Set the texture coordinate mode. Each texture param (from the PARAM_* enum) has one. It defines how the textures are mapped to the object.
        /// </summary>
        public void set_texcoord_mode(int param, int mode)
        {
            NativeCalls.godot_icall_2_5(method_bind_4, Object.GetPtr(this), param, mode);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_texcoord_mode");

        /// <summary>
        /// Return the texture coordinate mode. Each texture param (from the PARAM_* enum) has one. It defines how the textures are mapped to the object.
        /// </summary>
        public int get_texcoord_mode(int param)
        {
            return NativeCalls.godot_icall_1_28(method_bind_5, Object.GetPtr(this), param);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_fixed_flag");

        public void set_fixed_flag(int flag, bool @value)
        {
            NativeCalls.godot_icall_2_32(method_bind_6, Object.GetPtr(this), flag, @value);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_fixed_flag");

        public bool get_fixed_flag(int flag)
        {
            return NativeCalls.godot_icall_1_33(method_bind_7, Object.GetPtr(this), flag);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_uv_transform");

        /// <summary>
        /// Sets a special transform used to post-transform UV coordinates of the uv_xform texcoord mode: TEXCOORD_UV_TRANSFORM.
        /// </summary>
        public void set_uv_transform(Transform transform)
        {
            NativeCalls.godot_icall_1_227(method_bind_8, Object.GetPtr(this), ref transform);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_uv_transform");

        /// <summary>
        /// Returns the special transform used to post-transform UV coordinates of the uv_xform texcoord mode: TEXCOORD_UV_TRANSFORM.
        /// </summary>
        public Transform get_uv_transform()
        {
            object ret = NativeCalls.godot_icall_0_122(method_bind_9, Object.GetPtr(this));
            return (Transform)ret;
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_light_shader");

        public void set_light_shader(int shader)
        {
            NativeCalls.godot_icall_1_4(method_bind_10, Object.GetPtr(this), shader);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_light_shader");

        public int get_light_shader()
        {
            return NativeCalls.godot_icall_0_0(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_point_size");

        public void set_point_size(float size)
        {
            NativeCalls.godot_icall_1_45(method_bind_12, Object.GetPtr(this), size);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_point_size");

        public float get_point_size()
        {
            return NativeCalls.godot_icall_0_46(method_bind_13, Object.GetPtr(this));
        }
    }
}
