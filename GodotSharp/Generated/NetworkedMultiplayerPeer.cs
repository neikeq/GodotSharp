using System;

namespace GodotEngine
{
    public class NetworkedMultiplayerPeer : PacketPeer
    {
        public const int TRANSFER_MODE_UNRELIABLE = 0;
        public const int TRANSFER_MODE_UNRELIABLE_ORDERED = 1;
        public const int TRANSFER_MODE_RELIABLE = 2;
        public const int CONNECTION_DISCONNECTED = 0;
        public const int CONNECTION_CONNECTING = 1;
        public const int CONNECTION_CONNECTED = 2;
        public const int TARGET_PEER_BROADCAST = 0;
        public const int TARGET_PEER_SERVER = 1;

        private const string nativeName = "NetworkedMultiplayerPeer";

        internal NetworkedMultiplayerPeer() {}

        internal NetworkedMultiplayerPeer(bool memoryOwn) : base(memoryOwn) {}

        ~NetworkedMultiplayerPeer()
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
                    NativeCalls.godot_icall_NetworkedMultiplayerPeer_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_transfer_mode");

        public void set_transfer_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_target_peer");

        public void set_target_peer(int id)
        {
            NativeCalls.godot_icall_1_4(method_bind_1, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_packet_peer");

        public int get_packet_peer()
        {
            return NativeCalls.godot_icall_0_0(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "poll");

        public void poll()
        {
            NativeCalls.godot_icall_0_7(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connection_status");

        public int get_connection_status()
        {
            return NativeCalls.godot_icall_0_0(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_unique_id");

        public int get_unique_id()
        {
            return NativeCalls.godot_icall_0_0(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_refuse_new_connections");

        public void set_refuse_new_connections(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_6, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_refusing_new_connections");

        public bool is_refusing_new_connections()
        {
            return NativeCalls.godot_icall_0_14(method_bind_7, Object.GetPtr(this));
        }
    }
}
