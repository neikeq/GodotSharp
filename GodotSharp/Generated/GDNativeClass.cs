using System;

namespace GodotEngine
{
    public class GDNativeClass : Reference
    {
        private const string nativeName = "GDNativeClass";

        internal GDNativeClass() {}

        internal GDNativeClass(bool memoryOwn) : base(memoryOwn) {}

        ~GDNativeClass()
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
                    NativeCalls.godot_icall_GDNativeClass_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "new");

        public void @new()
        {
            NativeCalls.godot_icall_0_7(method_bind_0, Object.GetPtr(this));
        }
    }
}
