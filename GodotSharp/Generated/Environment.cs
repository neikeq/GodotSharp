using System;

namespace GodotEngine
{
    public class Environment : Resource
    {
        public const int BG_KEEP = 0;
        public const int BG_DEFAULT_COLOR = 1;
        public const int BG_COLOR = 2;
        public const int BG_TEXTURE = 3;
        public const int BG_CUBEMAP = 4;
        public const int BG_CANVAS = 5;
        public const int BG_MAX = 6;
        public const int BG_PARAM_CANVAS_MAX_LAYER = 0;
        public const int BG_PARAM_COLOR = 1;
        public const int BG_PARAM_TEXTURE = 2;
        public const int BG_PARAM_CUBEMAP = 3;
        public const int BG_PARAM_ENERGY = 4;
        public const int BG_PARAM_GLOW = 6;
        public const int BG_PARAM_MAX = 7;
        public const int FX_AMBIENT_LIGHT = 0;
        public const int FX_FXAA = 1;
        public const int FX_GLOW = 2;
        public const int FX_DOF_BLUR = 3;
        public const int FX_HDR = 4;
        public const int FX_FOG = 5;
        public const int FX_BCS = 6;
        public const int FX_SRGB = 7;
        public const int FX_MAX = 8;
        public const int FX_BLUR_BLEND_MODE_ADDITIVE = 0;
        public const int FX_BLUR_BLEND_MODE_SCREEN = 1;
        public const int FX_BLUR_BLEND_MODE_SOFTLIGHT = 2;
        public const int FX_HDR_TONE_MAPPER_LINEAR = 0;
        public const int FX_HDR_TONE_MAPPER_LOG = 1;
        public const int FX_HDR_TONE_MAPPER_REINHARDT = 2;
        public const int FX_HDR_TONE_MAPPER_REINHARDT_AUTOWHITE = 3;
        public const int FX_PARAM_AMBIENT_LIGHT_COLOR = 0;
        public const int FX_PARAM_AMBIENT_LIGHT_ENERGY = 1;
        public const int FX_PARAM_GLOW_BLUR_PASSES = 2;
        public const int FX_PARAM_GLOW_BLUR_SCALE = 3;
        public const int FX_PARAM_GLOW_BLUR_STRENGTH = 4;
        public const int FX_PARAM_GLOW_BLUR_BLEND_MODE = 5;
        public const int FX_PARAM_GLOW_BLOOM = 6;
        public const int FX_PARAM_GLOW_BLOOM_TRESHOLD = 7;
        public const int FX_PARAM_DOF_BLUR_PASSES = 8;
        public const int FX_PARAM_DOF_BLUR_BEGIN = 9;
        public const int FX_PARAM_DOF_BLUR_RANGE = 10;
        public const int FX_PARAM_HDR_TONEMAPPER = 11;
        public const int FX_PARAM_HDR_EXPOSURE = 12;
        public const int FX_PARAM_HDR_WHITE = 13;
        public const int FX_PARAM_HDR_GLOW_TRESHOLD = 14;
        public const int FX_PARAM_HDR_GLOW_SCALE = 15;
        public const int FX_PARAM_HDR_MIN_LUMINANCE = 16;
        public const int FX_PARAM_HDR_MAX_LUMINANCE = 17;
        public const int FX_PARAM_HDR_EXPOSURE_ADJUST_SPEED = 18;
        public const int FX_PARAM_FOG_BEGIN = 19;
        public const int FX_PARAM_FOG_ATTENUATION = 22;
        public const int FX_PARAM_FOG_BEGIN_COLOR = 20;
        public const int FX_PARAM_FOG_END_COLOR = 21;
        public const int FX_PARAM_FOG_BG = 23;
        public const int FX_PARAM_BCS_BRIGHTNESS = 24;
        public const int FX_PARAM_BCS_CONTRAST = 25;
        public const int FX_PARAM_BCS_SATURATION = 26;
        public const int FX_PARAM_MAX = 27;

        private const string nativeName = "Environment";

        public Environment() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Environment_Ctor(this);
        }

        internal Environment(bool memoryOwn) : base(memoryOwn) {}

        ~Environment()
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
                    NativeCalls.godot_icall_Environment_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_background");

        public void set_background(int bgmode)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), bgmode);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_background");

        public int get_background()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_background_param");

        public void set_background_param(int param, object @value)
        {
            NativeCalls.godot_icall_2_225(method_bind_2, Object.GetPtr(this), param, @value);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_background_param");

        public void get_background_param(int param)
        {
            NativeCalls.godot_icall_1_4(method_bind_3, Object.GetPtr(this), param);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_enable_fx");

        public void set_enable_fx(int effect, bool enabled)
        {
            NativeCalls.godot_icall_2_32(method_bind_4, Object.GetPtr(this), effect, enabled);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_fx_enabled");

        public bool is_fx_enabled(int effect)
        {
            return NativeCalls.godot_icall_1_33(method_bind_5, Object.GetPtr(this), effect);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "fx_set_param");

        public void fx_set_param(int param, object @value)
        {
            NativeCalls.godot_icall_2_225(method_bind_6, Object.GetPtr(this), param, @value);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "fx_get_param");

        public void fx_get_param(int param)
        {
            NativeCalls.godot_icall_1_4(method_bind_7, Object.GetPtr(this), param);
        }
    }
}
