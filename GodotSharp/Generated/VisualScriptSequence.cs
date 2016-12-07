using System;

namespace GodotEngine
{
    public class VisualScriptSequence : VisualScriptNode
    {
        private const string nativeName = "VisualScriptSequence";

        public VisualScriptSequence() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptSequence_Ctor(this);
        }

        internal VisualScriptSequence(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptSequence()
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
                    NativeCalls.godot_icall_VisualScriptSequence_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_steps");

        public void set_steps(int steps)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), steps);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_steps");

        public int get_steps()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }
    }
}
