using System;

namespace GodotEngine
{
    /// <summary>
    /// The VisibilityNotifier is used to notify when its bounding box enters the screen, is visible on the screen, or when it exits the screen.
    /// </summary>
    public class VisibilityNotifier : Spatial
    {
        private const string nativeName = "VisibilityNotifier";

        public VisibilityNotifier() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisibilityNotifier_Ctor(this);
        }

        internal VisibilityNotifier(bool memoryOwn) : base(memoryOwn) {}

        ~VisibilityNotifier()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_aabb");

        /// <summary>
        /// Set the visibility bounding box of the VisibilityNotifier.
        /// </summary>
        public void set_aabb(AABB rect)
        {
            NativeCalls.godot_icall_1_279(method_bind_0, Object.GetPtr(this), ref rect);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_aabb");

        /// <summary>
        /// Return the visibility bounding box of the VisibilityNotifier.
        /// </summary>
        public AABB get_aabb()
        {
            object ret = NativeCalls.godot_icall_0_280(method_bind_1, Object.GetPtr(this));
            return (AABB)ret;
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_on_screen");

        /// <summary>
        /// Return true if any part of the bounding box is on the screen.
        /// </summary>
        public bool is_on_screen()
        {
            return NativeCalls.godot_icall_0_14(method_bind_2, Object.GetPtr(this));
        }
    }
}
