using System;

namespace GodotEngine
{
    public class AudioStreamPlayback : Reference
    {
        private const string nativeName = "AudioStreamPlayback";

        internal AudioStreamPlayback() {}

        internal AudioStreamPlayback(bool memoryOwn) : base(memoryOwn) {}

        ~AudioStreamPlayback()
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
                    NativeCalls.godot_icall_AudioStreamPlayback_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "play");

        public void play(float from_pos_sec = 0)
        {
            NativeCalls.godot_icall_1_45(method_bind_0, Object.GetPtr(this), from_pos_sec);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "stop");

        public void stop()
        {
            NativeCalls.godot_icall_0_7(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_playing");

        public bool is_playing()
        {
            return NativeCalls.godot_icall_0_14(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_loop");

        public void set_loop(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_3, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_loop");

        public bool has_loop()
        {
            return NativeCalls.godot_icall_0_14(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_loop_count");

        public int get_loop_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "seek_pos");

        public void seek_pos(float pos)
        {
            NativeCalls.godot_icall_1_45(method_bind_6, Object.GetPtr(this), pos);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pos");

        public float get_pos()
        {
            return NativeCalls.godot_icall_0_46(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_length");

        public float get_length()
        {
            return NativeCalls.godot_icall_0_46(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_channels");

        public int get_channels()
        {
            return NativeCalls.godot_icall_0_0(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mix_rate");

        public int get_mix_rate()
        {
            return NativeCalls.godot_icall_0_0(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_minimum_buffer_size");

        public int get_minimum_buffer_size()
        {
            return NativeCalls.godot_icall_0_0(method_bind_11, Object.GetPtr(this));
        }
    }
}
