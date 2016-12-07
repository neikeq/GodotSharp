using System;

namespace GodotEngine
{
    /// <summary>
    /// Simple tabs control, similar to [TabContainer] but is only in charge of drawing tabs, not interact with children.
    /// </summary>
    public class Tabs : Control
    {
        public const int ALIGN_LEFT = 0;
        public const int ALIGN_CENTER = 1;
        public const int ALIGN_RIGHT = 2;
        public const int CLOSE_BUTTON_SHOW_ACTIVE_ONLY = 1;
        public const int CLOSE_BUTTON_SHOW_ALWAYS = 2;
        public const int CLOSE_BUTTON_SHOW_NEVER = 0;

        private const string nativeName = "Tabs";

        public Tabs() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Tabs_Ctor(this);
        }

        internal Tabs(bool memoryOwn) : base(memoryOwn) {}

        ~Tabs()
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

        public int get_tab_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_current_tab");

        public void set_current_tab(int tab_idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_1, Object.GetPtr(this), tab_idx);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_current_tab");

        public int get_current_tab()
        {
            return NativeCalls.godot_icall_0_0(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_tab_title");

        public void set_tab_title(int tab_idx, string title)
        {
            NativeCalls.godot_icall_2_61(method_bind_3, Object.GetPtr(this), tab_idx, title);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_tab_title");

        public string get_tab_title(int tab_idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_4, Object.GetPtr(this), tab_idx);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_tab_icon");

        public void set_tab_icon(int tab_idx, Texture icon)
        {
            NativeCalls.godot_icall_2_115(method_bind_5, Object.GetPtr(this), tab_idx, Object.GetPtr(icon));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_tab_icon");

        public Texture get_tab_icon(int tab_idx)
        {
            return NativeCalls.godot_icall_1_112(method_bind_6, Object.GetPtr(this), tab_idx);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_tab");

        public void remove_tab(int tab_idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_7, Object.GetPtr(this), tab_idx);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_tab");

        public void add_tab(string title, Texture icon)
        {
            NativeCalls.godot_icall_2_65(method_bind_8, Object.GetPtr(this), title, Object.GetPtr(icon));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_tab_align");

        public void set_tab_align(int align)
        {
            NativeCalls.godot_icall_1_4(method_bind_9, Object.GetPtr(this), align);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_tab_align");

        public int get_tab_align()
        {
            return NativeCalls.godot_icall_0_0(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "ensure_tab_visible");

        public void ensure_tab_visible(int idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_11, Object.GetPtr(this), idx);
        }
    }
}
