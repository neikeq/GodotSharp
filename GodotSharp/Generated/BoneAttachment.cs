using System;

namespace GodotEngine
{
    /// <summary>
    /// This node must be the child of a [Skeleton] node. You can then select a bone for this node to attach to. The BoneAttachment node will copy the transform of the selected bone.
    /// </summary>
    public class BoneAttachment : Spatial
    {
        private const string nativeName = "BoneAttachment";

        public BoneAttachment() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_BoneAttachment_Ctor(this);
        }

        internal BoneAttachment(bool memoryOwn) : base(memoryOwn) {}

        ~BoneAttachment()
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
    }
}
