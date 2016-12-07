using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Group of [Button]. All direct and indirect children buttons become radios. Only one allows being pressed.
    /// </summary>
    public class ButtonGroup : BoxContainer
    {
        private const string nativeName = "ButtonGroup";

        public ButtonGroup() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ButtonGroup_Ctor(this);
        }

        internal ButtonGroup(bool memoryOwn) : base(memoryOwn) {}

        ~ButtonGroup()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pressed_button");

        /// <summary>
        /// Return the pressed button.
        /// </summary>
        public BaseButton get_pressed_button()
        {
            return NativeCalls.godot_icall_0_117(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pressed_button_index");

        /// <summary>
        /// Return the index of the pressed button (by tree order).
        /// </summary>
        public int get_pressed_button_index()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_focused_button");

        /// <summary>
        /// Return the focused button.
        /// </summary>
        public BaseButton get_focused_button()
        {
            return NativeCalls.godot_icall_0_117(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_button_list");

        /// <summary>
        /// Return the list of all the buttons in the group.
        /// </summary>
        public List<object> get_button_list()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_3, Object.GetPtr(this));
            return new List<object>(ret);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_pressed_button");

        /// <summary>
        /// Set the button to be pressed.
        /// </summary>
        public void set_pressed_button(BaseButton button)
        {
            NativeCalls.godot_icall_1_20(method_bind_4, Object.GetPtr(this), Object.GetPtr(button));
        }
    }
}
