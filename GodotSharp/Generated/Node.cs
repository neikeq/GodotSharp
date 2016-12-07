using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Nodes are the base bricks with which Godot games are developed. They can be set as children of other nodes, resulting in a tree arrangement. A given node can contain any number of nodes as children (but there is only one scene tree root node) with the requirement that all siblings (direct children of a node) should have unique names.
    /// Any tree of nodes is called a [i]scene[/i]. Scenes can be saved to the disk and then instanced into other scenes. This allows for very high flexibility in the architecture and data model of the projects. Nodes can optionally be added to groups. This makes it easy to reach a number of nodes from the code (for example an "enemies" group) to perform grouped actions.
    /// [b]Scene tree:[/b] The [SceneTree] contains the active tree of nodes. When a node is added to the scene tree, it receives the NOTIFICATION_ENTER_TREE notification and its [method _enter_tree] callback is triggered. Children nodes are always added [i]after[/i] their parent node, i.e. the [method _enter_tree] callback of a parent node will be triggered before its child's.
    /// Once all nodes have been added in the scene tree, they receive the NOTIFICATION_READY notification and their respective [method _ready] callbacks are triggered. For groups of nodes, the [method _ready] callback is called in reverse order, from the children up to the parent nodes.
    /// It means that when adding a scene to the scene tree, the following order will be used for the callbacks: [method _enter_tree] of the parent, [method _enter_tree] of the children, [method _ready] of the children and finally [method _ready] of the parent (and that recursively for the whole scene).
    /// [b]Processing:[/b] Nodes can be set to the "process" state, so that they receive a callback on each frame requesting them to process (do something). Normal processing (callback [method _process], toggled with [method set_process]) happens as fast as possible and is dependent on the frame rate, so the processing time [i]delta[/i] is variable. Fixed processing (callback [method _fixed_process], toggled with [method set_fixed_process]) happens a fixed amount of times per second (by default 60) and is useful to link itself to the physics.
    /// Nodes can also process input events. When set, the [method _input] function will be called for each input that the program receives. In many cases, this can be overkill (unless used for simple projects), and the [method _unhandled_input] function might be preferred; it is called when the input event was not handled by anyone else (typically, GUI [Control] nodes), ensuring that the node only receives the events that were meant for it.
    /// To keep track of the scene hierarchy (especially when instancing scenes into other scenes), an "owner" can be set for the node with [method set_owner]. This keeps track of who instanced what. This is mostly useful when writing editors and tools, though.
    /// Finally, when a node is freed with [method free] or [method queue_free], it will also free all its children.
    /// [b]Networking with nodes:[/b] After connecting to a server (or making one, see [NetworkedMultiplayerENet]) it is possible to use the built-in RPC (remote procedure call) system to easily communicate over the network. By calling [method rpc] with a method name, it will be called locally, and in all connected peers (peers = clients and the server that accepts connections), with behaviour varying depending on the network mode ([method set_network_mode]) on the receiving peer. To identify which [Node] receives the RPC call Godot will use it's [NodePath] (make sure node names are the same on all peers).
    /// </summary>
    public class Node : Object
    {
        public const int NOTIFICATION_ENTER_TREE = 10;
        public const int NOTIFICATION_EXIT_TREE = 11;
        public const int NOTIFICATION_MOVED_IN_PARENT = 12;
        public const int NOTIFICATION_READY = 13;
        public const int NOTIFICATION_FIXED_PROCESS = 16;
        /// <summary>
        /// Notification received every frame when the process flag is set (see [method set_process]).
        /// </summary>
        public const int NOTIFICATION_PROCESS = 17;
        /// <summary>
        /// Notification received when a node is set as a child of another node. Note that this doesn't mean that a node entered the Scene Tree.
        /// </summary>
        public const int NOTIFICATION_PARENTED = 18;
        /// <summary>
        /// Notification received when a node is unparented (parent removed it from the list of children).
        /// </summary>
        public const int NOTIFICATION_UNPARENTED = 19;
        public const int NOTIFICATION_PAUSED = 14;
        public const int NOTIFICATION_UNPAUSED = 15;
        public const int NOTIFICATION_INSTANCED = 20;
        public const int NOTIFICATION_DRAG_BEGIN = 21;
        public const int NOTIFICATION_DRAG_END = 22;
        public const int NOTIFICATION_PATH_CHANGED = 23;
        public const int NETWORK_MODE_INHERIT = 0;
        public const int NETWORK_MODE_MASTER = 1;
        public const int NETWORK_MODE_SLAVE = 2;
        public const int RPC_MODE_DISABLED = 0;
        public const int RPC_MODE_REMOTE = 1;
        public const int RPC_MODE_SYNC = 2;
        public const int RPC_MODE_MASTER = 3;
        public const int RPC_MODE_SLAVE = 4;
        public const int PAUSE_MODE_INHERIT = 0;
        public const int PAUSE_MODE_STOP = 1;
        public const int PAUSE_MODE_PROCESS = 2;

        private const string nativeName = "Node";

        public Node() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Node_Ctor(this);
        }

        internal Node(bool memoryOwn) : base(memoryOwn) {}

        ~Node()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_name");

        /// <summary>
        /// Set the name of the [Node]. Name must be unique within parent, and setting an already existing name will cause for the node to be automatically renamed.
        /// </summary>
        public void set_name(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_name");

        /// <summary>
        /// Return the name of the node. This name is unique among the siblings (other child nodes from the same parent).
        /// </summary>
        public string get_name()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_child");

        /// <summary>
        /// Add a child [Node]. Nodes can have as many children as they want, but every child must have a unique name. Children nodes are automatically deleted when the parent node is deleted, so deleting a whole scene is performed by deleting its topmost node.
        /// The optional boolean argument enforces creating child nodes with human-readable names, based on the name of the node being instanced instead of its type only.
        /// </summary>
        public void add_child(Node node, bool legible_unique_name = false)
        {
            NativeCalls.godot_icall_2_305(method_bind_2, Object.GetPtr(this), Object.GetPtr(node), legible_unique_name);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_child");

        /// <summary>
        /// Remove a child [Node]. Node is NOT deleted and will have to be deleted manually.
        /// </summary>
        public void remove_child(Node node)
        {
            NativeCalls.godot_icall_1_20(method_bind_3, Object.GetPtr(this), Object.GetPtr(node));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_child_count");

        /// <summary>
        /// Return the amount of child nodes.
        /// </summary>
        public int get_child_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_children");

        /// <summary>
        /// Return an array of references ([Node]) to the child nodes.
        /// </summary>
        public List<object> get_children()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_5, Object.GetPtr(this));
            return new List<object>(ret);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_child");

        /// <summary>
        /// Return a child node by its index (see [method get_child_count]). This method is often used for iterating all children of a node.
        /// </summary>
        public Node get_child(int idx)
        {
            return NativeCalls.godot_icall_1_306(method_bind_6, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_node");

        public bool has_node(NodePath path)
        {
            return NativeCalls.godot_icall_1_307(method_bind_7, Object.GetPtr(this), NodePath.GetPtr(path));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node");

        /// <summary>
        /// Fetch a node. The [NodePath] must be valid (or else an error will be raised) and can be either the path to child node, a relative path (from the current node to another node), or an absolute path to a node.
        /// Note: fetching absolute paths only works when the node is inside the scene tree (see [method is_inside_tree]).
        /// [i]Example:[/i] Assume your current node is Character and the following tree:
        /// [codeblock]
        /// /root
        /// /root/Character
        /// /root/Character/Sword
        /// /root/Character/Backpack/Dagger
        /// /root/MyGame
        /// /root/Swamp/Alligator
        /// /root/Swamp/Mosquito
        /// /root/Swamp/Goblin
        /// [/codeblock]
        /// Possible paths are:
        /// [codeblock]
        /// get_node("Sword")
        /// get_node("Backpack/Dagger")
        /// get_node("../Swamp/Alligator")
        /// get_node("/root/MyGame")
        /// [/codeblock]
        /// </summary>
        public Node get_node(NodePath path)
        {
            return NativeCalls.godot_icall_1_308(method_bind_8, Object.GetPtr(this), NodePath.GetPtr(path));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_parent");

        /// <summary>
        /// Return the parent node of the current node, or an empty [Node] if the node lacks a parent.
        /// </summary>
        public Node get_parent()
        {
            return NativeCalls.godot_icall_0_309(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "find_node");

        /// <summary>
        /// Find a descendant of this node whose name matches [code]mask[/code] as in [method String.match] (i.e. case sensitive, but '*' matches zero or more characters and '?' matches any single character except '.'). Note that it does not match against the full path, just against individual node names.
        /// </summary>
        public Node find_node(string mask, bool recursive = true, bool owned = true)
        {
            return NativeCalls.godot_icall_3_310(method_bind_10, Object.GetPtr(this), mask, recursive, owned);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_node_and_resource");

        public bool has_node_and_resource(NodePath path)
        {
            return NativeCalls.godot_icall_1_307(method_bind_11, Object.GetPtr(this), NodePath.GetPtr(path));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_and_resource");

        public List<object> get_node_and_resource(NodePath path)
        {
            object[] ret = NativeCalls.godot_icall_1_311(method_bind_12, Object.GetPtr(this), NodePath.GetPtr(path));
            return new List<object>(ret);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_inside_tree");

        public bool is_inside_tree()
        {
            return NativeCalls.godot_icall_0_14(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_a_parent_of");

        /// <summary>
        /// Return [i]true[/i] if the "node" argument is a direct or indirect child of the current node, otherwise return [i]false[/i].
        /// </summary>
        public bool is_a_parent_of(Node node)
        {
            return NativeCalls.godot_icall_1_79(method_bind_14, Object.GetPtr(this), Object.GetPtr(node));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_greater_than");

        /// <summary>
        /// Return [i]true[/i] if "node" occurs later in the scene hierarchy than the current node, otherwise return [i]false[/i].
        /// </summary>
        public bool is_greater_than(Node node)
        {
            return NativeCalls.godot_icall_1_79(method_bind_15, Object.GetPtr(this), Object.GetPtr(node));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_path");

        /// <summary>
        /// Return the absolute path of the current node. This only works if the current node is inside the scene tree (see [method is_inside_tree]).
        /// </summary>
        public NodePath get_path()
        {
            IntPtr ret = NativeCalls.godot_icall_0_58(method_bind_16, Object.GetPtr(this));
            return new NodePath(ret);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_path_to");

        /// <summary>
        /// Return the relative path from the current node to the specified node in "node" argument. Both nodes must be in the same scene, or else the function will fail.
        /// </summary>
        public NodePath get_path_to(Node node)
        {
            IntPtr ret = NativeCalls.godot_icall_1_312(method_bind_17, Object.GetPtr(this), Object.GetPtr(node));
            return new NodePath(ret);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_to_group");

        /// <summary>
        /// Add a node to a group. Groups are helpers to name and organize a subset of nodes, like for example "enemies" or "collectables". A [Node] can be in any number of groups. Nodes can be assigned a group at any time, but will not be added to it until they are inside the scene tree (see [method is_inside_tree]).
        /// </summary>
        public void add_to_group(string @group, bool persistent = false)
        {
            NativeCalls.godot_icall_2_68(method_bind_18, Object.GetPtr(this), @group, persistent);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_from_group");

        /// <summary>
        /// Remove a node from a group.
        /// </summary>
        public void remove_from_group(string @group)
        {
            NativeCalls.godot_icall_1_18(method_bind_19, Object.GetPtr(this), @group);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_in_group");

        public bool is_in_group(string @group)
        {
            return NativeCalls.godot_icall_1_49(method_bind_20, Object.GetPtr(this), @group);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "move_child");

        /// <summary>
        /// Move a child node to a different position (order) amongst the other children. Since calls, signals, etc are performed by tree order, changing the order of children nodes may be useful.
        /// </summary>
        public void move_child(Node child_node, int to_pos)
        {
            NativeCalls.godot_icall_2_313(method_bind_21, Object.GetPtr(this), Object.GetPtr(child_node), to_pos);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_groups");

        /// <summary>
        /// Return an array listing the groups that the node is part of.
        /// </summary>
        public List<object> get_groups()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_22, Object.GetPtr(this));
            return new List<object>(ret);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "raise");

        /// <summary>
        /// Move this node to the top of the array of nodes of the parent node. This is often useful on GUIs ([Control]), because their order of drawing fully depends on their order in the tree.
        /// </summary>
        public void raise()
        {
            NativeCalls.godot_icall_0_7(method_bind_23, Object.GetPtr(this));
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_owner");

        /// <summary>
        /// Set the node owner. A node can have any other node as owner (as long as a valid parent, grandparent, etc ascending in the tree). When saving a node (using SceneSaver) all the nodes it owns will be saved with it. This allows to create complex SceneTrees, with instancing and subinstancing.
        /// </summary>
        public void set_owner(Node owner)
        {
            NativeCalls.godot_icall_1_20(method_bind_24, Object.GetPtr(this), Object.GetPtr(owner));
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_owner");

        /// <summary>
        /// Get the node owner (see [method set_owner]).
        /// </summary>
        public Node get_owner()
        {
            return NativeCalls.godot_icall_0_309(method_bind_25, Object.GetPtr(this));
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_and_skip");

        /// <summary>
        /// Remove a node and set all its children as children of the parent node (if exists). All even subscriptions that pass by the removed node will be unsubscribed.
        /// </summary>
        public void remove_and_skip()
        {
            NativeCalls.godot_icall_0_7(method_bind_26, Object.GetPtr(this));
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_index");

        /// <summary>
        /// Get the node index, i.e. its position among the siblings of its parent.
        /// </summary>
        public int get_index()
        {
            return NativeCalls.godot_icall_0_0(method_bind_27, Object.GetPtr(this));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "print_tree");

        /// <summary>
        /// Print the scene to stdout. Used mainly for debugging purposes.
        /// </summary>
        public void print_tree()
        {
            NativeCalls.godot_icall_0_7(method_bind_28, Object.GetPtr(this));
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_filename");

        /// <summary>
        /// A node can contain a filename. This filename should not be changed by the user, unless writing editors and tools. When a scene is instanced from a file, it topmost node contains the filename from where it was loaded.
        /// </summary>
        public void set_filename(string filename)
        {
            NativeCalls.godot_icall_1_18(method_bind_29, Object.GetPtr(this), filename);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_filename");

        /// <summary>
        /// Return a filename that may be contained by the node. When a scene is instanced from a file, it topmost node contains the filename from where it was loaded (see [method set_filename]).
        /// </summary>
        public string get_filename()
        {
            return NativeCalls.godot_icall_0_19(method_bind_30, Object.GetPtr(this));
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "propagate_notification");

        /// <summary>
        /// Notify the current node and all its children recursively by calling notification() in all of them.
        /// </summary>
        public void propagate_notification(int what)
        {
            NativeCalls.godot_icall_1_4(method_bind_31, Object.GetPtr(this), what);
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_fixed_process");

        /// <summary>
        /// Enables or disables node fixed framerate processing. When a node is being processed, it will receive a NOTIFICATION_PROCESS at a fixed (usually 60 fps, check [OS] to change that) interval (and the [method _fixed_process] callback will be called if exists). It is common to check how much time was elapsed since the previous frame by calling [method get_fixed_process_delta_time].
        /// </summary>
        public void set_fixed_process(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_32, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_fixed_process_delta_time");

        /// <summary>
        /// Return the time elapsed since the last fixed frame (see [method _fixed_process]). This is always the same in fixed processing unless the frames per second is changed in [OS].
        /// </summary>
        public float get_fixed_process_delta_time()
        {
            return NativeCalls.godot_icall_0_46(method_bind_33, Object.GetPtr(this));
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_fixed_processing");

        /// <summary>
        /// Return true if fixed processing is enabled (see [method set_fixed_process]).
        /// </summary>
        public bool is_fixed_processing()
        {
            return NativeCalls.godot_icall_0_14(method_bind_34, Object.GetPtr(this));
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_process");

        /// <summary>
        /// Enables or disables node processing. When a node is being processed, it will receive a NOTIFICATION_PROCESS on every drawn frame (and the [method _process] callback will be called if exists). It is common to check how much time was elapsed since the previous frame by calling [method get_process_delta_time].
        /// </summary>
        public void set_process(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_35, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_process_delta_time");

        /// <summary>
        /// Return the time elapsed (in seconds) since the last process callback. This is almost always different each time.
        /// </summary>
        public float get_process_delta_time()
        {
            return NativeCalls.godot_icall_0_46(method_bind_36, Object.GetPtr(this));
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_processing");

        /// <summary>
        /// Return whether processing is enabled in the current node (see [method set_process]).
        /// </summary>
        public bool is_processing()
        {
            return NativeCalls.godot_icall_0_14(method_bind_37, Object.GetPtr(this));
        }

        private IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_process_input");

        /// <summary>
        /// Enable input processing for node. This is not required for GUI controls! It hooks up the node to receive all input (see [method _input]).
        /// </summary>
        public void set_process_input(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_38, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_processing_input");

        /// <summary>
        /// Return true if the node is processing input (see [method set_process_input]).
        /// </summary>
        public bool is_processing_input()
        {
            return NativeCalls.godot_icall_0_14(method_bind_39, Object.GetPtr(this));
        }

        private IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_process_unhandled_input");

        /// <summary>
        /// Enable unhandled input processing for node. This is not required for GUI controls! It hooks up the node to receive all input that was not previously handled before (usually by a [Control]). (see [method _unhandled_input]).
        /// </summary>
        public void set_process_unhandled_input(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_40, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_41 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_processing_unhandled_input");

        /// <summary>
        /// Return true if the node is processing unhandled input (see [method set_process_unhandled_input]).
        /// </summary>
        public bool is_processing_unhandled_input()
        {
            return NativeCalls.godot_icall_0_14(method_bind_41, Object.GetPtr(this));
        }

        private IntPtr method_bind_42 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_process_unhandled_key_input");

        public void set_process_unhandled_key_input(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_42, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_43 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_processing_unhandled_key_input");

        public bool is_processing_unhandled_key_input()
        {
            return NativeCalls.godot_icall_0_14(method_bind_43, Object.GetPtr(this));
        }

        private IntPtr method_bind_44 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_pause_mode");

        public void set_pause_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_44, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_45 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pause_mode");

        public int get_pause_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_45, Object.GetPtr(this));
        }

        private IntPtr method_bind_46 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "can_process");

        /// <summary>
        /// Return true if the node can process, i.e. whether its pause mode allows processing while the scene tree is paused (see [method set_pause_mode]). Always returns true if the scene tree is not paused, and false if the node is not in the tree. FIXME: Why FAIL_COND?
        /// </summary>
        public bool can_process()
        {
            return NativeCalls.godot_icall_0_14(method_bind_46, Object.GetPtr(this));
        }

        private IntPtr method_bind_47 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "print_stray_nodes");

        public void print_stray_nodes()
        {
            NativeCalls.godot_icall_0_7(method_bind_47, Object.GetPtr(this));
        }

        private IntPtr method_bind_48 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_position_in_parent");

        public int get_position_in_parent()
        {
            return NativeCalls.godot_icall_0_0(method_bind_48, Object.GetPtr(this));
        }

        private IntPtr method_bind_49 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_display_folded");

        public void set_display_folded(bool fold)
        {
            NativeCalls.godot_icall_1_13(method_bind_49, Object.GetPtr(this), fold);
        }

        private IntPtr method_bind_50 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_displayed_folded");

        public bool is_displayed_folded()
        {
            return NativeCalls.godot_icall_0_14(method_bind_50, Object.GetPtr(this));
        }

        private IntPtr method_bind_51 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_tree");

        public SceneTree get_tree()
        {
            return NativeCalls.godot_icall_0_314(method_bind_51, Object.GetPtr(this));
        }

        private IntPtr method_bind_52 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "duplicate");

        /// <summary>
        /// Duplicate the node, returning a new [Node]. If [code]use_instancing[/code] is true, the duplicated node will be a new instance of the original [PackedScene], if not it will be an independent node. The duplicated node has the same group assignments and signals as the original one.
        /// </summary>
        public Node duplicate(bool use_instancing = false)
        {
            return NativeCalls.godot_icall_1_315(method_bind_52, Object.GetPtr(this), use_instancing);
        }

        private IntPtr method_bind_53 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "replace_by");

        /// <summary>
        /// Replace a node in a scene by a given one. Subscriptions that pass through this node will be lost.
        /// </summary>
        public void replace_by(Node node, bool keep_data = false)
        {
            NativeCalls.godot_icall_2_305(method_bind_53, Object.GetPtr(this), Object.GetPtr(node), keep_data);
        }

        private IntPtr method_bind_54 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_scene_instance_load_placeholder");

        public void set_scene_instance_load_placeholder(bool load_placeholder)
        {
            NativeCalls.godot_icall_1_13(method_bind_54, Object.GetPtr(this), load_placeholder);
        }

        private IntPtr method_bind_55 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_scene_instance_load_placeholder");

        public bool get_scene_instance_load_placeholder()
        {
            return NativeCalls.godot_icall_0_14(method_bind_55, Object.GetPtr(this));
        }

        private IntPtr method_bind_56 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_viewport");

        public Object get_viewport()
        {
            return NativeCalls.godot_icall_0_12(method_bind_56, Object.GetPtr(this));
        }

        private IntPtr method_bind_57 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "queue_free");

        public void queue_free()
        {
            NativeCalls.godot_icall_0_7(method_bind_57, Object.GetPtr(this));
        }

        private IntPtr method_bind_58 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_network_mode");

        /// <summary>
        /// Change the networking mode of the [Node], where [i]mode[/i] is one of the constants NETWORK_MODE_*. Master nodes will only call gdscript methods defined as [i]master func[/i] if a RPC call is received (slave nodes will only call [i]slave func[/i]; both will call [i]remote func[/i] if the call is not local, and [i]sync func[/i] in any case). Inherit mode looks at the parent node to determine the value (root node depends on the [SceneTree] having a networking peer set with [method SceneTree.set_network_peer])
        /// </summary>
        public void set_network_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_58, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_59 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_network_mode");

        public int get_network_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_59, Object.GetPtr(this));
        }

        private IntPtr method_bind_60 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_network_master");

        public bool is_network_master()
        {
            return NativeCalls.godot_icall_0_14(method_bind_60, Object.GetPtr(this));
        }

        private IntPtr method_bind_61 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rpc_config");

        /// <summary>
        /// Change the method's RPC mode (one of RPC_MODE_* constants).
        /// </summary>
        public void rpc_config(string method, int mode)
        {
            NativeCalls.godot_icall_2_71(method_bind_61, Object.GetPtr(this), method, mode);
        }

        private IntPtr method_bind_62 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rset_config");

        /// <summary>
        /// Change the property's RPC mode (one of RPC_MODE_* constants).
        /// </summary>
        public void rset_config(string property, int mode)
        {
            NativeCalls.godot_icall_2_71(method_bind_62, Object.GetPtr(this), property, mode);
        }

        private IntPtr method_bind_63 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rpc");

        /// <summary>
        /// Send a remote procedure call request to all peers on the network (and locally), optionally sending additional data as arguments. Call request will be received by nodes with the same [NodePath].
        /// </summary>
        public void rpc(string method, params object[] @args)
        {
            NativeCalls.godot_icall_2_316(method_bind_63, Object.GetPtr(this), method, @args);
        }

        private IntPtr method_bind_64 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rpc_unreliable");

        /// <summary>
        /// Send a [method rpc] using an unreliable protocol.
        /// </summary>
        public void rpc_unreliable(string method, params object[] @args)
        {
            NativeCalls.godot_icall_2_316(method_bind_64, Object.GetPtr(this), method, @args);
        }

        private IntPtr method_bind_65 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rpc_id");

        /// <summary>
        /// Send a [method rpc] to a specific peer identified by [i]peer_id[/i].
        /// </summary>
        public void rpc_id(int peer_id, string method, params object[] @args)
        {
            NativeCalls.godot_icall_3_317(method_bind_65, Object.GetPtr(this), peer_id, method, @args);
        }

        private IntPtr method_bind_66 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rpc_unreliable_id");

        /// <summary>
        /// Send a [method rpc] to a specific peer identified by [i]peer_id[/i] using an unreliable protocol.
        /// </summary>
        public void rpc_unreliable_id(int peer_id, string method, params object[] @args)
        {
            NativeCalls.godot_icall_3_317(method_bind_66, Object.GetPtr(this), peer_id, method, @args);
        }

        private IntPtr method_bind_67 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rset");

        /// <summary>
        /// Remotely change property's value on other peers (and locally).
        /// </summary>
        public void rset(string property, object @value)
        {
            NativeCalls.godot_icall_2_146(method_bind_67, Object.GetPtr(this), property, @value);
        }

        private IntPtr method_bind_68 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rset_id");

        /// <summary>
        /// Remotely change property's value on a specific peer identified by [i]peer_id[/i].
        /// </summary>
        public void rset_id(int peer_id, string property, object @value)
        {
            NativeCalls.godot_icall_3_318(method_bind_68, Object.GetPtr(this), peer_id, property, @value);
        }

        private IntPtr method_bind_69 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rset_unreliable");

        /// <summary>
        /// Remotely change property's value on other peers (and locally) using an unreliable protocol.
        /// </summary>
        public void rset_unreliable(string property, object @value)
        {
            NativeCalls.godot_icall_2_146(method_bind_69, Object.GetPtr(this), property, @value);
        }

        private IntPtr method_bind_70 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rset_unreliable_id");

        /// <summary>
        /// Remotely change property's value on a specific peer identified by [i]peer_id[/i] using an unreliable protocol.
        /// </summary>
        public void rset_unreliable_id(int peer_id, string property, object @value)
        {
            NativeCalls.godot_icall_3_318(method_bind_70, Object.GetPtr(this), peer_id, property, @value);
        }
    }
}
