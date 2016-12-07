using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// FileDialog is a preset dialog used to choose files and directories in the filesystem. It supports filter masks.
    /// </summary>
    public class FileDialog : ConfirmationDialog
    {
        /// <summary>
        /// The dialog allows the selection of one, and only one file.
        /// </summary>
        public const int MODE_OPEN_FILE = 0;
        /// <summary>
        /// The dialog allows the selection of multiple files.
        /// </summary>
        public const int MODE_OPEN_FILES = 1;
        /// <summary>
        /// The dialog functions as a folder selector, disallowing the selection of any file.
        /// </summary>
        public const int MODE_OPEN_DIR = 2;
        /// <summary>
        /// The dialog allows the selection of a file or a directory.
        /// </summary>
        public const int MODE_OPEN_ANY = 3;
        /// <summary>
        /// The dialog will warn when a file exists.
        /// </summary>
        public const int MODE_SAVE_FILE = 4;
        /// <summary>
        /// The dialog allows the selection of file and directory.
        /// </summary>
        public const int ACCESS_RESOURCES = 0;
        /// <summary>
        /// The dialog allows ascess files under [Resource] path(res://) .
        /// </summary>
        public const int ACCESS_USERDATA = 1;
        /// <summary>
        /// The dialog allows ascess files in whole file system.
        /// </summary>
        public const int ACCESS_FILESYSTEM = 2;

        private const string nativeName = "FileDialog";

        public FileDialog() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_FileDialog_Ctor(this);
        }

        internal FileDialog(bool memoryOwn) : base(memoryOwn) {}

        ~FileDialog()
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

        /// <summary>
        /// Clear all the added filters in the dialog.
        /// </summary>
        public void clear_filters()
        {
            NativeCalls.godot_icall_0_7(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_filter");

        /// <summary>
        /// Add a custom filter. Filter format is: "mask ; description", example (C++): dialog->add_filter("*.png ; PNG Images");
        /// </summary>
        public void add_filter(string filter)
        {
            NativeCalls.godot_icall_1_18(method_bind_1, Object.GetPtr(this), filter);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_filters");

        public void set_filters(List<string> filters)
        {
            NativeCalls.godot_icall_1_220(method_bind_2, Object.GetPtr(this), filters.ToArray());
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_filters");

        public List<string> get_filters()
        {
            string[] ret = NativeCalls.godot_icall_0_51(method_bind_3, Object.GetPtr(this));
            return new List<string>(ret);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_current_dir");

        /// <summary>
        /// Get the current working directory of the file dialog.
        /// </summary>
        public string get_current_dir()
        {
            return NativeCalls.godot_icall_0_19(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_current_file");

        /// <summary>
        /// Get the current selected file of the file dialog (empty if none).
        /// </summary>
        public string get_current_file()
        {
            return NativeCalls.godot_icall_0_19(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_current_path");

        /// <summary>
        /// Get the current selected path (directory and file) of the file dialog (empty if none).
        /// </summary>
        public string get_current_path()
        {
            return NativeCalls.godot_icall_0_19(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_current_dir");

        /// <summary>
        /// Set the current working directory of the file dialog.
        /// </summary>
        public void set_current_dir(string dir)
        {
            NativeCalls.godot_icall_1_18(method_bind_7, Object.GetPtr(this), dir);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_current_file");

        /// <summary>
        /// Set the current selected file name of the file dialog.
        /// </summary>
        public void set_current_file(string file)
        {
            NativeCalls.godot_icall_1_18(method_bind_8, Object.GetPtr(this), file);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_current_path");

        /// <summary>
        /// Set the current selected file path of the file dialog.
        /// </summary>
        public void set_current_path(string path)
        {
            NativeCalls.godot_icall_1_18(method_bind_9, Object.GetPtr(this), path);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_mode");

        /// <summary>
        /// Set the file dialog mode from the MODE_* enum.
        /// </summary>
        public void set_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_10, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mode");

        /// <summary>
        /// Get the file dialog mode from the MODE_* enum.
        /// </summary>
        public int get_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_vbox");

        /// <summary>
        /// Return the vertical box container of the dialog, custom controls can be added to it.
        /// </summary>
        public VBoxContainer get_vbox()
        {
            return NativeCalls.godot_icall_0_204(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_access");

        /// <summary>
        /// Set the file access permission of the dialog(Must be one of [ACCESS_RESOURCES], [ACCESS_USERDATA] or [ACCESS_FILESYSTEM]).
        /// </summary>
        public void set_access(int access)
        {
            NativeCalls.godot_icall_1_4(method_bind_13, Object.GetPtr(this), access);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_access");

        /// <summary>
        /// Return the file access permission of the dialog.
        /// </summary>
        public int get_access()
        {
            return NativeCalls.godot_icall_0_0(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_show_hidden_files");

        /// <summary>
        /// Set the dialog should show hidden files.
        /// </summary>
        public void set_show_hidden_files(bool show)
        {
            NativeCalls.godot_icall_1_13(method_bind_15, Object.GetPtr(this), show);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_showing_hidden_files");

        /// <summary>
        /// Return true if the diaog allows show hidden files.
        /// </summary>
        public bool is_showing_hidden_files()
        {
            return NativeCalls.godot_icall_0_14(method_bind_16, Object.GetPtr(this));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "invalidate");

        /// <summary>
        /// Invalidate and update the current dialog content list.
        /// </summary>
        public void invalidate()
        {
            NativeCalls.godot_icall_0_7(method_bind_17, Object.GetPtr(this));
        }
    }
}
