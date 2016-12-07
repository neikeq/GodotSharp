using System;

namespace GodotEngine
{
    /// <summary>
    /// Helper to maange UndoRedo in the editor or custom tools. It works by storing calls to functions in both 'do' an 'undo' lists.
    /// Common behavior is to create an action, then add do/undo calls to functions or property changes, then commiting the action.
    /// </summary>
    public class UndoRedo : Object
    {
        public const int MERGE_DISABLE = 0;
        public const int MERGE_ENDS = 1;
        public const int MERGE_ALL = 2;

        private const string nativeName = "UndoRedo";

        public UndoRedo() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_UndoRedo_Ctor(this);
        }

        internal UndoRedo(bool memoryOwn) : base(memoryOwn) {}

        ~UndoRedo()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "create_action");

        /// <summary>
        /// Create a new action. After this is called, do all your calls to [method add_do_method], [method add_undo_method], [method add_do_property] and [method add_un
        /// do_property].
        /// </summary>
        public void create_action(string name, int merge_mode = 0)
        {
            NativeCalls.godot_icall_2_71(method_bind_0, Object.GetPtr(this), name, merge_mode);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "commit_action");

        /// <summary>
        /// Commit the action. All 'do' methods/properties are called/set when this function is called.
        /// </summary>
        public void commit_action()
        {
            NativeCalls.godot_icall_0_7(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_do_method");

        public void add_do_method(Object @object, string method, params object[] @args)
        {
            NativeCalls.godot_icall_3_509(method_bind_2, Object.GetPtr(this), Object.GetPtr(@object), method, @args);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_undo_method");

        public void add_undo_method(Object @object, string method, params object[] @args)
        {
            NativeCalls.godot_icall_3_509(method_bind_3, Object.GetPtr(this), Object.GetPtr(@object), method, @args);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_do_property");

        /// <summary>
        /// Set a property with a custom value.
        /// </summary>
        public void add_do_property(Object @object, string property, object @value)
        {
            NativeCalls.godot_icall_3_510(method_bind_4, Object.GetPtr(this), Object.GetPtr(@object), property, @value);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_undo_property");

        /// <summary>
        /// Undo setting of a property with a custom value.
        /// </summary>
        public void add_undo_property(Object @object, string property, object @value)
        {
            NativeCalls.godot_icall_3_510(method_bind_5, Object.GetPtr(this), Object.GetPtr(@object), property, @value);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_do_reference");

        /// <summary>
        /// Add a 'do' reference that will be erased if the 'do' history is lost. This is useful mostly for new nodes created for the 'do' call. Do not use for resources.
        /// </summary>
        public void add_do_reference(Object @object)
        {
            NativeCalls.godot_icall_1_20(method_bind_6, Object.GetPtr(this), Object.GetPtr(@object));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_undo_reference");

        /// <summary>
        /// Add an 'undo' reference that will be erased if the 'undo' history is lost. This is useful mostly for nodes rmoved with the 'do' call (not the 'undo' call!).
        /// </summary>
        public void add_undo_reference(Object @object)
        {
            NativeCalls.godot_icall_1_20(method_bind_7, Object.GetPtr(this), Object.GetPtr(@object));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_history");

        /// <summary>
        /// Clear the undo/redo history and associated
        /// references.
        /// </summary>
        public void clear_history()
        {
            NativeCalls.godot_icall_0_7(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_current_action_name");

        /// <summary>
        /// Get the name of the current action.
        /// </summary>
        public string get_current_action_name()
        {
            return NativeCalls.godot_icall_0_19(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_version");

        /// <summary>
        /// Get the version, each time a new action is commited, the version number of the UndoRedo is increased automatically.
        /// This is useful mostly to check if something changed from a saved version.
        /// </summary>
        public int get_version()
        {
            return NativeCalls.godot_icall_0_0(method_bind_10, Object.GetPtr(this));
        }
    }
}
