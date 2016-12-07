using System;

namespace GodotEngine
{
    public class VisualScriptCondition : VisualScriptNode
    {
        private const string nativeName = "VisualScriptCondition";

        public VisualScriptCondition() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptCondition_Ctor(this);
        }

        internal VisualScriptCondition(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptCondition()
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
                    NativeCalls.godot_icall_VisualScriptCondition_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
