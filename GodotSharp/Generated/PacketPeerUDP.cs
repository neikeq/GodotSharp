using System;

namespace GodotEngine
{
    /// <summary>
    /// UDP packet peer. Can be used to send raw UDP packets as well as [Variant]s.
    /// </summary>
    public class PacketPeerUDP : PacketPeer
    {
        private const string nativeName = "PacketPeerUDP";

        public PacketPeerUDP() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_PacketPeerUDP_Ctor(this);
        }

        internal PacketPeerUDP(bool memoryOwn) : base(memoryOwn) {}

        ~PacketPeerUDP()
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
                    NativeCalls.godot_icall_PacketPeerUDP_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "listen");

        /// <summary>
        /// Make this [PacketPeerUDP] listen on the "port" using protocol "ip_type" and a buffer size "recv_buf_size". Listens on all available adresses.
        /// IP_TYPE_IPV4 = IPv4 only
        /// IP_TYPE_IPV6 = IPv6 only
        /// IP_TYPE_ANY  = Dual stack (supports both IPv6 and IPv4 connections).
        /// </summary>
        public Error listen(int port, int ip_type = 3, int recv_buf_size = 65536)
        {
            int ret = NativeCalls.godot_icall_3_334(method_bind_0, Object.GetPtr(this), port, ip_type, recv_buf_size);
            return (Error)ret;
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "close");

        /// <summary>
        /// Close the UDP socket the [PacketPeerUDP] is currently listening on.
        /// </summary>
        public void close()
        {
            NativeCalls.godot_icall_0_7(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "wait");

        /// <summary>
        /// Wait for a packet to arrive on the listening port, see [method listen].
        /// </summary>
        public Error wait()
        {
            int ret = NativeCalls.godot_icall_0_250(method_bind_2, Object.GetPtr(this));
            return (Error)ret;
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_listening");

        /// <summary>
        /// Return whether this [PacketPeerUDP] is listening.
        /// </summary>
        public bool is_listening()
        {
            return NativeCalls.godot_icall_0_14(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_packet_ip");

        /// <summary>
        /// Return the IP of the remote peer that sent the last packet(that was received with [method get_packet] or [method get_var]).
        /// </summary>
        public string get_packet_ip()
        {
            return NativeCalls.godot_icall_0_19(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_packet_port");

        /// <summary>
        /// Return the port of the remote peer that sent the last packet(that was received with [method get_packet] or [method get_var]).
        /// </summary>
        public int get_packet_port()
        {
            return NativeCalls.godot_icall_0_0(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_send_address");

        /// <summary>
        /// Set the destination address and port for sending packets and variables, a hostname will be resolved using "ip_type" (v4/v6/any) if valid.
        /// </summary>
        public int set_send_address(string host, int port, int ip_type = 3)
        {
            return NativeCalls.godot_icall_3_335(method_bind_6, Object.GetPtr(this), host, port, ip_type);
        }
    }
}
