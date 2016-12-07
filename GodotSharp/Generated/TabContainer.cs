using System;

namespace GodotEngine
{
    /// <summary>
    /// Tabbed Container. Contains several children controls, but shows only one at the same time. Clicking on the top tabs allows to change the currently visible one.
    /// Children controls of this one automatically.
    /// </summary>
    public class TabContainer : Control
    {
        private const string nativeName = "TabContainer";

        public TabContainer() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_TabContainer_Ctor(this);
        }

        internal TabContainer(bool memoryOwn) : base(memoryOwn) {}

        ~TabContainer()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_tab_count");

        /// <summary>
        /// Return the amount of tabs.
        /// </summary>
        public int get_tab_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_current_tab");

        /// <summary>
        /// Bring a tab (and the Control it represents) to the front, and hide the rest.
        /// </summary>
        public void set_current_tab(int tab_idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_1, Object.GetPtr(this), tab_idx);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_current_tab");

        /// <summary>
        /// Return the current tab that is being showed.
        /// </summary>
        public int get_current_tab()
        {
            return NativeCalls.godot_icall_0_0(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_current_tab_control");

        public Control get_current_tab_control()
        {
            return NativeCalls.godot_icall_0_177(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_tab_control");

        public Control get_tab_control(int idx)
        {
            return NativeCalls.godot_icall_1_477(method_bind_4, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_tab_align");

        /// <summary>
        /// Set tab alignment, from the ALIGN_* enum. Moves tabs to the left, right or center.
        /// </summary>
        public void set_tab_align(int align)
        {
            NativeCalls.godot_icall_1_4(method_bind_5, Object.GetPtr(this), align);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_tab_align");

        /// <summary>
        /// Return tab alignment, from the ALIGN_* enum.
        /// </summary>
        public int get_tab_align()
        {
            return NativeCalls.godot_icall_0_0(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_tabs_visible");

        /// <summary>
        /// Set whether the tabs should be visible or hidden.
        /// </summary>
        public void set_tabs_visible(bool visible)
        {
            NativeCalls.godot_icall_1_13(method_bind_7, Object.GetPtr(this), visible);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "are_tabs_visible");

        /// <summary>
        /// Return whether the tabs should be visible or hidden.
        /// </summary>
        public bool are_tabs_visible()
        {
            return NativeCalls.godot_icall_0_14(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_tab_title");

        /// <summary>
        /// Set a title for the tab. Tab titles are by default the children node name, but this can be overridden.
        /// </summary>
        public void set_tab_title(int tab_idx, string title)
        {
            NativeCalls.godot_icall_2_61(method_bind_9, Object.GetPtr(this), tab_idx, title);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_tab_title");

        /// <summary>
        /// Return the title for the tab. Tab titles are by default the children node name, but this can be overridden.
        /// </summary>
        public string get_tab_title(int tab_idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_10, Object.GetPtr(this), tab_idx);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_tab_icon");

        /// <summary>
        /// Set an icon for a tab.
        /// </summary>
        public void set_tab_icon(int tab_idx, Texture icon)
        {
            NativeCalls.godot_icall_2_115(method_bind_11, Object.GetPtr(this), tab_idx, Object.GetPtr(icon));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_tab_icon");

        public Texture get_tab_icon(int tab_idx)
        {
            return NativeCalls.godot_icall_1_112(method_bind_12, Object.GetPtr(this), tab_idx);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_popup");

        public void set_popup(Popup popup)
        {
            NativeCalls.godot_icall_1_20(method_bind_13, Object.GetPtr(this), Object.GetPtr(popup));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_popup");

        public Popup get_popup()
        {
            return NativeCalls.godot_icall_0_478(method_bind_14, Object.GetPtr(this));
        }
    }
}
