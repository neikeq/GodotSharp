using System;

namespace GodotEngine
{
    /// <summary>
    /// A ScrollContainer node with a [Control] child and scrollbar child ([HScrollbar], [VScrollBar], or both) will only draw the Control within the ScrollContainer area.  Scrollbars will automatically be drawn at the right (for vertical) or bottom (for horizontal) and will enable dragging to move the viewable Control (and its children) within the ScrollContainer.  Scrollbars will also automatically resize the grabber based on the minimum_size of the Control relative to the ScrollContainer.  Works great with a [Panel] control.  You can set EXPAND on children size flags, so they will upscale to ScrollContainer size if ScrollContainer size is bigger (scroll is invisible for chosen dimension).
    /// </summary>
    public class ScrollContainer : Container
    {
        private const string nativeName = "ScrollContainer";

        public ScrollContainer() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ScrollContainer_Ctor(this);
        }

        internal ScrollContainer(bool memoryOwn) : base(memoryOwn) {}

        ~ScrollContainer()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_enable_h_scroll");

        /// <summary>
        /// Set allows horizontal scroll.
        /// </summary>
        public void set_enable_h_scroll(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_0, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_h_scroll_enabled");

        /// <summary>
        /// Return true if horizontal scroll is allowed.
        /// </summary>
        public bool is_h_scroll_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_enable_v_scroll");

        /// <summary>
        /// Set allows vertical scroll.
        /// </summary>
        public void set_enable_v_scroll(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_2, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_v_scroll_enabled");

        /// <summary>
        /// Return true if vertical scroll is allowed.
        /// </summary>
        public bool is_v_scroll_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_h_scroll");

        /// <summary>
        /// Set horizontal scroll value.
        /// </summary>
        public void set_h_scroll(int val)
        {
            NativeCalls.godot_icall_1_4(method_bind_4, Object.GetPtr(this), val);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_h_scroll");

        /// <summary>
        /// Return current horizontal scroll value.
        /// </summary>
        public int get_h_scroll()
        {
            return NativeCalls.godot_icall_0_0(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_v_scroll");

        /// <summary>
        /// Set vertical scroll value.
        /// </summary>
        public void set_v_scroll(int val)
        {
            NativeCalls.godot_icall_1_4(method_bind_6, Object.GetPtr(this), val);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_v_scroll");

        /// <summary>
        /// Return current vertical scroll value.
        /// </summary>
        public int get_v_scroll()
        {
            return NativeCalls.godot_icall_0_0(method_bind_7, Object.GetPtr(this));
        }
    }
}
