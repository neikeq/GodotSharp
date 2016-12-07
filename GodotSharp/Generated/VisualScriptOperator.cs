using System;

namespace GodotEngine
{
    public class VisualScriptOperator : VisualScriptNode
    {
        private const string nativeName = "VisualScriptOperator";

        public VisualScriptOperator() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptOperator_Ctor(this);
        }

        internal VisualScriptOperator(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptOperator()
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
                    NativeCalls.godot_icall_VisualScriptOperator_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_operator");

        public void set_operator(int op)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), op);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_operator");

        public int get_operator()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_typed");

        public void set_typed(int type)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), type);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_typed");

        public int get_typed()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }
    }
}
