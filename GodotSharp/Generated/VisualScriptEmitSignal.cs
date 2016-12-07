using System;

namespace GodotEngine
{
    public class VisualScriptEmitSignal : VisualScriptNode
    {
        private const string nativeName = "VisualScriptEmitSignal";

        public VisualScriptEmitSignal() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptEmitSignal_Ctor(this);
        }

        internal VisualScriptEmitSignal(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptEmitSignal()
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
                    NativeCalls.godot_icall_VisualScriptEmitSignal_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_signal");

        public void set_signal(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_signal");

        public string get_signal()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }
    }
}
