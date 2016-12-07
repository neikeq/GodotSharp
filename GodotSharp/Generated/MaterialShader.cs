using System;

namespace GodotEngine
{
    public class MaterialShader : Shader
    {
        private const string nativeName = "MaterialShader";

        public MaterialShader() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_MaterialShader_Ctor(this);
        }

        internal MaterialShader(bool memoryOwn) : base(memoryOwn) {}

        ~MaterialShader()
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
                    NativeCalls.godot_icall_MaterialShader_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
