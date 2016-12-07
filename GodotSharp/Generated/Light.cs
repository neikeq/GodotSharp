using System;

namespace GodotEngine
{
    /// <summary>
    /// Light is the abstract base class for light nodes, so it shouldn't be used directly (It can't be instanced). Other types of light nodes inherit from it. Light contains the common variables and parameters used for lighting.
    /// </summary>
    public class Light : VisualInstance
    {
        public const int PARAM_RADIUS = 2;
        public const int PARAM_ENERGY = 3;
        public const int PARAM_ATTENUATION = 4;
        public const int PARAM_SPOT_ANGLE = 1;
        public const int PARAM_SPOT_ATTENUATION = 0;
        public const int PARAM_SHADOW_DARKENING = 5;
        public const int PARAM_SHADOW_Z_OFFSET = 6;
        public const int COLOR_DIFFUSE = 0;
        public const int COLOR_SPECULAR = 1;
        public const int BAKE_MODE_DISABLED = 0;
        public const int BAKE_MODE_INDIRECT = 1;
        public const int BAKE_MODE_INDIRECT_AND_SHADOWS = 2;
        public const int BAKE_MODE_FULL = 3;

        private const string nativeName = "Light";

        internal Light() {}

        internal Light(bool memoryOwn) : base(memoryOwn) {}

        ~Light()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_parameter");

        public void set_parameter(int variable, float @value)
        {
            NativeCalls.godot_icall_2_36(method_bind_0, Object.GetPtr(this), variable, @value);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_parameter");

        public float get_parameter(int variable)
        {
            return NativeCalls.godot_icall_1_3(method_bind_1, Object.GetPtr(this), variable);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_color");

        public void set_color(int color, Color @value)
        {
            NativeCalls.godot_icall_2_160(method_bind_2, Object.GetPtr(this), color, ref @value);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_color");

        public Color get_color(int color)
        {
            object ret = NativeCalls.godot_icall_1_161(method_bind_3, Object.GetPtr(this), color);
            return (Color)ret;
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_project_shadows");

        public void set_project_shadows(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_4, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_project_shadows");

        public bool has_project_shadows()
        {
            return NativeCalls.godot_icall_0_14(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_projector");

        public void set_projector(Texture projector)
        {
            NativeCalls.godot_icall_1_21(method_bind_6, Object.GetPtr(this), Object.GetPtr(projector));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_projector");

        public Texture get_projector()
        {
            return NativeCalls.godot_icall_0_80(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_operator");

        public void set_operator(int @operator)
        {
            NativeCalls.godot_icall_1_4(method_bind_8, Object.GetPtr(this), @operator);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_operator");

        public int get_operator()
        {
            return NativeCalls.godot_icall_0_0(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bake_mode");

        public void set_bake_mode(int bake_mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_10, Object.GetPtr(this), bake_mode);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bake_mode");

        public int get_bake_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_enabled");

        public void set_enabled(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_12, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_enabled");

        public bool is_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_editor_only");

        public void set_editor_only(bool editor_only)
        {
            NativeCalls.godot_icall_1_13(method_bind_14, Object.GetPtr(this), editor_only);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_editor_only");

        public bool is_editor_only()
        {
            return NativeCalls.godot_icall_0_14(method_bind_15, Object.GetPtr(this));
        }
    }
}
