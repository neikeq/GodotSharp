using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// StreamPeer is an abstraction and base class for stream-based protocols (such as TCP or Unix Sockets). It provides an API for sending and receiving data through streams as raw data or strings.
    /// </summary>
    public class StreamPeer : Reference
    {
        private const string nativeName = "StreamPeer";

        internal StreamPeer() {}

        internal StreamPeer(bool memoryOwn) : base(memoryOwn) {}

        ~StreamPeer()
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
                    NativeCalls.godot_icall_StreamPeer_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "put_data");

        /// <summary>
        /// Send a chunk of data through the connection, blocking if necessary until the data is done sending. This function returns an Error code.
        /// </summary>
        public int put_data(List<byte> data)
        {
            return NativeCalls.godot_icall_1_248(method_bind_0, Object.GetPtr(this), data.ToArray());
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "put_partial_data");

        /// <summary>
        /// Send a chunk of data through the connection, if all the data could not be sent at once, only part of it will. This function returns two values, an Error code and an integer, describing how much data was actually sent.
        /// </summary>
        public List<object> put_partial_data(List<byte> data)
        {
            object[] ret = NativeCalls.godot_icall_1_468(method_bind_1, Object.GetPtr(this), data.ToArray());
            return new List<object>(ret);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_data");

        /// <summary>
        /// Return a chunk data with the received bytes. The amount of bytes to be received can be requested in the "bytes" argument. If not enough bytes are available, the function will block until the desired amount is received. This function returns two values, an Error code and a data array.
        /// </summary>
        public List<object> get_data(int bytes)
        {
            object[] ret = NativeCalls.godot_icall_1_421(method_bind_2, Object.GetPtr(this), bytes);
            return new List<object>(ret);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_partial_data");

        /// <summary>
        /// Return a chunk data with the received bytes. The amount of bytes to be received can be requested in the "bytes" argument. If not enough bytes are available, the function will return how many were actually received. This function returns two values, an Error code, and a data array.
        /// </summary>
        public List<object> get_partial_data(int bytes)
        {
            object[] ret = NativeCalls.godot_icall_1_421(method_bind_3, Object.GetPtr(this), bytes);
            return new List<object>(ret);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_available_bytes");

        /// <summary>
        /// Return the amount of bytes this [StreamPeer] has available.
        /// </summary>
        public int get_available_bytes()
        {
            return NativeCalls.godot_icall_0_0(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_big_endian");

        /// <summary>
        /// Set this [StreamPeer] to use big-endian format. Default is false.
        /// </summary>
        public void set_big_endian(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_5, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_big_endian_enabled");

        /// <summary>
        /// Return whether this [StreamPeer] is using big-endian format.
        /// </summary>
        public bool is_big_endian_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "put_8");

        /// <summary>
        /// Put a signed byte into the stream.
        /// </summary>
        public void put_8(int val)
        {
            NativeCalls.godot_icall_1_4(method_bind_7, Object.GetPtr(this), val);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "put_u8");

        /// <summary>
        /// Put an unsigned byte into the stream.
        /// </summary>
        public void put_u8(int val)
        {
            NativeCalls.godot_icall_1_4(method_bind_8, Object.GetPtr(this), val);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "put_16");

        /// <summary>
        /// Put a signed 16 bit value into the stream.
        /// </summary>
        public void put_16(int val)
        {
            NativeCalls.godot_icall_1_4(method_bind_9, Object.GetPtr(this), val);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "put_u16");

        /// <summary>
        /// Put an unsigned 16 bit value into the stream.
        /// </summary>
        public void put_u16(int val)
        {
            NativeCalls.godot_icall_1_4(method_bind_10, Object.GetPtr(this), val);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "put_32");

        /// <summary>
        /// Put a signed 32 bit value into the stream.
        /// </summary>
        public void put_32(int val)
        {
            NativeCalls.godot_icall_1_4(method_bind_11, Object.GetPtr(this), val);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "put_u32");

        /// <summary>
        /// Put an unsigned 32 bit value into the stream.
        /// </summary>
        public void put_u32(int val)
        {
            NativeCalls.godot_icall_1_4(method_bind_12, Object.GetPtr(this), val);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "put_64");

        /// <summary>
        /// Put a signed 64 bit value into the stream.
        /// </summary>
        public void put_64(int val)
        {
            NativeCalls.godot_icall_1_4(method_bind_13, Object.GetPtr(this), val);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "put_u64");

        /// <summary>
        /// Put an unsigned 64 bit value into the stream.
        /// </summary>
        public void put_u64(int val)
        {
            NativeCalls.godot_icall_1_4(method_bind_14, Object.GetPtr(this), val);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "put_float");

        /// <summary>
        /// Put a single-precision float into the stream.
        /// </summary>
        public void put_float(float val)
        {
            NativeCalls.godot_icall_1_45(method_bind_15, Object.GetPtr(this), val);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "put_double");

        /// <summary>
        /// Put a double-precision float into the stream.
        /// </summary>
        public void put_double(float val)
        {
            NativeCalls.godot_icall_1_45(method_bind_16, Object.GetPtr(this), val);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "put_utf8_string");

        /// <summary>
        /// Put a zero-terminated utf8 string into the stream.
        /// </summary>
        public void put_utf8_string(string val)
        {
            NativeCalls.godot_icall_1_18(method_bind_17, Object.GetPtr(this), val);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "put_var");

        /// <summary>
        /// Put a Variant into the stream.
        /// </summary>
        public void put_var(object val)
        {
            NativeCalls.godot_icall_1_125(method_bind_18, Object.GetPtr(this), val);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_8");

        /// <summary>
        /// Get a signed byte from the stream.
        /// </summary>
        public int get_8()
        {
            return NativeCalls.godot_icall_0_0(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_u8");

        /// <summary>
        /// Get an unsigned byte from the stream.
        /// </summary>
        public int get_u8()
        {
            return NativeCalls.godot_icall_0_0(method_bind_20, Object.GetPtr(this));
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_16");

        /// <summary>
        /// Get a signed 16 bit value from the stream.
        /// </summary>
        public int get_16()
        {
            return NativeCalls.godot_icall_0_0(method_bind_21, Object.GetPtr(this));
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_u16");

        /// <summary>
        /// Get an unsigned 16 bit value from the stream.
        /// </summary>
        public int get_u16()
        {
            return NativeCalls.godot_icall_0_0(method_bind_22, Object.GetPtr(this));
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_32");

        /// <summary>
        /// Get a signed 32 bit value from the stream.
        /// </summary>
        public int get_32()
        {
            return NativeCalls.godot_icall_0_0(method_bind_23, Object.GetPtr(this));
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_u32");

        /// <summary>
        /// Get an unsigned 32 bit value from the stream.
        /// </summary>
        public int get_u32()
        {
            return NativeCalls.godot_icall_0_0(method_bind_24, Object.GetPtr(this));
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_64");

        /// <summary>
        /// Get a signed 64 bit value from the stream.
        /// </summary>
        public int get_64()
        {
            return NativeCalls.godot_icall_0_0(method_bind_25, Object.GetPtr(this));
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_u64");

        /// <summary>
        /// Get an unsigned 16 bit value from the stream.
        /// </summary>
        public int get_u64()
        {
            return NativeCalls.godot_icall_0_0(method_bind_26, Object.GetPtr(this));
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_float");

        /// <summary>
        /// Get a single-precision float from the stream.
        /// </summary>
        public float get_float()
        {
            return NativeCalls.godot_icall_0_46(method_bind_27, Object.GetPtr(this));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_double");

        /// <summary>
        /// Get a double-precision float from the stream.
        /// </summary>
        public float get_double()
        {
            return NativeCalls.godot_icall_0_46(method_bind_28, Object.GetPtr(this));
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_string");

        /// <summary>
        /// Get a string with byte-length "bytes" from the stream.
        /// </summary>
        public string get_string(int bytes)
        {
            return NativeCalls.godot_icall_1_116(method_bind_29, Object.GetPtr(this), bytes);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_utf8_string");

        /// <summary>
        /// Get an utf8 string with byte-length "bytes" from the stream (this decodes the string sent as utf8).
        /// </summary>
        public string get_utf8_string(int bytes)
        {
            return NativeCalls.godot_icall_1_116(method_bind_30, Object.GetPtr(this), bytes);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_var");

        /// <summary>
        /// Get a Variant from the stream.
        /// </summary>
        public object get_var()
        {
            return NativeCalls.godot_icall_0_126(method_bind_31, Object.GetPtr(this));
        }
    }
}
