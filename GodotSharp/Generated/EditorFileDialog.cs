using System;

namespace GodotEngine
{
    public class EditorFileDialog : ConfirmationDialog
    {
        public const int MODE_OPEN_FILE = 0;
        public const int MODE_OPEN_FILES = 1;
        public const int MODE_OPEN_DIR = 2;
        public const int MODE_OPEN_ANY = 3;
        public const int MODE_SAVE_FILE = 4;
        public const int ACCESS_RESOURCES = 0;
        public const int ACCESS_USERDATA = 1;
        public const int ACCESS_FILESYSTEM = 2;

        private const string nativeName = "EditorFileDialog";

        public EditorFileDialog() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_EditorFileDialog_Ctor(this);
        }

        internal EditorFileDialog(bool memoryOwn) : base(memoryOwn) {}

        ~EditorFileDialog()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_filters");

        public void clear_filters()
        {
            NativeCalls.godot_icall_0_7(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_filter");

        public void add_filter(string filter)
        {
            NativeCalls.godot_icall_1_18(method_bind_1, Object.GetPtr(this), filter);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_current_dir");

        public string get_current_dir()
        {
            return NativeCalls.godot_icall_0_19(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_current_file");

        public string get_current_file()
        {
            return NativeCalls.godot_icall_0_19(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_current_path");

        public string get_current_path()
        {
            return NativeCalls.godot_icall_0_19(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_current_dir");

        public void set_current_dir(string dir)
        {
            NativeCalls.godot_icall_1_18(method_bind_5, Object.GetPtr(this), dir);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_current_file");

        public void set_current_file(string file)
        {
            NativeCalls.godot_icall_1_18(method_bind_6, Object.GetPtr(this), file);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_current_path");

        public void set_current_path(string path)
        {
            NativeCalls.godot_icall_1_18(method_bind_7, Object.GetPtr(this), path);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_mode");

        public void set_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_8, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mode");

        public int get_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_vbox");

        public VBoxContainer get_vbox()
        {
            return NativeCalls.godot_icall_0_204(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_access");

        public void set_access(int access)
        {
            NativeCalls.godot_icall_1_4(method_bind_11, Object.GetPtr(this), access);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_access");

        public int get_access()
        {
            return NativeCalls.godot_icall_0_0(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_show_hidden_files");

        public void set_show_hidden_files(bool show)
        {
            NativeCalls.godot_icall_1_13(method_bind_13, Object.GetPtr(this), show);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_showing_hidden_files");

        public bool is_showing_hidden_files()
        {
            return NativeCalls.godot_icall_0_14(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_display_mode");

        public void set_display_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_15, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_display_mode");

        public int get_display_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_16, Object.GetPtr(this));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_disable_overwrite_warning");

        public void set_disable_overwrite_warning(bool disable)
        {
            NativeCalls.godot_icall_1_13(method_bind_17, Object.GetPtr(this), disable);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_overwrite_warning_disabled");

        public bool is_overwrite_warning_disabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_18, Object.GetPtr(this));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "invalidate");

        public void invalidate()
        {
            NativeCalls.godot_icall_0_7(method_bind_19, Object.GetPtr(this));
        }
    }
}
