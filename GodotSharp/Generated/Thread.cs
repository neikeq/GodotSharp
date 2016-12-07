using System;

namespace GodotEngine
{
    /// <summary>
    /// A unit of execution in a process. Can run methods on [Object]s simultaneously. The use of synchronization via [Mutex], [Semaphore] is advised if working with shared objects.
    /// </summary>
    public class Thread : Reference
    {
        public const int PRIORITY_LOW = 0;
        public const int PRIORITY_NORMAL = 1;
        public const int PRIORITY_HIGH = 2;

        private const string nativeName = "_Thread";

        public Thread() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Thread_Ctor(this);
        }

        internal Thread(bool memoryOwn) : base(memoryOwn) {}

        ~Thread()
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
                    NativeCalls.godot_icall_Thread_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "start");

        /// <summary>
        /// Start a new [Thread], it will run "method" on object "instance" using "userdata" as an argument and running with "priority", one of PRIORITY_* enum.
        /// Returns OK on success, or ERR_CANT_CREATE on failure.
        /// </summary>
        public Error start(Object instance, string method, object userdata = null, int priority = 1)
        {
            int ret = NativeCalls.godot_icall_4_597(method_bind_0, Object.GetPtr(this), Object.GetPtr(instance), method, userdata, priority);
            return (Error)ret;
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_id");

        /// <summary>
        /// Return the id of the thread, uniquely identifying it among all threads.
        /// </summary>
        public string get_id()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_active");

        /// <summary>
        /// Whether this thread is currently active, an active Thread cannot start work on a new method but can be joined with [method wait_to_finish].
        /// </summary>
        public bool is_active()
        {
            return NativeCalls.godot_icall_0_14(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "wait_to_finish");

        /// <summary>
        /// Joins the [Thread] and waits for it to finish. Returns what the method called returned.
        /// </summary>
        public object wait_to_finish()
        {
            return NativeCalls.godot_icall_0_126(method_bind_3, Object.GetPtr(this));
        }
    }
}
