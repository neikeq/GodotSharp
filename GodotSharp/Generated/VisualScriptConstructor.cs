using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class VisualScriptConstructor : VisualScriptNode
    {
        private const string nativeName = "VisualScriptConstructor";

        public VisualScriptConstructor() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptConstructor_Ctor(this);
        }

        internal VisualScriptConstructor(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptConstructor()
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
                    NativeCalls.godot_icall_VisualScriptConstructor_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_constructor_type");

        public void set_constructor_type(int type)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), type);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_constructor_type");

        public int get_constructor_type()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_constructor");

        public void set_constructor(Dictionary<object, object> constructor)
        {
            NativeCalls.godot_icall_1_219(method_bind_2, Object.GetPtr(this), constructor);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_constructor");

        public Dictionary<object, object> get_constructor()
        {
            return NativeCalls.godot_icall_0_249(method_bind_3, Object.GetPtr(this));
        }
    }
}
