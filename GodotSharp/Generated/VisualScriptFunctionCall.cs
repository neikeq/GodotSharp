using System;

namespace GodotEngine
{
    public class VisualScriptFunctionCall : VisualScriptNode
    {
        public const int CALL_MODE_SELF = 0;
        public const int CALL_MODE_NODE_PATH = 1;
        public const int CALL_MODE_INSTANCE = 2;
        public const int CALL_MODE_BASIC_TYPE = 3;

        private const string nativeName = "VisualScriptFunctionCall";

        public VisualScriptFunctionCall() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptFunctionCall_Ctor(this);
        }

        internal VisualScriptFunctionCall(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptFunctionCall()
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
                    NativeCalls.godot_icall_VisualScriptFunctionCall_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_base_type");

        public void set_base_type(string base_type)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), base_type);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_base_type");

        public string get_base_type()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_base_script");

        public void set_base_script(string base_script)
        {
            NativeCalls.godot_icall_1_18(method_bind_2, Object.GetPtr(this), base_script);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_base_script");

        public string get_base_script()
        {
            return NativeCalls.godot_icall_0_19(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_basic_type");

        public void set_basic_type(int basic_type)
        {
            NativeCalls.godot_icall_1_4(method_bind_4, Object.GetPtr(this), basic_type);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_basic_type");

        public int get_basic_type()
        {
            return NativeCalls.godot_icall_0_0(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_singleton");

        public void set_singleton(string singleton)
        {
            NativeCalls.godot_icall_1_18(method_bind_6, Object.GetPtr(this), singleton);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_singleton");

        public string get_singleton()
        {
            return NativeCalls.godot_icall_0_19(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_function");

        public void set_function(string function)
        {
            NativeCalls.godot_icall_1_18(method_bind_8, Object.GetPtr(this), function);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_function");

        public string get_function()
        {
            return NativeCalls.godot_icall_0_19(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_call_mode");

        public void set_call_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_10, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_call_mode");

        public int get_call_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_base_path");

        public void set_base_path(NodePath base_path)
        {
            NativeCalls.godot_icall_1_57(method_bind_12, Object.GetPtr(this), NodePath.GetPtr(base_path));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_base_path");

        public NodePath get_base_path()
        {
            IntPtr ret = NativeCalls.godot_icall_0_58(method_bind_13, Object.GetPtr(this));
            return new NodePath(ret);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_use_default_args");

        public void set_use_default_args(int amount)
        {
            NativeCalls.godot_icall_1_4(method_bind_14, Object.GetPtr(this), amount);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_use_default_args");

        public int get_use_default_args()
        {
            return NativeCalls.godot_icall_0_0(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_rpc_call_mode");

        public void set_rpc_call_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_16, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rpc_call_mode");

        public int get_rpc_call_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_validate");

        public void set_validate(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_18, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_validate");

        public bool get_validate()
        {
            return NativeCalls.godot_icall_0_14(method_bind_19, Object.GetPtr(this));
        }
    }
}
