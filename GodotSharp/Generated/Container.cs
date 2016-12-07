using System;

namespace GodotEngine
{
    /// <summary>
    /// Base node for containers. A [Container] contains other controls and automatically arranges them in a certain way.
    /// A Control can inherit this to create custom container classes.
    /// </summary>
    public class Container : Control
    {
        /// <summary>
        /// Notification for when sorting the children, it must be obeyed immediately.
        /// </summary>
        public const int NOTIFICATION_SORT_CHILDREN = 50;

        private const string nativeName = "Container";

        public Container() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Container_Ctor(this);
        }

        internal Container(bool memoryOwn) : base(memoryOwn) {}

        ~Container()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "queue_sort");

        /// <summary>
        /// Queue resort of the contained children. This is called automatically anyway, but can be called upon request.
        /// </summary>
        public void queue_sort()
        {
            NativeCalls.godot_icall_0_7(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "fit_child_in_rect");

        /// <summary>
        /// Fit a child control in a given rect. This is mainly a helper for creating custom container classes.
        /// </summary>
        public void fit_child_in_rect(Control child, Rect2 rect)
        {
            NativeCalls.godot_icall_2_175(method_bind_1, Object.GetPtr(this), Object.GetPtr(child), ref rect);
        }
    }
}
