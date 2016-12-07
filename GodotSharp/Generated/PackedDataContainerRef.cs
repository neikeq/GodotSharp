using System;

namespace GodotEngine
{
    public class PackedDataContainerRef : Reference
    {
        private const string nativeName = "PackedDataContainerRef";

        internal PackedDataContainerRef() {}

        internal PackedDataContainerRef(bool memoryOwn) : base(memoryOwn) {}

        ~PackedDataContainerRef()
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
                    NativeCalls.godot_icall_PackedDataContainerRef_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "size");

        public int size()
        {
            return NativeCalls.godot_icall_0_0(method_bind_0, Object.GetPtr(this));
        }
    }
}
