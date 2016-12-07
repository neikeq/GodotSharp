using System;

namespace GodotEngine
{
    /// <summary>
    /// A synchronization Mutex. Element used in multi-threadding. Basically a binary [Semaphore]. Guarantees that only one thread has this lock, can be used to protect a critical section.
    /// </summary>
    public class Mutex : Reference
    {
        private const string nativeName = "_Mutex";

        public Mutex() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Mutex_Ctor(this);
        }

        internal Mutex(bool memoryOwn) : base(memoryOwn) {}

        ~Mutex()
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
                    NativeCalls.godot_icall_Mutex_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "lock");

        /// <summary>
        /// Lock this [Mutex], blocks until it is unlocked by the current owner.
        /// </summary>
        public void @lock()
        {
            NativeCalls.godot_icall_0_7(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "try_lock");

        /// <summary>
        /// Try locking this [Mutex], does not block. Returns [OK] on success else [ERR_BUSY].
        /// </summary>
        public Error try_lock()
        {
            int ret = NativeCalls.godot_icall_0_250(method_bind_1, Object.GetPtr(this));
            return (Error)ret;
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "unlock");

        /// <summary>
        /// Unlock this [Mutex], leaving it to others threads.
        /// </summary>
        public void unlock()
        {
            NativeCalls.godot_icall_0_7(method_bind_2, Object.GetPtr(this));
        }
    }
}
