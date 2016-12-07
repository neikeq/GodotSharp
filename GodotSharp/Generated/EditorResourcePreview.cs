using System;

namespace GodotEngine
{
    /// <summary>
    /// This object is used to generate previews for resources of files.
    /// </summary>
    public class EditorResourcePreview : Node
    {
        private const string nativeName = "EditorResourcePreview";

        public EditorResourcePreview() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_EditorResourcePreview_Ctor(this);
        }

        internal EditorResourcePreview(bool memoryOwn) : base(memoryOwn) {}

        ~EditorResourcePreview()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "queue_resource_preview");

        /// <summary>
        /// Queue a resource file for preview (using a path). Once the preview is ready, your receiver.receiver_func will be called either containing the preview texture or an empty texure (if no preview was possible). Callback must have the format: (path,texture,userdata). Userdata can be anything.
        /// </summary>
        public void queue_resource_preview(string path, Object receiver, string receiver_func, object userdata)
        {
            NativeCalls.godot_icall_4_217(method_bind_0, Object.GetPtr(this), path, Object.GetPtr(receiver), receiver_func, userdata);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "queue_edited_resource_preview");

        /// <summary>
        /// Queue a resource being edited for preview (using an instance). Once the preview is ready, your receiver.receiver_func will be called either containing the preview texture or an empty texure (if no preview was possible). Callback must have the format: (path,texture,userdata). Userdata can be anything.
        /// </summary>
        public void queue_edited_resource_preview(Resource resource, Object receiver, string receiver_func, object userdata)
        {
            NativeCalls.godot_icall_4_218(method_bind_1, Object.GetPtr(this), Object.GetPtr(resource), Object.GetPtr(receiver), receiver_func, userdata);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_preview_generator");

        /// <summary>
        /// Create an own, custom preview generator.
        /// </summary>
        public void add_preview_generator(EditorResourcePreviewGenerator generator)
        {
            NativeCalls.godot_icall_1_21(method_bind_2, Object.GetPtr(this), Object.GetPtr(generator));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_preview_generator");

        /// <summary>
        /// Remove a custom preview generator.
        /// </summary>
        public void remove_preview_generator(EditorResourcePreviewGenerator generator)
        {
            NativeCalls.godot_icall_1_21(method_bind_3, Object.GetPtr(this), Object.GetPtr(generator));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "check_for_invalidation");

        /// <summary>
        /// Check if the resource changed, if so it will be invalidated and the corresponding signal emitted.
        /// </summary>
        public void check_for_invalidation(string path)
        {
            NativeCalls.godot_icall_1_18(method_bind_4, Object.GetPtr(this), path);
        }
    }
}
