using System;

namespace GodotEngine
{
    public class VisualScriptExpression : VisualScriptNode
    {
        private const string nativeName = "VisualScriptExpression";

        public VisualScriptExpression() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptExpression_Ctor(this);
        }

        internal VisualScriptExpression(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptExpression()
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
                    NativeCalls.godot_icall_VisualScriptExpression_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
