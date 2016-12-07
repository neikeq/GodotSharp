using System;

namespace GodotEngine
{
    public class VisualScriptYieldSignal : VisualScriptNode
    {
        public const int CALL_MODE_SELF = 0;
        public const int CALL_MODE_NODE_PATH = 1;
        public const int CALL_MODE_INSTANCE = 2;

        private const string nativeName = "VisualScriptYieldSignal";

        public VisualScriptYieldSignal() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptYieldSignal_Ctor(this);
        }

        internal VisualScriptYieldSignal(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptYieldSignal()
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
                    NativeCalls.godot_icall_VisualScriptYieldSignal_Dtor(ptr);
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

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_signal");

        public void set_signal(string signal)
        {
            NativeCalls.godot_icall_1_18(method_bind_2, Object.GetPtr(this), signal);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_signal");

        public string get_signal()
        {
            return NativeCalls.godot_icall_0_19(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_call_mode");

        public void set_call_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_4, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_call_mode");

        public int get_call_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_base_path");

        public void set_base_path(NodePath base_path)
        {
            NativeCalls.godot_icall_1_57(method_bind_6, Object.GetPtr(this), NodePath.GetPtr(base_path));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_base_path");

        public NodePath get_base_path()
        {
            IntPtr ret = NativeCalls.godot_icall_0_58(method_bind_7, Object.GetPtr(this));
            return new NodePath(ret);
        }
    }
}
