using System;

namespace GodotEngine
{
    public class VisualScriptInputFilter : VisualScriptNode
    {
        private const string nativeName = "VisualScriptInputFilter";

        public VisualScriptInputFilter() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptInputFilter_Ctor(this);
        }

        internal VisualScriptInputFilter(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptInputFilter()
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
                    NativeCalls.godot_icall_VisualScriptInputFilter_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
