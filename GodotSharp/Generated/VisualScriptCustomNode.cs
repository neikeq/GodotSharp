using System;

namespace GodotEngine
{
    public class VisualScriptCustomNode : VisualScriptNode
    {
        public const int START_MODE_BEGIN_SEQUENCE = 0;
        public const int START_MODE_CONTINUE_SEQUENCE = 1;
        public const int START_MODE_RESUME_YIELD = 2;
        public const int STEP_PUSH_STACK_BIT = 16777216;
        public const int STEP_GO_BACK_BIT = 33554432;
        public const int STEP_NO_ADVANCE_BIT = 67108864;
        public const int STEP_EXIT_FUNCTION_BIT = 134217728;
        public const int STEP_YIELD_BIT = 268435456;

        private const string nativeName = "VisualScriptCustomNode";

        public VisualScriptCustomNode() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptCustomNode_Ctor(this);
        }

        internal VisualScriptCustomNode(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptCustomNode()
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
                    NativeCalls.godot_icall_VisualScriptCustomNode_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
