using System;

namespace GodotEngine
{
    public class RemoteTransform2D : Node2D
    {
        private const string nativeName = "RemoteTransform2D";

        public RemoteTransform2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_RemoteTransform2D_Ctor(this);
        }

        internal RemoteTransform2D(bool memoryOwn) : base(memoryOwn) {}

        ~RemoteTransform2D()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_remote_node");

        public void set_remote_node(NodePath path)
        {
            NativeCalls.godot_icall_1_57(method_bind_0, Object.GetPtr(this), NodePath.GetPtr(path));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_remote_node");

        public NodePath get_remote_node()
        {
            IntPtr ret = NativeCalls.godot_icall_0_58(method_bind_1, Object.GetPtr(this));
            return new NodePath(ret);
        }
    }
}
