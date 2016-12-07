using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// File type. This is used to permanently store data into the user device's file system and to read from it. This can be used to store game save data or player configuration files, for example.
    /// Here's a sample on how to write and read from a file:
    /// [codeblock]
    /// func save(content):
    /// var file = File.new()
    /// file.open("user://save_game.dat", file.WRITE)
    /// file.store_string(content)
    /// file.close()
    /// func load():
    /// var file = File.new()
    /// file.open("user://save_game.dat", file.READ)
    /// var content = file.get_as_text()
    /// file.close()
    /// return content
    /// [/codeblock]
    /// </summary>
    public class File : Reference
    {
        /// <summary>
        /// Open the file for reading.
        /// </summary>
        public const int READ = 1;
        /// <summary>
        /// Open the file for writing. Create it if the file not exists and truncate if it exists.
        /// </summary>
        public const int WRITE = 2;
        /// <summary>
        /// Open the file for reading and writing, without truncating the file.
        /// </summary>
        public const int READ_WRITE = 3;
        /// <summary>
        /// Open the file for reading and writing. Create it if the file not exists and truncate if it exists.
        /// </summary>
        public const int WRITE_READ = 7;

        private const string nativeName = "_File";

        public File() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_File_Ctor(this);
        }

        internal File(bool memoryOwn) : base(memoryOwn) {}

        ~File()
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
                    NativeCalls.godot_icall_File_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "open_encrypted");

        /// <summary>
        /// Open an encrypted file in write or read mode. You need to pass a binary key to encrypt/decrypt it.
        /// </summary>
        public int open_encrypted(string path, int mode_flags, List<byte> key)
        {
            return NativeCalls.godot_icall_3_568(method_bind_0, Object.GetPtr(this), path, mode_flags, key.ToArray());
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "open_encrypted_with_pass");

        /// <summary>
        /// Open an encrypted file in write or read mode. You need to pass a password to encrypt/decrypt it.
        /// </summary>
        public int open_encrypted_with_pass(string path, int mode_flags, string pass)
        {
            return NativeCalls.godot_icall_3_569(method_bind_1, Object.GetPtr(this), path, mode_flags, pass);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "open");

        /// <summary>
        /// Open the file for writing or reading, depending on the flags.
        /// </summary>
        public int open(string path, int flags)
        {
            return NativeCalls.godot_icall_2_253(method_bind_2, Object.GetPtr(this), path, flags);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "close");

        /// <summary>
        /// Close the currently opened file.
        /// </summary>
        public void close()
        {
            NativeCalls.godot_icall_0_7(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_open");

        /// <summary>
        /// Return whether the file is currently opened.
        /// </summary>
        public bool is_open()
        {
            return NativeCalls.godot_icall_0_14(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "seek");

        /// <summary>
        /// Change the file reading/writing cursor to the specified position (in bytes from the beginning of the file).
        /// </summary>
        public void seek(int pos)
        {
            NativeCalls.godot_icall_1_4(method_bind_5, Object.GetPtr(this), pos);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "seek_end");

        /// <summary>
        /// Change the file reading/writing cursor to the specified position (in bytes from the end of the file). Note that this is an offset, so you should use negative numbers or the cursor will be at the end of the file.
        /// </summary>
        public void seek_end(int pos = 0)
        {
            NativeCalls.godot_icall_1_4(method_bind_6, Object.GetPtr(this), pos);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pos");

        /// <summary>
        /// Return the file cursor position.
        /// </summary>
        public int get_pos()
        {
            return NativeCalls.godot_icall_0_0(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_len");

        /// <summary>
        /// Return the size of the file in bytes.
        /// </summary>
        public int get_len()
        {
            return NativeCalls.godot_icall_0_0(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "eof_reached");

        /// <summary>
        /// Return whether the file cursor reached the end of the file.
        /// </summary>
        public bool eof_reached()
        {
            return NativeCalls.godot_icall_0_14(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_8");

        /// <summary>
        /// Get the next 8 bits from the file as an integer.
        /// </summary>
        public int get_8()
        {
            return NativeCalls.godot_icall_0_0(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_16");

        /// <summary>
        /// Get the next 16 bits from the file as an integer.
        /// </summary>
        public int get_16()
        {
            return NativeCalls.godot_icall_0_0(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_32");

        /// <summary>
        /// Get the next 32 bits from the file as an integer.
        /// </summary>
        public int get_32()
        {
            return NativeCalls.godot_icall_0_0(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_64");

        /// <summary>
        /// Get the next 64 bits from the file as an integer.
        /// </summary>
        public int get_64()
        {
            return NativeCalls.godot_icall_0_0(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_float");

        /// <summary>
        /// Get the next 32 bits from the file as a floating point number.
        /// </summary>
        public float get_float()
        {
            return NativeCalls.godot_icall_0_46(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_double");

        /// <summary>
        /// Get the next 64 bits from the file as a floating point number.
        /// </summary>
        public float get_double()
        {
            return NativeCalls.godot_icall_0_46(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_real");

        /// <summary>
        /// Get the next bits from the file as a floating point number.
        /// </summary>
        public float get_real()
        {
            return NativeCalls.godot_icall_0_46(method_bind_16, Object.GetPtr(this));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_buffer");

        /// <summary>
        /// Get next len bytes of the file as a [RawArray].
        /// </summary>
        public List<byte> get_buffer(int len)
        {
            byte[] ret = NativeCalls.godot_icall_1_570(method_bind_17, Object.GetPtr(this), len);
            return new List<byte>(ret);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_line");

        /// <summary>
        /// Get the next line of the file as a [String].
        /// </summary>
        public string get_line()
        {
            return NativeCalls.godot_icall_0_19(method_bind_18, Object.GetPtr(this));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_as_text");

        /// <summary>
        /// Get the whole file as a [String].
        /// </summary>
        public string get_as_text()
        {
            return NativeCalls.godot_icall_0_19(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_md5");

        /// <summary>
        /// Return a md5 String representing the file at the given path or an empty [String] on failure.
        /// </summary>
        public string get_md5(string path)
        {
            return NativeCalls.godot_icall_1_52(method_bind_20, Object.GetPtr(this), path);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_sha256");

        /// <summary>
        /// Return a sha256 String representing the file at the given path or an empty [String] on failure.
        /// </summary>
        public string get_sha256(string path)
        {
            return NativeCalls.godot_icall_1_52(method_bind_21, Object.GetPtr(this), path);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_endian_swap");

        /// <summary>
        /// Get whether endian swap is enabled for this file.
        /// </summary>
        public bool get_endian_swap()
        {
            return NativeCalls.godot_icall_0_14(method_bind_22, Object.GetPtr(this));
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_endian_swap");

        /// <summary>
        /// Set whether to swap the endianess of the file. Enable this if you're dealing with files written in big endian machines.
        /// Note that this is about the file format, not CPU type. This is always reseted to [code]false[/code] whenever you open the file.
        /// </summary>
        public void set_endian_swap(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_23, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_error");

        /// <summary>
        /// Get the last error that happened when trying to perform operations. Compare with the [code]ERR_FILE_*[/code] constants from [@Global Scope].
        /// </summary>
        public Error get_error()
        {
            int ret = NativeCalls.godot_icall_0_250(method_bind_24, Object.GetPtr(this));
            return (Error)ret;
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_var");

        /// <summary>
        /// Get the next Variant value from the file.
        /// </summary>
        public void get_var()
        {
            NativeCalls.godot_icall_0_7(method_bind_25, Object.GetPtr(this));
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_csv_line");

        /// <summary>
        /// Get the next value of the file in CSV (Comma Separated Values) format. You can pass a different delimiter to use other than the default "," (comma).
        /// </summary>
        public List<string> get_csv_line(string delim = ",")
        {
            string[] ret = NativeCalls.godot_icall_1_172(method_bind_26, Object.GetPtr(this), delim);
            return new List<string>(ret);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "store_8");

        /// <summary>
        /// Store an integer as 8 bits in the file.
        /// </summary>
        public void store_8(int @value)
        {
            NativeCalls.godot_icall_1_4(method_bind_27, Object.GetPtr(this), @value);
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "store_16");

        /// <summary>
        /// Store an integer as 16 bits in the file.
        /// </summary>
        public void store_16(int @value)
        {
            NativeCalls.godot_icall_1_4(method_bind_28, Object.GetPtr(this), @value);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "store_32");

        /// <summary>
        /// Store an integer as 32 bits in the file.
        /// </summary>
        public void store_32(int @value)
        {
            NativeCalls.godot_icall_1_4(method_bind_29, Object.GetPtr(this), @value);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "store_64");

        /// <summary>
        /// Store an integer as 64 bits in the file.
        /// </summary>
        public void store_64(int @value)
        {
            NativeCalls.godot_icall_1_4(method_bind_30, Object.GetPtr(this), @value);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "store_float");

        /// <summary>
        /// Store a floating point number as 32 bits in the file.
        /// </summary>
        public void store_float(float @value)
        {
            NativeCalls.godot_icall_1_45(method_bind_31, Object.GetPtr(this), @value);
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "store_double");

        /// <summary>
        /// Store a floating point number as 64 bits in the file.
        /// </summary>
        public void store_double(float @value)
        {
            NativeCalls.godot_icall_1_45(method_bind_32, Object.GetPtr(this), @value);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "store_real");

        /// <summary>
        /// Store a floating point number in the file.
        /// </summary>
        public void store_real(float @value)
        {
            NativeCalls.godot_icall_1_45(method_bind_33, Object.GetPtr(this), @value);
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "store_buffer");

        /// <summary>
        /// Store the given array of bytes in the file.
        /// </summary>
        public void store_buffer(List<byte> buffer)
        {
            NativeCalls.godot_icall_1_101(method_bind_34, Object.GetPtr(this), buffer.ToArray());
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "store_line");

        /// <summary>
        /// Store the given [String] as a line in the file.
        /// </summary>
        public void store_line(string line)
        {
            NativeCalls.godot_icall_1_18(method_bind_35, Object.GetPtr(this), line);
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "store_string");

        /// <summary>
        /// Store the given [String] in the file.
        /// </summary>
        public void store_string(string @string)
        {
            NativeCalls.godot_icall_1_18(method_bind_36, Object.GetPtr(this), @string);
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "store_var");

        /// <summary>
        /// Store any Variant value in the file.
        /// </summary>
        public void store_var(object @value)
        {
            NativeCalls.godot_icall_1_125(method_bind_37, Object.GetPtr(this), @value);
        }

        private IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "store_pascal_string");

        /// <summary>
        /// Store the given [String] as a line in the file in Pascal format (i.e. also store the length of the string).
        /// </summary>
        public void store_pascal_string(string @string)
        {
            NativeCalls.godot_icall_1_18(method_bind_38, Object.GetPtr(this), @string);
        }

        private IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pascal_string");

        /// <summary>
        /// Get a [String] saved in Pascal format from the file.
        /// </summary>
        public string get_pascal_string()
        {
            return NativeCalls.godot_icall_0_19(method_bind_39, Object.GetPtr(this));
        }

        private IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "file_exists");

        /// <summary>
        /// Get whether or not the file in the specified path exists.
        /// </summary>
        public bool file_exists(string path)
        {
            return NativeCalls.godot_icall_1_49(method_bind_40, Object.GetPtr(this), path);
        }
    }
}
