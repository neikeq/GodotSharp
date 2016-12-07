using System;

namespace GodotEngine
{
    public class VisualScriptIndexSet : VisualScriptNode
    {
        private const string nativeName = "VisualScriptIndexSet";

        public VisualScriptIndexSet() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptIndexSet_Ctor(this);
        }

        internal VisualScriptIndexSet(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptIndexSet()
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
                    NativeCalls.godot_icall_VisualScriptIndexSet_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
