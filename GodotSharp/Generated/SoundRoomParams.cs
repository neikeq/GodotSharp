using System;

namespace GodotEngine
{
    public class SoundRoomParams : Node
    {
        private const string nativeName = "SoundRoomParams";

        public SoundRoomParams() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_SoundRoomParams_Ctor(this);
        }

        internal SoundRoomParams(bool memoryOwn) : base(memoryOwn) {}

        ~SoundRoomParams()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_param");

        public void set_param(int param, float @value)
        {
            NativeCalls.godot_icall_2_36(method_bind_0, Object.GetPtr(this), param, @value);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_param");

        public float get_param(int param)
        {
            return NativeCalls.godot_icall_1_3(method_bind_1, Object.GetPtr(this), param);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_reverb_mode");

        public void set_reverb_mode(int reverb_mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), reverb_mode);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_reverb_mode");

        public int get_reverb_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_force_params_to_all_sources");

        public void set_force_params_to_all_sources(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_4, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_forcing_params_to_all_sources");

        public bool is_forcing_params_to_all_sources()
        {
            return NativeCalls.godot_icall_0_14(method_bind_5, Object.GetPtr(this));
        }
    }
}
