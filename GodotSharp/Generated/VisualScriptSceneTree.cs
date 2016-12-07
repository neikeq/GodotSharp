using System;

namespace GodotEngine
{
    public class VisualScriptSceneTree : VisualScriptNode
    {
        private const string nativeName = "VisualScriptSceneTree";

        public VisualScriptSceneTree() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScriptSceneTree_Ctor(this);
        }

        internal VisualScriptSceneTree(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScriptSceneTree()
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
                    NativeCalls.godot_icall_VisualScriptSceneTree_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
