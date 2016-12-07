using System;

namespace GodotEngine
{
    public class EditorFileSystemDirectory : Object
    {
        private const string nativeName = "EditorFileSystemDirectory";

        public EditorFileSystemDirectory() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_EditorFileSystemDirectory_Ctor(this);
        }

        internal EditorFileSystemDirectory(bool memoryOwn) : base(memoryOwn) {}

        ~EditorFileSystemDirectory()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_subdir_count");

        public int get_subdir_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_subdir");

        public Object get_subdir(int idx)
        {
            return NativeCalls.godot_icall_1_207(method_bind_1, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_file_count");

        public int get_file_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_file");

        public string get_file(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_3, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_file_path");

        public string get_file_path(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_4, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_file_type");

        public string get_file_type(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_5, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_missing_sources");

        public bool is_missing_sources(int idx)
        {
            return NativeCalls.godot_icall_1_33(method_bind_6, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_name");

        public string get_name()
        {
            return NativeCalls.godot_icall_0_19(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_path");

        public string get_path()
        {
            return NativeCalls.godot_icall_0_19(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_parent");

        public EditorFileSystemDirectory get_parent()
        {
            return NativeCalls.godot_icall_0_205(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "find_file_index");

        public int find_file_index(string name)
        {
            return NativeCalls.godot_icall_1_63(method_bind_10, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "find_dir_index");

        public int find_dir_index(string name)
        {
            return NativeCalls.godot_icall_1_63(method_bind_11, Object.GetPtr(this), name);
        }
    }
}
