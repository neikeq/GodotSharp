using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class GDScript : Script
    {
        private const string nativeName = "GDScript";

        public GDScript() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_GDScript_Ctor(this);
        }

        internal GDScript(bool memoryOwn) : base(memoryOwn) {}

        ~GDScript()
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
                    NativeCalls.godot_icall_GDScript_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "new");

        public Object @new(params object[] @args)
        {
            return NativeCalls.godot_icall_1_232(method_bind_0, Object.GetPtr(this), @args);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_as_byte_code");

        public List<byte> get_as_byte_code()
        {
            byte[] ret = NativeCalls.godot_icall_0_102(method_bind_1, Object.GetPtr(this));
            return new List<byte>(ret);
        }
    }
}
