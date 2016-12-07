using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class SceneTree : MainLoop
    {
        public const int GROUP_CALL_DEFAULT = 0;
        public const int GROUP_CALL_REVERSE = 1;
        public const int GROUP_CALL_REALTIME = 2;
        public const int GROUP_CALL_UNIQUE = 4;
        public const int STRETCH_MODE_DISABLED = 0;
        public const int STRETCH_MODE_2D = 1;
        public const int STRETCH_MODE_VIEWPORT = 2;
        public const int STRETCH_ASPECT_IGNORE = 0;
        public const int STRETCH_ASPECT_KEEP = 1;
        public const int STRETCH_ASPECT_KEEP_WIDTH = 2;
        public const int STRETCH_ASPECT_KEEP_HEIGHT = 3;

        private const string nativeName = "SceneTree";

        public SceneTree() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_SceneTree_Ctor(this);
        }

        internal SceneTree(bool memoryOwn) : base(memoryOwn) {}

        ~SceneTree()
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
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "notify_group");

        public void notify_group(int call_flags, string @group, int notification)
        {
            NativeCalls.godot_icall_3_422(method_bind_0, Object.GetPtr(this), call_flags, @group, notification);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_group");

        public void set_group(int call_flags, string @group, string property, object @value)
        {
            NativeCalls.godot_icall_4_423(method_bind_1, Object.GetPtr(this), call_flags, @group, property, @value);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_nodes_in_group");

        public List<object> get_nodes_in_group(string @group)
        {
            object[] ret = NativeCalls.godot_icall_1_262(method_bind_2, Object.GetPtr(this), @group);
            return new List<object>(ret);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_root");

        public Viewport get_root()
        {
            return NativeCalls.godot_icall_0_124(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_group");

        public bool has_group(string name)
        {
            return NativeCalls.godot_icall_1_49(method_bind_4, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_auto_accept_quit");

        public void set_auto_accept_quit(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_5, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_editor_hint");

        public void set_editor_hint(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_6, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_editor_hint");

        public bool is_editor_hint()
        {
            return NativeCalls.godot_icall_0_14(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_debug_collisions_hint");

        public void set_debug_collisions_hint(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_8, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_debugging_collisions_hint");

        public bool is_debugging_collisions_hint()
        {
            return NativeCalls.godot_icall_0_14(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_debug_navigation_hint");

        public void set_debug_navigation_hint(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_10, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_debugging_navigation_hint");

        public bool is_debugging_navigation_hint()
        {
            return NativeCalls.godot_icall_0_14(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_edited_scene_root");

        public void set_edited_scene_root(Object scene)
        {
            NativeCalls.godot_icall_1_20(method_bind_12, Object.GetPtr(this), Object.GetPtr(scene));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_edited_scene_root");

        public Object get_edited_scene_root()
        {
            return NativeCalls.godot_icall_0_12(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_pause");

        public void set_pause(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_14, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_paused");

        public bool is_paused()
        {
            return NativeCalls.godot_icall_0_14(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_input_as_handled");

        public void set_input_as_handled()
        {
            NativeCalls.godot_icall_0_7(method_bind_16, Object.GetPtr(this));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "create_timer");

        public SceneTreeTimer create_timer(float time_sec)
        {
            return NativeCalls.godot_icall_1_424(method_bind_17, Object.GetPtr(this), time_sec);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_count");

        public int get_node_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_18, Object.GetPtr(this));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_frame");

        public int get_frame()
        {
            return NativeCalls.godot_icall_0_0(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "quit");

        public void quit()
        {
            NativeCalls.godot_icall_0_7(method_bind_20, Object.GetPtr(this));
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_screen_stretch");

        public void set_screen_stretch(int mode, int aspect, Vector2 minsize)
        {
            NativeCalls.godot_icall_3_425(method_bind_21, Object.GetPtr(this), mode, aspect, ref minsize);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "queue_delete");

        public void queue_delete(Object obj)
        {
            NativeCalls.godot_icall_1_20(method_bind_22, Object.GetPtr(this), Object.GetPtr(obj));
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "call_group");

        public void call_group(int flags, string @group, string method, params object[] @args)
        {
            NativeCalls.godot_icall_4_426(method_bind_23, Object.GetPtr(this), flags, @group, method, @args);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_current_scene");

        public void set_current_scene(Node child_node)
        {
            NativeCalls.godot_icall_1_20(method_bind_24, Object.GetPtr(this), Object.GetPtr(child_node));
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_current_scene");

        public Node get_current_scene()
        {
            return NativeCalls.godot_icall_0_309(method_bind_25, Object.GetPtr(this));
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "change_scene");

        public int change_scene(string path)
        {
            return NativeCalls.godot_icall_1_63(method_bind_26, Object.GetPtr(this), path);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "change_scene_to");

        public int change_scene_to(PackedScene packed_scene)
        {
            return NativeCalls.godot_icall_1_427(method_bind_27, Object.GetPtr(this), Object.GetPtr(packed_scene));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "reload_current_scene");

        public int reload_current_scene()
        {
            return NativeCalls.godot_icall_0_0(method_bind_28, Object.GetPtr(this));
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_network_peer");

        /// <summary>
        /// Set the peer object to handle the RPC system (effectively enabling networking). Depending on the peer itself, the SceneTree will become a network server (check with [method is_network_server()]) and will set root node's network mode to master (see NETWORK_MODE_* constants in [Node]), or it will become a regular peer with root node set to slave. All child nodes are set to inherit the network mode by default. Handling of networking-related events (connection, disconnection, new clients) is done by connecting to SceneTree's signals.
        /// </summary>
        public void set_network_peer(NetworkedMultiplayerPeer peer)
        {
            NativeCalls.godot_icall_1_21(method_bind_29, Object.GetPtr(this), Object.GetPtr(peer));
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_network_server");

        /// <summary>
        /// Returns true if this SceneTree's [NetworkedMultiplayerPeer] is in server mode (listening for connections).
        /// </summary>
        public bool is_network_server()
        {
            return NativeCalls.godot_icall_0_14(method_bind_30, Object.GetPtr(this));
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_network_unique_id");

        public int get_network_unique_id()
        {
            return NativeCalls.godot_icall_0_0(method_bind_31, Object.GetPtr(this));
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_refuse_new_network_connections");

        public void set_refuse_new_network_connections(bool refuse)
        {
            NativeCalls.godot_icall_1_13(method_bind_32, Object.GetPtr(this), refuse);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_refusing_new_network_connections");

        public bool is_refusing_new_network_connections()
        {
            return NativeCalls.godot_icall_0_14(method_bind_33, Object.GetPtr(this));
        }
    }
}
