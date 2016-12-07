using System;

namespace GodotEngine
{
    public class TouchScreenButton : Node2D
    {
        private const string nativeName = "TouchScreenButton";

        public TouchScreenButton() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_TouchScreenButton_Ctor(this);
        }

        internal TouchScreenButton(bool memoryOwn) : base(memoryOwn) {}

        ~TouchScreenButton()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_texture");

        public void set_texture(Object texture)
        {
            NativeCalls.godot_icall_1_20(method_bind_0, Object.GetPtr(this), Object.GetPtr(texture));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_texture");

        public Object get_texture()
        {
            return NativeCalls.godot_icall_0_12(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_texture_pressed");

        public void set_texture_pressed(Object texture_pressed)
        {
            NativeCalls.godot_icall_1_20(method_bind_2, Object.GetPtr(this), Object.GetPtr(texture_pressed));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_texture_pressed");

        public Object get_texture_pressed()
        {
            return NativeCalls.godot_icall_0_12(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bitmask");

        public void set_bitmask(Object bitmask)
        {
            NativeCalls.godot_icall_1_20(method_bind_4, Object.GetPtr(this), Object.GetPtr(bitmask));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bitmask");

        public Object get_bitmask()
        {
            return NativeCalls.godot_icall_0_12(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_action");

        public void set_action(string action)
        {
            NativeCalls.godot_icall_1_18(method_bind_6, Object.GetPtr(this), action);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_action");

        public string get_action()
        {
            return NativeCalls.godot_icall_0_19(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_visibility_mode");

        public void set_visibility_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_8, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_visibility_mode");

        public int get_visibility_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_passby_press");

        public void set_passby_press(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_10, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_passby_press_enabled");

        public bool is_passby_press_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_pressed");

        public bool is_pressed()
        {
            return NativeCalls.godot_icall_0_14(method_bind_12, Object.GetPtr(this));
        }
    }
}
