using System;

namespace GodotEngine
{
    public class VisualScriptSubCall : VisualScriptNode
    {
        private const string nativeName = "VisualScriptSubCall";

        public VisualScriptSubCall() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptSubCall_Ctor(this);
        }

        internal VisualScriptSubCall(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptSubCall()
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
                    NativeCalls.godot_icall_VisualScriptSubCall_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
