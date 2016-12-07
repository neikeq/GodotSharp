using System;

namespace GodotEngine
{
    /// <summary>
    /// CenterContainer Keeps children controls centered. This container keeps all children to their minimum size, in the center.
    /// </summary>
    public class CenterContainer : Container
    {
        private const string nativeName = "CenterContainer";

        public CenterContainer() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_CenterContainer_Ctor(this);
        }

        internal CenterContainer(bool memoryOwn) : base(memoryOwn) {}

        ~CenterContainer()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_use_top_left");

        /// <summary>
        /// This function will anchor the container children to the top left corner of the the container boundaries, moving all its children to that position, (the children new center will be the top left corner of the container).
        /// </summary>
        public void set_use_top_left(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_0, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_using_top_left");

        /// <summary>
        /// Should put children to the top left corner instead of center of the container.
        /// </summary>
        public bool is_using_top_left()
        {
            return NativeCalls.godot_icall_0_14(method_bind_1, Object.GetPtr(this));
        }
    }
}
