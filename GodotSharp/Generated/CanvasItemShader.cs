using System;

namespace GodotEngine
{
    public class CanvasItemShader : Shader
    {
        private const string nativeName = "CanvasItemShader";

        public CanvasItemShader() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_CanvasItemShader_Ctor(this);
        }

        internal CanvasItemShader(bool memoryOwn) : base(memoryOwn) {}

        ~CanvasItemShader()
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
                    NativeCalls.godot_icall_CanvasItemShader_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
