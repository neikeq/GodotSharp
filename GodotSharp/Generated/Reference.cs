using System;

namespace GodotEngine
{
    /// <summary>
    /// Base class for anything that keeps a reference count. Resource and many other helper objects inherit this. References keep an internal reference counter so they are only released when no longer in use.
    /// </summary>
    public class Reference : Object
    {
        private const string nativeName = "Reference";

        public Reference() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Reference_Ctor(this);
        }

        internal Reference(bool memoryOwn) : base(memoryOwn) {}

        ~Reference()
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
                    NativeCalls.godot_icall_Reference_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "init_ref");

        public bool init_ref()
        {
            return NativeCalls.godot_icall_0_14(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "reference");

        /// <summary>
        /// Increase the internal reference counter. Use this only if you really know what you are doing.
        /// </summary>
        public void reference()
        {
            NativeCalls.godot_icall_0_7(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "unreference");

        /// <summary>
        /// Decrease the internal reference counter. Use this only if you really know what you are doing.
        /// </summary>
        public bool unreference()
        {
            return NativeCalls.godot_icall_0_14(method_bind_2, Object.GetPtr(this));
        }
    }
}
