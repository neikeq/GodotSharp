using System;

namespace GodotEngine
{
    public class CanvasItemMaterial : Resource
    {
        public const int SHADING_NORMAL = 0;
        public const int SHADING_UNSHADED = 1;
        public const int SHADING_ONLY_LIGHT = 2;

        private const string nativeName = "CanvasItemMaterial";

        public CanvasItemMaterial() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_CanvasItemMaterial_Ctor(this);
        }

        internal CanvasItemMaterial(bool memoryOwn) : base(memoryOwn) {}

        ~CanvasItemMaterial()
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
                    NativeCalls.godot_icall_CanvasItemMaterial_Dtor(ptr);
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

        public void get_shader_param(string param)
        {
            NativeCalls.godot_icall_1_18(method_bind_3, Object.GetPtr(this), param);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shading_mode");

        public void set_shading_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_4, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shading_mode");

        public int get_shading_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_5, Object.GetPtr(this));
        }
    }
}
