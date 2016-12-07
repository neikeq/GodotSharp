using System;

namespace GodotEngine
{
    public class VisualScriptSelf : VisualScriptNode
    {
        private const string nativeName = "VisualScriptSelf";

        public VisualScriptSelf() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptSelf_Ctor(this);
        }

        internal VisualScriptSelf(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptSelf()
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
                    NativeCalls.godot_icall_VisualScriptSelf_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
