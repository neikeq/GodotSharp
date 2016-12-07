using System;

namespace GodotEngine
{
    /// <summary>
    /// The VisibilityNotifier2D is used to notify when its bounding rectangle enters the screen, is visible on the screen, or when it exits the screen.
    /// </summary>
    public class VisibilityNotifier2D : Node2D
    {
        private const string nativeName = "VisibilityNotifier2D";

        public VisibilityNotifier2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisibilityNotifier2D_Ctor(this);
        }

        internal VisibilityNotifier2D(bool memoryOwn) : base(memoryOwn) {}

        ~VisibilityNotifier2D()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_rect");

        /// <summary>
        /// Set the visibility bounding rectangle of the VisibilityNotifier2D.
        /// </summary>
        public void set_rect(Rect2 rect)
        {
            NativeCalls.godot_icall_1_81(method_bind_0, Object.GetPtr(this), ref rect);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rect");

        /// <summary>
        /// Return the visibility bounding rectangle of the VisibilityNotifier2D.
        /// </summary>
        public Rect2 get_rect()
        {
            object ret = NativeCalls.godot_icall_0_82(method_bind_1, Object.GetPtr(this));
            return (Rect2)ret;
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_on_screen");

        /// <summary>
        /// Return true if any part of the bounding rectangle is on the screen.
        /// </summary>
        public bool is_on_screen()
        {
            return NativeCalls.godot_icall_0_14(method_bind_2, Object.GetPtr(this));
        }
    }
}
