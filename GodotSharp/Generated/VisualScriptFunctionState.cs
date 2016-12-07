using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class VisualScriptFunctionState : Reference
    {
        private const string nativeName = "VisualScriptFunctionState";

        internal VisualScriptFunctionState() {}

        internal VisualScriptFunctionState(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptFunctionState()
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
                    NativeCalls.godot_icall_VisualScriptFunctionState_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "connect_to_signal");

        public void connect_to_signal(Object obj, string signals, List<object> args)
        {
            NativeCalls.godot_icall_3_526(method_bind_0, Object.GetPtr(this), Object.GetPtr(obj), signals, args.ToArray());
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "resume");

        public List<object> resume(List<object> args = null)
        {
            object[] ret = NativeCalls.godot_icall_1_527(method_bind_1, Object.GetPtr(this), args.ToArray());
            return new List<object>(ret);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_valid");

        public bool is_valid()
        {
            return NativeCalls.godot_icall_0_14(method_bind_2, Object.GetPtr(this));
        }
    }
}
