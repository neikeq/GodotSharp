using System;

namespace GodotEngine
{
    /// <summary>
    /// Popup is a base [Control] used to show dialogs and popups. It's a subwindow and modal by default (see [Control]) and has helpers for custom popup behavior.
    /// </summary>
    public class Popup : Control
    {
        /// <summary>
        /// Notification sent right after the popup is shown.
        /// </summary>
        public const int NOTIFICATION_POST_POPUP = 80;
        /// <summary>
        /// Notification sent right after the popup is hidden.
        /// </summary>
        public const int NOTIFICATION_POPUP_HIDE = 81;

        private const string nativeName = "Popup";

        public Popup() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Popup_Ctor(this);
        }

        internal Popup(bool memoryOwn) : base(memoryOwn) {}

        ~Popup()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "popup_centered");

        /// <summary>
        /// Popup (show the control in modal form) in the center of the screen, at the current size, or at a size determined by "size".
        /// <param name="size">If the param is null, then the default value is new Vector2(0, 0)</param>
        /// </summary>
        public void popup_centered(Nullable<Vector2> size = null)
        {
            Vector2 size_in = size.HasValue ? size.Value : new Vector2(0, 0);
            NativeCalls.godot_icall_1_23(method_bind_0, Object.GetPtr(this), ref size_in);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "popup_centered_ratio");

        /// <summary>
        /// Popup (show the control in modal form) in the center of the screen, scaled at a ratio of size of the screen.
        /// </summary>
        public void popup_centered_ratio(float ratio = 0.75f)
        {
            NativeCalls.godot_icall_1_45(method_bind_1, Object.GetPtr(this), ratio);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "popup_centered_minsize");

        /// <summary>
        /// Popup (show the control in modal form) in the center of the screen, ensuring the size is never smaller than [code]minsize[/code].
        /// <param name="minsize">If the param is null, then the default value is new Vector2(0, 0)</param>
        /// </summary>
        public void popup_centered_minsize(Nullable<Vector2> minsize = null)
        {
            Vector2 minsize_in = minsize.HasValue ? minsize.Value : new Vector2(0, 0);
            NativeCalls.godot_icall_1_23(method_bind_2, Object.GetPtr(this), ref minsize_in);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "popup");

        /// <summary>
        /// Popup (show the control in modal form).
        /// </summary>
        public void popup()
        {
            NativeCalls.godot_icall_0_7(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_exclusive");

        /// <summary>
        /// Make the popup hide other popups when shown on the screen.
        /// </summary>
        public void set_exclusive(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_4, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_exclusive");

        /// <summary>
        /// Returns whether the popup will hide other popups when shown on the screen.
        /// </summary>
        public bool is_exclusive()
        {
            return NativeCalls.godot_icall_0_14(method_bind_5, Object.GetPtr(this));
        }
    }
}
