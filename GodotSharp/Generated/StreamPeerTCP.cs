using System;

namespace GodotEngine
{
    /// <summary>
    /// TCP Stream peer. This object can be used to connect to TCP servers, or also is returned by a tcp server.
    /// </summary>
    public class StreamPeerTCP : StreamPeer
    {
        /// <summary>
        /// The initial status of the [StreamPeerTCP], also the status after a disconnect.
        /// </summary>
        public const int STATUS_NONE = 0;
        /// <summary>
        /// A status representing a [StreamPeerTCP] that is connecting to a host.
        /// </summary>
        public const int STATUS_CONNECTING = 1;
        /// <summary>
        /// A status representing a [StreamPeerTCP] that is connected to a host.
        /// </summary>
        public const int STATUS_CONNECTED = 2;
        /// <summary>
        /// A staus representing a [StreamPeerTCP] in error state.
        /// </summary>
        public const int STATUS_ERROR = 3;

        private const string nativeName = "StreamPeerTCP";

        public StreamPeerTCP() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_StreamPeerTCP_Ctor(this);
        }

        internal StreamPeerTCP(bool memoryOwn) : base(memoryOwn) {}

        ~StreamPeerTCP()
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
                    NativeCalls.godot_icall_StreamPeerTCP_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "connect");

        /// <summary>
        /// Connect to the specified host:port pair. A hostname will be resolved using "ip_type" (v4/v6/any) if valid. Returns [OK] on success or [FAILED] on failure.
        /// </summary>
        public int connect(string host, int port, int ip_type = 3)
        {
            return NativeCalls.godot_icall_3_335(method_bind_0, Object.GetPtr(this), host, port, ip_type);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_connected");

        /// <summary>
        /// Return whether this peer is connected. Returns true while connecting and connected.
        /// </summary>
        public bool is_connected()
        {
            return NativeCalls.godot_icall_0_14(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_status");

        /// <summary>
        /// Return the status of the connection, one of STATUS_* enum.
        /// </summary>
        public int get_status()
        {
            return NativeCalls.godot_icall_0_0(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connected_host");

        /// <summary>
        /// Return the IP of this peer.
        /// </summary>
        public string get_connected_host()
        {
            return NativeCalls.godot_icall_0_19(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connected_port");

        /// <summary>
        /// Return the port of this peer.
        /// </summary>
        public int get_connected_port()
        {
            return NativeCalls.godot_icall_0_0(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "disconnect");

        /// <summary>
        /// Disconnect from host.
        /// </summary>
        public void disconnect()
        {
            NativeCalls.godot_icall_0_7(method_bind_5, Object.GetPtr(this));
        }
    }
}
