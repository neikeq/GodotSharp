using System;

namespace GodotEngine
{
    public class SpatialStreamPlayer : SpatialPlayer
    {
        private const string nativeName = "SpatialStreamPlayer";

        public SpatialStreamPlayer() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_SpatialStreamPlayer_Ctor(this);
        }

        internal SpatialStreamPlayer(bool memoryOwn) : base(memoryOwn) {}

        ~SpatialStreamPlayer()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_stream");

        public void set_stream(AudioStream stream)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(stream));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stream");

        public AudioStream get_stream()
        {
            return NativeCalls.godot_icall_0_464(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "play");

        public void play(float offset = 0)
        {
            NativeCalls.godot_icall_1_45(method_bind_2, Object.GetPtr(this), offset);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "stop");

        public void stop()
        {
            NativeCalls.godot_icall_0_7(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_playing");

        public bool is_playing()
        {
            return NativeCalls.godot_icall_0_14(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_paused");

        public void set_paused(bool paused)
        {
            NativeCalls.godot_icall_1_13(method_bind_5, Object.GetPtr(this), paused);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_paused");

        public bool is_paused()
        {
            return NativeCalls.godot_icall_0_14(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_loop");

        public void set_loop(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_7, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_loop");

        public bool has_loop()
        {
            return NativeCalls.godot_icall_0_14(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_volume");

        public void set_volume(float volume)
        {
            NativeCalls.godot_icall_1_45(method_bind_9, Object.GetPtr(this), volume);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_volume");

        public float get_volume()
        {
            return NativeCalls.godot_icall_0_46(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_volume_db");

        public void set_volume_db(float db)
        {
            NativeCalls.godot_icall_1_45(method_bind_11, Object.GetPtr(this), db);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_volume_db");

        public float get_volume_db()
        {
            return NativeCalls.godot_icall_0_46(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_buffering_msec");

        public void set_buffering_msec(int msec)
        {
            NativeCalls.godot_icall_1_4(method_bind_13, Object.GetPtr(this), msec);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_buffering_msec");

        public int get_buffering_msec()
        {
            return NativeCalls.godot_icall_0_0(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_loop_restart_time");

        public void set_loop_restart_time(float secs)
        {
            NativeCalls.godot_icall_1_45(method_bind_15, Object.GetPtr(this), secs);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_loop_restart_time");

        public float get_loop_restart_time()
        {
            return NativeCalls.godot_icall_0_46(method_bind_16, Object.GetPtr(this));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stream_name");

        public string get_stream_name()
        {
            return NativeCalls.godot_icall_0_19(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_loop_count");

        public int get_loop_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_18, Object.GetPtr(this));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pos");

        public float get_pos()
        {
            return NativeCalls.godot_icall_0_46(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "seek_pos");

        public void seek_pos(float time)
        {
            NativeCalls.godot_icall_1_45(method_bind_20, Object.GetPtr(this), time);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_autoplay");

        public void set_autoplay(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_21, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_autoplay");

        public bool has_autoplay()
        {
            return NativeCalls.godot_icall_0_14(method_bind_22, Object.GetPtr(this));
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_length");

        public float get_length()
        {
            return NativeCalls.godot_icall_0_46(method_bind_23, Object.GetPtr(this));
        }
    }
}
