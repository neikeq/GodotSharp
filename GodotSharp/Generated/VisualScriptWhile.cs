using System;

namespace GodotEngine
{
    public class VisualScriptWhile : VisualScriptNode
    {
        private const string nativeName = "VisualScriptWhile";

        public VisualScriptWhile() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptWhile_Ctor(this);
        }

        internal VisualScriptWhile(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptWhile()
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
                    NativeCalls.godot_icall_VisualScriptWhile_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
