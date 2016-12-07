using System;

namespace GodotEngine
{
    public class CanvasItemShaderGraph : ShaderGraph
    {
        private const string nativeName = "CanvasItemShaderGraph";

        public CanvasItemShaderGraph() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_CanvasItemShaderGraph_Ctor(this);
        }

        internal CanvasItemShaderGraph(bool memoryOwn) : base(memoryOwn) {}

        ~CanvasItemShaderGraph()
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
                    NativeCalls.godot_icall_CanvasItemShaderGraph_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
