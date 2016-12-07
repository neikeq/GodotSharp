using System;

namespace GodotEngine
{
    /// <summary>
    /// To be changed, ignore.
    /// </summary>
    public class Shader : Resource
    {
        public const int MODE_MATERIAL = 0;
        public const int MODE_CANVAS_ITEM = 1;
        public const int MODE_POST_PROCESS = 2;

        private const string nativeName = "Shader";

        internal Shader() {}

        internal Shader(bool memoryOwn) : base(memoryOwn) {}

        ~Shader()
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
                    NativeCalls.godot_icall_Shader_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mode");

        public int get_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_code");

        public void set_code(string vcode, string fcode, string lcode, int fofs = 0, int lofs = 0)
        {
            NativeCalls.godot_icall_5_428(method_bind_1, Object.GetPtr(this), vcode, fcode, lcode, fofs, lofs);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_vertex_code");

        public string get_vertex_code()
        {
            return NativeCalls.godot_icall_0_19(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_fragment_code");

        public string get_fragment_code()
        {
            return NativeCalls.godot_icall_0_19(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_light_code");

        public string get_light_code()
        {
            return NativeCalls.godot_icall_0_19(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_default_texture_param");

        public void set_default_texture_param(string param, Texture texture)
        {
            NativeCalls.godot_icall_2_65(method_bind_5, Object.GetPtr(this), param, Object.GetPtr(texture));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_texture_param");

        public Texture get_default_texture_param(string param)
        {
            return NativeCalls.godot_icall_1_429(method_bind_6, Object.GetPtr(this), param);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_param");

        public bool has_param(string name)
        {
            return NativeCalls.godot_icall_1_49(method_bind_7, Object.GetPtr(this), name);
        }
    }
}
