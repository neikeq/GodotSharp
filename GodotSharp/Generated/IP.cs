using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// IP contains some support functions for the IPv4 protocol. TCP/IP support is in different classes (see [StreamPeerTCP] and [TCP_Server]). IP provides hostname resolution support, both blocking and threaded.
    /// </summary>
    public static class IP
    {
        public const int RESOLVER_STATUS_NONE = 0;
        public const int RESOLVER_STATUS_WAITING = 1;
        public const int RESOLVER_STATUS_DONE = 2;
        public const int RESOLVER_STATUS_ERROR = 3;
        public const int RESOLVER_MAX_QUERIES = 32;
        public const int RESOLVER_INVALID_ID = -1;

        private const string nativeName = "IP";
        internal static IntPtr ptr = NativeCalls.godot_icall_IP_get_singleton();

        private static IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "resolve_hostname");

        /// <summary>
        /// Resolve a given hostname, blocking. Resolved hostname is returned as an IPv4 or IPv6 depending on "ip_type".
        /// </summary>
        public static string resolve_hostname(string host, int ip_type = 3)
        {
            return NativeCalls.godot_icall_2_64(method_bind_0, ptr, host, ip_type);
        }

        private static IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "resolve_hostname_queue_item");

        /// <summary>
        /// Create a queue item for resolving a given hostname to an IPv4 or IPv6 depending on "ip_type". The queue ID is returned, or RESOLVER_INVALID_ID on error.
        /// </summary>
        public static int resolve_hostname_queue_item(string host, int ip_type = 3)
        {
            return NativeCalls.godot_icall_2_253(method_bind_1, ptr, host, ip_type);
        }

        private static IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_resolve_item_status");

        /// <summary>
        /// Return the status of hostname queued for resolving, given it's queue ID. Returned status can be any of the RESOLVER_STATUS_* enumeration.
        /// </summary>
        public static int get_resolve_item_status(int id)
        {
            return NativeCalls.godot_icall_1_28(method_bind_2, ptr, id);
        }

        private static IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_resolve_item_address");

        /// <summary>
        /// Return a resolved item address, or an empty string if an error happened or resolution didn't happen yet (see [method get_resolve_item_status]).
        /// </summary>
        public static string get_resolve_item_address(int id)
        {
            return NativeCalls.godot_icall_1_116(method_bind_3, ptr, id);
        }

        private static IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "erase_resolve_item");

        /// <summary>
        /// Erase a queue ID, removing it from the queue if needed. This should be used after a queue is completed to free it and enable more queries to happen.
        /// </summary>
        public static void erase_resolve_item(int id)
        {
            NativeCalls.godot_icall_1_4(method_bind_4, ptr, id);
        }

        private static IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_local_addresses");

        public static List<object> get_local_addresses()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_5, ptr);
            return new List<object>(ret);
        }

        private static IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_cache");

        public static void clear_cache(string arg0 = "")
        {
            NativeCalls.godot_icall_1_18(method_bind_6, ptr, arg0);
        }
    }
}
