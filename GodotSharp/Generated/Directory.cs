using System;

namespace GodotEngine
{
    /// <summary>
    /// Directory type. It is used to manage directories and their content (not restricted to the project folder).
    /// Here is an example on how to iterate through the files of a directory:
    /// [codeblock]
    /// func dir_contents(path):
    /// var dir = Directory.new()
    /// if dir.open(path) == OK:
    /// dir.list_dir_begin()
    /// var file_name = dir.get_next()
    /// while (file_name != ""):
    /// if dir.current_is_dir():
    /// print("Found directory: " + file_name)
    /// else:
    /// print("Found file: " + file_name)
    /// file_name = dir.get_next()
    /// else:
    /// print("An error occurred when trying to access the path.")
    /// [/codeblock]
    /// </summary>
    public class Directory : Reference
    {
        private const string nativeName = "_Directory";

        public Directory() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Directory_Ctor(this);
        }

        internal Directory(bool memoryOwn) : base(memoryOwn) {}

        ~Directory()
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
                    NativeCalls.godot_icall_Directory_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "open");

        /// <summary>
        /// Open an existing directory of the filesystem. The [i]path[/i] argument can be within the project tree ([code]res://folder[/code]), the user directory ([code]user://folder[/code]) or an absolute path of the user filesystem (e.g. [code]/tmp/folder[/code] or [code]C:\tmp\folder[/code]).
        /// The method returns one of the error code constants defined in [@Global Scope] (OK or ERR_*).
        /// </summary>
        public Error open(string path)
        {
            int ret = NativeCalls.godot_icall_1_173(method_bind_0, Object.GetPtr(this), path);
            return (Error)ret;
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "list_dir_begin");

        /// <summary>
        /// Initialise the stream used to list all files and directories using the [method get_next] function, closing the current opened stream if needed. Once the stream has been processed, it should typically be closed with [method list_dir_end].
        /// Return true if the stream could not be initialised.
        /// </summary>
        public bool list_dir_begin()
        {
            return NativeCalls.godot_icall_0_14(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_next");

        /// <summary>
        /// Return the next element (file or directory) in the current directory (including [code].[/code] and [code]..[/code]). The name of the file or directory is returned (and not its full path). Once the stream has been fully processed, the method returns an empty String and closes the stream automatically (i.e. [method list_dir_end] would not be mandatory in such a case).
        /// </summary>
        public string get_next()
        {
            return NativeCalls.godot_icall_0_19(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "current_is_dir");

        /// <summary>
        /// Return whether the current item processed with the last [method get_next] call is a directory ([code].[/code] and [code]..[/code] are considered directories).
        /// </summary>
        public bool current_is_dir()
        {
            return NativeCalls.godot_icall_0_14(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "list_dir_end");

        /// <summary>
        /// Close the current stream opened with [method list_dir_begin] (whether it has been fully processed with [method get_next] or not does not matter).
        /// </summary>
        public void list_dir_end()
        {
            NativeCalls.godot_icall_0_7(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_drive_count");

        /// <summary>
        /// On Windows, return the number of drives (partitions) mounted on the current filesystem. On other platforms, the method returns 0.
        /// </summary>
        public int get_drive_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_drive");

        /// <summary>
        /// On Windows, return the name of the drive (partition) passed as an argument (e.g. [code]C:[/code]). On other platforms, or if the requested drive does not existed, the method returns an empty String.
        /// </summary>
        public string get_drive(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_6, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "change_dir");

        /// <summary>
        /// Change the currently opened directory to the one passed as an argument. The argument can be relative to the current directory (e.g. [code]newdir[/code] or [code]../newdir[/code]), or an absolute path (e.g. [code]/tmp/newdir[/code] or [code]res://somedir/newdir[/code]).
        /// The method returns one of the error code constants defined in [@Global Scope] (OK or ERR_*).
        /// </summary>
        public Error change_dir(string todir)
        {
            int ret = NativeCalls.godot_icall_1_173(method_bind_7, Object.GetPtr(this), todir);
            return (Error)ret;
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_current_dir");

        /// <summary>
        /// Return the absolute path to the currently opened directory (e.g. [code]res://folder[/code] or [code]C:\tmp\folder[/code]).
        /// </summary>
        public string get_current_dir()
        {
            return NativeCalls.godot_icall_0_19(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "make_dir");

        /// <summary>
        /// Create a directory. The argument can be relative to the current directory, or an absolute path. The target directory should be placed in an already existing directory (to create the full path recursively, see [method make_dir_recursive]).
        /// The method returns one of the error code constants defined in [@Global Scope] (OK, FAILED or ERR_*).
        /// </summary>
        public Error make_dir(string path)
        {
            int ret = NativeCalls.godot_icall_1_173(method_bind_9, Object.GetPtr(this), path);
            return (Error)ret;
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "make_dir_recursive");

        /// <summary>
        /// Create a target directory and all necessary intermediate directories in its path, by calling [method make_dir] recursively. The argument can be relative to the current directory, or an absolute path.
        /// Return one of the error code constants defined in [@Global Scope] (OK, FAILED or ERR_*).
        /// </summary>
        public Error make_dir_recursive(string path)
        {
            int ret = NativeCalls.godot_icall_1_173(method_bind_10, Object.GetPtr(this), path);
            return (Error)ret;
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "file_exists");

        /// <summary>
        /// Return whether the target file exists. The argument can be relative to the current directory, or an absolute path.
        /// </summary>
        public bool file_exists(string path)
        {
            return NativeCalls.godot_icall_1_49(method_bind_11, Object.GetPtr(this), path);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "dir_exists");

        /// <summary>
        /// Return whether the target directory exists. The argument can be relative to the current directory, or an absolute path.
        /// </summary>
        public bool dir_exists(string path)
        {
            return NativeCalls.godot_icall_1_49(method_bind_12, Object.GetPtr(this), path);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_space_left");

        /// <summary>
        /// On Unix desktop systems, return the available space on the current directory's disk. On other platforms, this information is not available and the method returns 0 or -1.
        /// </summary>
        public int get_space_left()
        {
            return NativeCalls.godot_icall_0_0(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "copy");

        /// <summary>
        /// Copy the [i]from[/i] file to the [i]to[/i] destination. Both arguments should be paths to files, either relative or absolute. If the destination file exists and is not access-protected, it will be overwritten.
        /// Returns one of the error code constants defined in [@Global Scope] (OK, FAILED or ERR_*).
        /// </summary>
        public Error copy(string @from, string to)
        {
            int ret = NativeCalls.godot_icall_2_567(method_bind_14, Object.GetPtr(this), @from, to);
            return (Error)ret;
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rename");

        /// <summary>
        /// Rename (move) the [i]from[/i] file to the [i]to[/i] destination. Both arguments should be paths to files, either relative or absolute. If the destination file exists and is not access-protected, it will be overwritten.
        /// Return one of the error code constants defined in [@Global Scope] (OK or FAILED).
        /// </summary>
        public Error rename(string @from, string to)
        {
            int ret = NativeCalls.godot_icall_2_567(method_bind_15, Object.GetPtr(this), @from, to);
            return (Error)ret;
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove");

        /// <summary>
        /// Delete the target file or an empty directory. The argument can be relative to the current directory, or an absolute path. If the target directory is not empty, the operation will fail.
        /// Return one of the error code constants defined in [@Global Scope] (OK or FAILED).
        /// </summary>
        public Error @remove(string path)
        {
            int ret = NativeCalls.godot_icall_1_173(method_bind_16, Object.GetPtr(this), path);
            return (Error)ret;
        }
    }
}
