using System;

namespace GodotEngine
{
    public class VisualScriptBuiltinFunc : VisualScriptNode
    {
        private const string nativeName = "VisualScriptBuiltinFunc";

        public VisualScriptBuiltinFunc() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptBuiltinFunc_Ctor(this);
        }

        internal VisualScriptBuiltinFunc(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptBuiltinFunc()
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
                    NativeCalls.godot_icall_VisualScriptBuiltinFunc_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_func");

        public void set_func(int which)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), which);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_func");

        public int get_func()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }
    }
}
