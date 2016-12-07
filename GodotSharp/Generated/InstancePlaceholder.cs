using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Turning on the option [b]Load As Placeholder[/b] for an instanced scene in the editor causes it to be replaced by an InstacePlaceholder when running the game. This makes it possible to delay actually loading the scene until calling [method replace_by_instance]. This is useful to avoid loading large scenes all at once by loading parts of it selectively.
    /// The InstancePlaceholder does not have a transform. This causes any child nodes to be positioned relatively to the Viewport from point (0,0), rather than their parent as displayed in the editor. Replacing the placeholder with a scene with a transform will transform children relatively to their parent again.
    /// </summary>
    public class InstancePlaceholder : Node
    {
        private const string nativeName = "InstancePlaceholder";

        internal InstancePlaceholder() {}

        internal InstancePlaceholder(bool memoryOwn) : base(memoryOwn) {}

        ~InstancePlaceholder()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stored_values");

        public Dictionary<object, object> get_stored_values(bool with_order = false)
        {
            return NativeCalls.godot_icall_1_264(method_bind_0, Object.GetPtr(this), with_order);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "replace_by_instance");

        /// <summary>
        /// Replace this placeholder by the scene handed as an argument, or the original scene if no argument is given. As for all resources, the scene is loaded only if it's not loaded already. By manually loading the scene beforehand, delays caused by this function can be avoided.
        /// </summary>
        public void replace_by_instance(PackedScene custom_scene = null)
        {
            NativeCalls.godot_icall_1_21(method_bind_1, Object.GetPtr(this), Object.GetPtr(custom_scene));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_instance_path");

        /// <summary>
        /// Retrieve the path to the [PackedScene] resource file that is loaded by default when calling [method replace_by_instance].
        /// </summary>
        public string get_instance_path()
        {
            return NativeCalls.godot_icall_0_19(method_bind_2, Object.GetPtr(this));
        }
    }
}
