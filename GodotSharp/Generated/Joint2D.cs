using System;

namespace GodotEngine
{
    /// <summary>
    /// Base node for all joint constraints in 2D physics. Joints take 2 bodies and apply a custom constraint.
    /// </summary>
    public class Joint2D : Node2D
    {
        private const string nativeName = "Joint2D";

        internal Joint2D() {}

        internal Joint2D(bool memoryOwn) : base(memoryOwn) {}

        ~Joint2D()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_node_a");

        /// <summary>
        /// Set the path to the A node for the joint. Must be of type [PhysicsBody2D].
        /// </summary>
        public void set_node_a(NodePath node)
        {
            NativeCalls.godot_icall_1_57(method_bind_0, Object.GetPtr(this), NodePath.GetPtr(node));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_a");

        /// <summary>
        /// Return the path to the A node for the joint.
        /// </summary>
        public NodePath get_node_a()
        {
            IntPtr ret = NativeCalls.godot_icall_0_58(method_bind_1, Object.GetPtr(this));
            return new NodePath(ret);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_node_b");

        /// <summary>
        /// Set the path to the B node for the joint. Must be of type [PhysicsBody2D].
        /// </summary>
        public void set_node_b(NodePath node)
        {
            NativeCalls.godot_icall_1_57(method_bind_2, Object.GetPtr(this), NodePath.GetPtr(node));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_b");

        /// <summary>
        /// Return the path to the B node for the joint.
        /// </summary>
        public NodePath get_node_b()
        {
            IntPtr ret = NativeCalls.godot_icall_0_58(method_bind_3, Object.GetPtr(this));
            return new NodePath(ret);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bias");

        public void set_bias(float bias)
        {
            NativeCalls.godot_icall_1_45(method_bind_4, Object.GetPtr(this), bias);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bias");

        public float get_bias()
        {
            return NativeCalls.godot_icall_0_46(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_exclude_nodes_from_collision");

        public void set_exclude_nodes_from_collision(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_6, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_exclude_nodes_from_collision");

        public bool get_exclude_nodes_from_collision()
        {
            return NativeCalls.godot_icall_0_14(method_bind_7, Object.GetPtr(this));
        }
    }
}
