using System;

namespace GodotEngine
{
    /// <summary>
    /// Calling [method @GDScript.yield] within a function will cause that function to yield and return its current state as an object of this type. The yielded function call can then be resumed later by calling [method resume] on this state object.
    /// </summary>
    public class GDFunctionState : Reference
    {
        private const string nativeName = "GDFunctionState";

        internal GDFunctionState() {}

        internal GDFunctionState(bool memoryOwn) : base(memoryOwn) {}

        ~GDFunctionState()
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
                    NativeCalls.godot_icall_GDFunctionState_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "resume");

        /// <summary>
        /// Resume execution of the yielded function call.
        /// If handed an argument, return the argument from the [method @GDScript.yield] call in the yielded function call. You can pass e.g. an [Array] to hand multiple arguments.
        /// This function returns what the resumed function call returns, possibly another function state if yielded again.
        /// </summary>
        public object resume(object arg = null)
        {
            return NativeCalls.godot_icall_1_231(method_bind_0, Object.GetPtr(this), arg);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_valid");

        /// <summary>
        /// Check whether the function call may be resumed. This is not the case if the function state was already resumed.
        /// </summary>
        public bool is_valid()
        {
            return NativeCalls.godot_icall_0_14(method_bind_1, Object.GetPtr(this));
        }
    }
}
