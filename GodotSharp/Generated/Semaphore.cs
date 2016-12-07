using System;

namespace GodotEngine
{
    /// <summary>
    /// A synchronization Semaphore. Element used in multi-threadding. Initialized to zero on creation.
    /// </summary>
    public class Semaphore : Reference
    {
        private const string nativeName = "_Semaphore";

        public Semaphore() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Semaphore_Ctor(this);
        }

        internal Semaphore(bool memoryOwn) : base(memoryOwn) {}

        ~Semaphore()
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
                    NativeCalls.godot_icall_Semaphore_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "wait");

        /// <summary>
        /// Tries to wait for the [Semaphore], if it's value is zero, blocks until non-zero.
        /// </summary>
        public Error wait()
        {
            int ret = NativeCalls.godot_icall_0_250(method_bind_0, Object.GetPtr(this));
            return (Error)ret;
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "post");

        /// <summary>
        /// Lowers the [Semaphore], allowing one more thread in.
        /// </summary>
        public Error post()
        {
            int ret = NativeCalls.godot_icall_0_250(method_bind_1, Object.GetPtr(this));
            return (Error)ret;
        }
    }
}
