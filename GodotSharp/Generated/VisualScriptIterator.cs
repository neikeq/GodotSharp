using System;

namespace GodotEngine
{
    public class VisualScriptIterator : VisualScriptNode
    {
        private const string nativeName = "VisualScriptIterator";

        public VisualScriptIterator() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptIterator_Ctor(this);
        }

        internal VisualScriptIterator(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptIterator()
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
                    NativeCalls.godot_icall_VisualScriptIterator_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
