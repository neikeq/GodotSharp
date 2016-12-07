using System;

namespace GodotEngine
{
    public class Joint : Spatial
    {
        private const string nativeName = "Joint";

        internal Joint() {}

        internal Joint(bool memoryOwn) : base(memoryOwn) {}

        ~Joint()
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

        public void set_node_a(NodePath node)
        {
            NativeCalls.godot_icall_1_57(method_bind_0, Object.GetPtr(this), NodePath.GetPtr(node));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_a");

        public NodePath get_node_a()
        {
            IntPtr ret = NativeCalls.godot_icall_0_58(method_bind_1, Object.GetPtr(this));
            return new NodePath(ret);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_node_b");

        public void set_node_b(NodePath node)
        {
            NativeCalls.godot_icall_1_57(method_bind_2, Object.GetPtr(this), NodePath.GetPtr(node));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_b");

        public NodePath get_node_b()
        {
            IntPtr ret = NativeCalls.godot_icall_0_58(method_bind_3, Object.GetPtr(this));
            return new NodePath(ret);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_solver_priority");

        public void set_solver_priority(int priority)
        {
            NativeCalls.godot_icall_1_4(method_bind_4, Object.GetPtr(this), priority);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_solver_priority");

        public int get_solver_priority()
        {
            return NativeCalls.godot_icall_0_0(method_bind_5, Object.GetPtr(this));
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
