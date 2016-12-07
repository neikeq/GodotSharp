using System;

namespace GodotEngine
{
    /// <summary>
    /// In GDScript, functions are not [i]first-class objects[/i]. This means it is impossible to store them directly as variables, return them from another function, or pass them as arguments.
    /// However, by creating a [FuncRef] using the [method @GDScript.funcref] function, a reference to a function in a given object can be created, passed around and called.
    /// </summary>
    public class FuncRef : Reference
    {
        private const string nativeName = "FuncRef";

        public FuncRef() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_FuncRef_Ctor(this);
        }

        internal FuncRef(bool memoryOwn) : base(memoryOwn) {}

        ~FuncRef()
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
                    NativeCalls.godot_icall_FuncRef_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "call_func");

        public object call_func(params object[] @args)
        {
            return NativeCalls.godot_icall_1_230(method_bind_0, Object.GetPtr(this), @args);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_instance");

        /// <summary>
        /// Set the object on which to call the referenced function. This object must be of a type actually inheriting from [Object], not a built-in type such as [int], [Vector2] or [Dictionary].
        /// </summary>
        public void set_instance(Object instance)
        {
            NativeCalls.godot_icall_1_20(method_bind_1, Object.GetPtr(this), Object.GetPtr(instance));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_function");

        /// <summary>
        /// Set the name of the function to call on the object, without parentheses or any parameters.
        /// </summary>
        public void set_function(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_2, Object.GetPtr(this), name);
        }
    }
}
