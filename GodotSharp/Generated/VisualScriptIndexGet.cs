using System;

namespace GodotEngine
{
    public class VisualScriptIndexGet : VisualScriptNode
    {
        private const string nativeName = "VisualScriptIndexGet";

        public VisualScriptIndexGet() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptIndexGet_Ctor(this);
        }

        internal VisualScriptIndexGet(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptIndexGet()
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
                    NativeCalls.godot_icall_VisualScriptIndexGet_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
