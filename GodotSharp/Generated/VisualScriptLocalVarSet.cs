using System;

namespace GodotEngine
{
    public class VisualScriptLocalVarSet : VisualScriptNode
    {
        private const string nativeName = "VisualScriptLocalVarSet";

        public VisualScriptLocalVarSet() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptLocalVarSet_Ctor(this);
        }

        internal VisualScriptLocalVarSet(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptLocalVarSet()
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
                    NativeCalls.godot_icall_VisualScriptLocalVarSet_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_var_name");

        public void set_var_name(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_var_name");

        public string get_var_name()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_var_type");

        public void set_var_type(int type)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), type);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_var_type");

        public int get_var_type()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }
    }
}
