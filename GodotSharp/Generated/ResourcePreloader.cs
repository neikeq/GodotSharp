using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Resource Preloader Node. This node is used to preload sub-resources inside a scene, so when the scene is loaded all the resources are ready to use and be retrieved from here.
    /// </summary>
    public class ResourcePreloader : Node
    {
        private const string nativeName = "ResourcePreloader";

        public ResourcePreloader() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ResourcePreloader_Ctor(this);
        }

        internal ResourcePreloader(bool memoryOwn) : base(memoryOwn) {}

        ~ResourcePreloader()
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
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_resource");

        /// <summary>
        /// Add a resource to the preloader. Set the text-id that will be used to identify it (retrieve it/erase it/etc).
        /// </summary>
        public void add_resource(string name, Object resource)
        {
            NativeCalls.godot_icall_2_409(method_bind_0, Object.GetPtr(this), name, Object.GetPtr(resource));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_resource");

        /// <summary>
        /// Remove a resource from the preloader by text id.
        /// </summary>
        public void remove_resource(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_1, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rename_resource");

        /// <summary>
        /// Rename a resource inside the preloader, from a text-id to a new text-id.
        /// </summary>
        public void rename_resource(string name, string newname)
        {
            NativeCalls.godot_icall_2_48(method_bind_2, Object.GetPtr(this), name, newname);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_resource");

        /// <summary>
        /// Return true if the preloader has a given resource.
        /// </summary>
        public bool has_resource(string name)
        {
            return NativeCalls.godot_icall_1_49(method_bind_3, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_resource");

        /// <summary>
        /// Return the resource given a text-id.
        /// </summary>
        public Object get_resource(string name)
        {
            return NativeCalls.godot_icall_1_233(method_bind_4, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_resource_list");

        /// <summary>
        /// Return the list of resources inside the preloader.
        /// </summary>
        public List<string> get_resource_list()
        {
            string[] ret = NativeCalls.godot_icall_0_51(method_bind_5, Object.GetPtr(this));
            return new List<string>(ret);
        }
    }
}
