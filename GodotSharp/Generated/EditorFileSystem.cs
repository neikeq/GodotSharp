using System;

namespace GodotEngine
{
    /// <summary>
    /// This object holds information of all resources in the filesystem, their types, etc.
    /// </summary>
    public class EditorFileSystem : Node
    {
        private const string nativeName = "EditorFileSystem";

        public EditorFileSystem() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_EditorFileSystem_Ctor(this);
        }

        internal EditorFileSystem(bool memoryOwn) : base(memoryOwn) {}

        ~EditorFileSystem()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_filesystem");

        /// <summary>
        /// Get the root directory object.
        /// </summary>
        public EditorFileSystemDirectory get_filesystem()
        {
            return NativeCalls.godot_icall_0_205(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_scanning");

        /// <summary>
        /// Return true of the filesystem is being scanned.
        /// </summary>
        public bool is_scanning()
        {
            return NativeCalls.godot_icall_0_14(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_scanning_progress");

        /// <summary>
        /// Return the scan progress for 0 to 1 if the FS is being scanned.
        /// </summary>
        public float get_scanning_progress()
        {
            return NativeCalls.godot_icall_0_46(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "scan");

        /// <summary>
        /// Scan the filesystem for changes.
        /// </summary>
        public void scan()
        {
            NativeCalls.godot_icall_0_7(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "scan_sources");

        /// <summary>
        /// Check if the source of any imported resource changed.
        /// </summary>
        public void scan_sources()
        {
            NativeCalls.godot_icall_0_7(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "update_file");

        /// <summary>
        /// Update a file information. Call this if an external program (not Godot) modified the file.
        /// </summary>
        public void update_file(string path)
        {
            NativeCalls.godot_icall_1_18(method_bind_5, Object.GetPtr(this), path);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_path");

        public EditorFileSystemDirectory get_path(string path)
        {
            return NativeCalls.godot_icall_1_206(method_bind_6, Object.GetPtr(this), path);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_file_type");

        /// <summary>
        /// Get the type of the file, given the full path.
        /// </summary>
        public string get_file_type(string path)
        {
            return NativeCalls.godot_icall_1_52(method_bind_7, Object.GetPtr(this), path);
        }
    }
}
