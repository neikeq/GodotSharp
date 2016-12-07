using System;

namespace GodotEngine
{
    public class VisualScriptSwitch : VisualScriptNode
    {
        private const string nativeName = "VisualScriptSwitch";

        public VisualScriptSwitch() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptSwitch_Ctor(this);
        }

        internal VisualScriptSwitch(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptSwitch()
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
                    NativeCalls.godot_icall_VisualScriptSwitch_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
