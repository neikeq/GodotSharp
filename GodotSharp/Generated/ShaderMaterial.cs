using System;

namespace GodotEngine
{
    public class ShaderMaterial : Material
    {
        private const string nativeName = "ShaderMaterial";

        public ShaderMaterial() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ShaderMaterial_Ctor(this);
        }

        internal ShaderMaterial(bool memoryOwn) : base(memoryOwn) {}

        ~ShaderMaterial()
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
                    NativeCalls.godot_icall_ShaderMaterial_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shader");

        public void set_shader(Shader shader)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(shader));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shader");

        public Shader get_shader()
        {
            return NativeCalls.godot_icall_0_145(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shader_param");

        public void set_shader_param(string param, object @value)
        {
            NativeCalls.godot_icall_2_146(method_bind_2, Object.GetPtr(this), param, @value);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shader_param");

        public object get_shader_param(string param)
        {
            return NativeCalls.godot_icall_1_453(method_bind_3, Object.GetPtr(this), param);
        }
    }
}
