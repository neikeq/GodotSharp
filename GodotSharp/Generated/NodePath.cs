using System;

namespace GodotEngine
{
    /// <summary>
    /// A pre-parsed relative or absolute path in a scene tree, for use with [method Node.get_node] and similar functions. It can reference a node, a resource within a node, or a property of a node or resource. For instance, [code]"Path2D/PathFollow2D/Sprite:texture:size"[/code] would refer to the size property of the texture resource on the node named "Sprite" which is a child of the other named nodes in the path. Note that if you want to get a resource, you must end the path with a colon, otherwise the last element will be used as a property name.
    /// You will usually just pass a string to [method Node.get_node] and it will be automatically converted, but you may occasionally want to parse a path ahead of time with [NodePath] or the literal syntax [code]@"path"[/code]. Exporting a [NodePath] variable will give you a node selection widget in the properties panel of the editor, which can often be useful.
    /// A [NodePath] is made up of a list of node names, a list of "subnode" (resource) names, and the name of a property in the final node or resource.
    /// </summary>
    public class NodePath
    {
        private const string nativeName = "NodePath";

        internal IntPtr ptr;

        internal static IntPtr GetPtr(NodePath instance)
        {
            return instance == null ? IntPtr.Zero : instance.ptr;
        }

        ~NodePath()
        {
            Dispose();
        }

        public virtual void Dispose()
        {
            lock (this)
            {
                if (ptr != IntPtr.Zero)
                {
                    NativeCalls.godot_icall_NodePath_Dtor(ptr);
                    ptr = IntPtr.Zero;
                }

                GC.SuppressFinalize(this);
            }
        }

        internal NodePath(IntPtr ptr)
        {
            this.ptr = ptr;
        }

        public bool HasValidHandle()
        {
            return ptr == IntPtr.Zero;
        }

        public NodePath() : this(string.Empty) {}

        public NodePath(string path)
        {
            this.ptr = NativeCalls.godot_icall_NodePath_Ctor(path);
        }

        public static implicit operator NodePath(string from)
        {
            return new NodePath(from);
        }

        public static implicit operator string(NodePath from)
        {
            return NativeCalls.godot_icall_NodePath_operator_String(NodePath.GetPtr(from));
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_name");

        /// <summary>
        /// Get the node name indicated by [code]idx[/code] (0 to [method get_name_count])
        /// </summary>
        public string get_name(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_0, NodePath.GetPtr(this), idx);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_name_count");

        /// <summary>
        /// Get the number of node names which make up the path.
        /// </summary>
        public int get_name_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, NodePath.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_property");

        /// <summary>
        /// Get the path's property name, or an empty string if the path doesn't have a property.
        /// </summary>
        public string get_property()
        {
            return NativeCalls.godot_icall_0_19(method_bind_2, NodePath.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_subname");

        /// <summary>
        /// Get the resource name indicated by [code]idx[/code] (0 to [method get_subname_count])
        /// </summary>
        public string get_subname(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_3, NodePath.GetPtr(this), idx);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_subname_count");

        /// <summary>
        /// Get the number of resource names in the path.
        /// </summary>
        public int get_subname_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_4, NodePath.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_absolute");

        /// <summary>
        /// Return true if the node path is absolute (not relative).
        /// </summary>
        public bool is_absolute()
        {
            return NativeCalls.godot_icall_0_14(method_bind_5, NodePath.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_empty");

        /// <summary>
        /// Return true if the node path is empty.
        /// </summary>
        public bool is_empty()
        {
            return NativeCalls.godot_icall_0_14(method_bind_6, NodePath.GetPtr(this));
        }
    }
}
