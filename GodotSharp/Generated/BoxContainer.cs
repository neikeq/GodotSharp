using System;

namespace GodotEngine
{
    /// <summary>
    /// Base class for Box containers. It arranges children controls vertically or horizontally, and rearranges them automatically when their minimum size changes.
    /// </summary>
    public class BoxContainer : Container
    {
        /// <summary>
        /// Align children with beginning of the container.
        /// </summary>
        public const int ALIGN_BEGIN = 0;
        /// <summary>
        /// Align children with center of the container.
        /// </summary>
        public const int ALIGN_CENTER = 1;
        /// <summary>
        /// Align children with end of the container.
        /// </summary>
        public const int ALIGN_END = 2;

        private const string nativeName = "BoxContainer";

        internal BoxContainer() {}

        internal BoxContainer(bool memoryOwn) : base(memoryOwn) {}

        ~BoxContainer()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_spacer");

        /// <summary>
        /// Add a control to the box as a spacer.
        /// If [i]begin[/i] is true the spacer control will be inserted in front of other children.
        /// </summary>
        public void add_spacer(bool begin)
        {
            NativeCalls.godot_icall_1_13(method_bind_0, Object.GetPtr(this), begin);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_alignment");

        /// <summary>
        /// Return the alignment of children in the container.
        /// </summary>
        public int get_alignment()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_alignment");

        /// <summary>
        /// Set the alignment of children in the container(Must be one of ALIGN_BEGIN, ALIGN_CENTER or ALIGN_END).
        /// </summary>
        public void set_alignment(int alignment)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), alignment);
        }
    }
}
