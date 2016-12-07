using System;

namespace GodotEngine
{
    public class VisualScriptFunction : VisualScriptNode
    {
        private const string nativeName = "VisualScriptFunction";

        public VisualScriptFunction() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptFunction_Ctor(this);
        }

        internal VisualScriptFunction(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptFunction()
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
                    NativeCalls.godot_icall_VisualScriptFunction_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
