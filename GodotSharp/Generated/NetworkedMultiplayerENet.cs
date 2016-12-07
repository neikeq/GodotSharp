using System;

namespace GodotEngine
{
    /// <summary>
    /// A connection (or a listening server) that should be passed to [method SceneTree.set_network_peer]. Socket events can be handled by connecting to [SceneTree] signals.
    /// </summary>
    public class NetworkedMultiplayerENet : NetworkedMultiplayerPeer
    {
        public const int COMPRESS_NONE = 0;
        public const int COMPRESS_RANGE_CODER = 1;
        public const int COMPRESS_FASTLZ = 2;
        public const int COMPRESS_ZLIB = 3;

        private const string nativeName = "NetworkedMultiplayerENet";

        public NetworkedMultiplayerENet() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_NetworkedMultiplayerENet_Ctor(this);
        }

        internal NetworkedMultiplayerENet(bool memoryOwn) : base(memoryOwn) {}

        ~NetworkedMultiplayerENet()
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
                    NativeCalls.godot_icall_NetworkedMultiplayerENet_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "create_server");

        public int create_server(int port, int max_clients = 32, int in_bandwidth = 0, int out_bandwidth = 0)
        {
            return NativeCalls.godot_icall_4_303(method_bind_0, Object.GetPtr(this), port, max_clients, in_bandwidth, out_bandwidth);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "create_client");

        public int create_client(string ip, int port, int in_bandwidth = 0, int out_bandwidth = 0)
        {
            return NativeCalls.godot_icall_4_304(method_bind_1, Object.GetPtr(this), ip, port, in_bandwidth, out_bandwidth);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "close_connection");

        public void close_connection()
        {
            NativeCalls.godot_icall_0_7(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_compression_mode");

        public void set_compression_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_3, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_compression_mode");

        public int get_compression_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bind_ip");

        public void set_bind_ip(string ip)
        {
            NativeCalls.godot_icall_1_18(method_bind_5, Object.GetPtr(this), ip);
        }
    }
}
