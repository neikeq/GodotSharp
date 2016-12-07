using System;

namespace GodotEngine
{
    public class VisualScriptVariableGet : VisualScriptNode
    {
        private const string nativeName = "VisualScriptVariableGet";

        public VisualScriptVariableGet() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptVariableGet_Ctor(this);
        }

        internal VisualScriptVariableGet(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptVariableGet()
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
                    NativeCalls.godot_icall_VisualScriptVariableGet_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_variable");

        public void set_variable(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_variable");

        public string get_variable()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }
    }
}
