using System;

namespace GodotEngine
{
    public class VisualScriptSceneNode : VisualScriptNode
    {
        private const string nativeName = "VisualScriptSceneNode";

        public VisualScriptSceneNode() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptSceneNode_Ctor(this);
        }

        internal VisualScriptSceneNode(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptSceneNode()
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
                    NativeCalls.godot_icall_VisualScriptSceneNode_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_node_path");

        public void set_node_path(NodePath path)
        {
            NativeCalls.godot_icall_1_57(method_bind_0, Object.GetPtr(this), NodePath.GetPtr(path));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_path");

        public NodePath get_node_path()
        {
            IntPtr ret = NativeCalls.godot_icall_0_58(method_bind_1, Object.GetPtr(this));
            return new NodePath(ret);
        }
    }
}
