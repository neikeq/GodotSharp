using System;

namespace GodotEngine
{
    /// <summary>
    /// SSL Stream peer. This object can be used to connect to SSL servers.
    /// </summary>
    public class StreamPeerSSL : StreamPeer
    {
        /// <summary>
        /// A status representing a [StreamPeerSSL] that is disconnected.
        /// </summary>
        public const int STATUS_DISCONNECTED = 0;
        /// <summary>
        /// A status representing a [StreamPeerSSL] that is connected to a host.
        /// </summary>
        public const int STATUS_CONNECTED = 1;
        /// <summary>
        /// An errot status that shows the peer did not present a SSL certificate and validation was requested.
        /// </summary>
        public const int STATUS_ERROR_NO_CERTIFICATE = 2;
        /// <summary>
        /// An error status that shows a mismatch in the SSL certificate domain presented by the host and the domain requested for validation.
        /// </summary>
        public const int STATUS_ERROR_HOSTNAME_MISMATCH = 3;

        private const string nativeName = "StreamPeerSSL";

        public StreamPeerSSL() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_StreamPeerSSL_Ctor(this);
        }

        internal StreamPeerSSL(bool memoryOwn) : base(memoryOwn) {}

        ~StreamPeerSSL()
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
                    NativeCalls.godot_icall_StreamPeerSSL_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "accept");

        public Error accept(StreamPeer stream)
        {
            int ret = NativeCalls.godot_icall_1_470(method_bind_0, Object.GetPtr(this), Object.GetPtr(stream));
            return (Error)ret;
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "connect");

        /// <summary>
        /// Connect to a peer using an underlying [StreamPeer] "stream", when "validate_certs" is true, [StreamPeerSSL] will validate that the certificate presented by the peer matches the "for_hostname".
        /// </summary>
        public Error connect(StreamPeer stream, bool validate_certs = false, string for_hostname = "")
        {
            int ret = NativeCalls.godot_icall_3_471(method_bind_1, Object.GetPtr(this), Object.GetPtr(stream), validate_certs, for_hostname);
            return (Error)ret;
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_status");

        /// <summary>
        /// Return the status of the connection, one of STATUS_* enum.
        /// </summary>
        public int get_status()
        {
            return NativeCalls.godot_icall_0_0(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "disconnect");

        /// <summary>
        /// Disconnect from host.
        /// </summary>
        public void disconnect()
        {
            NativeCalls.godot_icall_0_7(method_bind_3, Object.GetPtr(this));
        }
    }
}
