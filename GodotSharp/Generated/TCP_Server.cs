using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// TCP Server class. Listens to connections on a port and returns a [StreamPeerTCP] when got a connection.
    /// </summary>
    public class TCP_Server : Reference
    {
        private const string nativeName = "TCP_Server";

        public TCP_Server() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_TCP_Server_Ctor(this);
        }

        internal TCP_Server(bool memoryOwn) : base(memoryOwn) {}

        ~TCP_Server()
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
                    NativeCalls.godot_icall_TCP_Server_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "listen");

        /// <summary>
        /// Listen on a port using protocol "ip_type", alternatively give a white-list of accepted hosts.
        /// IP_TYPE_IPV4 = IPv4 only
        /// IP_TYPE_IPV6 = IPv6 only
        /// IP_TYPE_ANY  = Dual stack (supports both IPv6 and IPv4 connections).
        /// <param name="accepted_hosts">If the param is null, then the default value is new List<string>()</param>
        /// </summary>
        public int listen(int port, int ip_type = 3, List<string> accepted_hosts = null)
        {
            List<string> accepted_hosts_in = accepted_hosts != null ? accepted_hosts : new List<string>();
            return NativeCalls.godot_icall_3_476(method_bind_0, Object.GetPtr(this), port, ip_type, accepted_hosts_in.ToArray());
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_connection_available");

        /// <summary>
        /// Return true if a connection is available for taking.
        /// </summary>
        public bool is_connection_available()
        {
            return NativeCalls.godot_icall_0_14(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "take_connection");

        /// <summary>
        /// If a connection is available, return a StreamPeerTCP with the connection/
        /// </summary>
        public Object take_connection()
        {
            return NativeCalls.godot_icall_0_12(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "stop");

        /// <summary>
        /// Stop listening.
        /// </summary>
        public void stop()
        {
            NativeCalls.godot_icall_0_7(method_bind_3, Object.GetPtr(this));
        }
    }
}
