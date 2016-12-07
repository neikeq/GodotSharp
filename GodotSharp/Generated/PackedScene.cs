using System;

namespace GodotEngine
{
    /// <summary>
    /// TODO: explain ownership, and that node does not need to own itself
    /// </summary>
    public class PackedScene : Resource
    {
        private const string nativeName = "PackedScene";

        public PackedScene() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_PackedScene_Ctor(this);
        }

        internal PackedScene(bool memoryOwn) : base(memoryOwn) {}

        ~PackedScene()
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
                    NativeCalls.godot_icall_PackedScene_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "pack");

        /// <summary>
        /// Pack will ignore any sub-nodes not owned by given node. See [method Node.set_owner].
        /// </summary>
        public int pack(Node path)
        {
            return NativeCalls.godot_icall_1_282(method_bind_0, Object.GetPtr(this), Object.GetPtr(path));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instance");

        public Node instance(bool gen_edit_state = false)
        {
            return NativeCalls.godot_icall_1_315(method_bind_1, Object.GetPtr(this), gen_edit_state);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "can_instance");

        public bool can_instance()
        {
            return NativeCalls.godot_icall_0_14(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_state");

        public SceneState get_state()
        {
            return NativeCalls.godot_icall_0_331(method_bind_3, Object.GetPtr(this));
        }
    }
}
