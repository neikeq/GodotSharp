using System;

namespace GodotEngine
{
    /// <summary>
    /// Interactive Resource Loader. This object is returned by ResourceLoader when performing an interactive load. It allows to load with high granularity, so this is mainly useful for displaying load bars/percentages.
    /// </summary>
    public class ResourceInteractiveLoader : Reference
    {
        private const string nativeName = "ResourceInteractiveLoader";

        internal ResourceInteractiveLoader() {}

        internal ResourceInteractiveLoader(bool memoryOwn) : base(memoryOwn) {}

        ~ResourceInteractiveLoader()
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
                    NativeCalls.godot_icall_ResourceInteractiveLoader_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_resource");

        /// <summary>
        /// Return the loaded resource (only if loaded). Otherwise, returns null.
        /// </summary>
        public Object get_resource()
        {
            return NativeCalls.godot_icall_0_12(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "poll");

        /// <summary>
        /// Poll the load. If OK is returned, this means poll will have to be called again. If ERR_EOF is returned, them the load has finished and the resource can be obtained by calling [method get_resource].
        /// </summary>
        public int poll()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "wait");

        public int wait()
        {
            return NativeCalls.godot_icall_0_0(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stage");

        /// <summary>
        /// Return the load stage. The total amount of stages can be queried with [method get_stage_count]
        /// </summary>
        public int get_stage()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stage_count");

        /// <summary>
        /// Return the total amount of stages (calls to [method poll]) needed to completely load this resource.
        /// </summary>
        public int get_stage_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_4, Object.GetPtr(this));
        }
    }
}
