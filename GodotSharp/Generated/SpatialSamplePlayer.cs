using System;

namespace GodotEngine
{
    public class SpatialSamplePlayer : SpatialPlayer
    {
        public const int INVALID_VOICE = -1;
        public const int NEXT_VOICE = -2;

        private const string nativeName = "SpatialSamplePlayer";

        public SpatialSamplePlayer() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_SpatialSamplePlayer_Ctor(this);
        }

        internal SpatialSamplePlayer(bool memoryOwn) : base(memoryOwn) {}

        ~SpatialSamplePlayer()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_sample_library");

        public void set_sample_library(SampleLibrary library)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(library));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_sample_library");

        public SampleLibrary get_sample_library()
        {
            return NativeCalls.godot_icall_0_415(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_polyphony");

        public void set_polyphony(int voices)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), voices);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_polyphony");

        public int get_polyphony()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "play");

        public int play(string sample, int voice = -2)
        {
            return NativeCalls.godot_icall_2_253(method_bind_4, Object.GetPtr(this), sample, voice);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_set_pitch_scale");

        public void voice_set_pitch_scale(int voice, float ratio)
        {
            NativeCalls.godot_icall_2_36(method_bind_5, Object.GetPtr(this), voice, ratio);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_set_volume_scale_db");

        public void voice_set_volume_scale_db(int voice, float db)
        {
            NativeCalls.godot_icall_2_36(method_bind_6, Object.GetPtr(this), voice, db);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_voice_active");

        public bool is_voice_active(int voice)
        {
            return NativeCalls.godot_icall_1_33(method_bind_7, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "stop_voice");

        public void stop_voice(int voice)
        {
            NativeCalls.godot_icall_1_4(method_bind_8, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "stop_all");

        public void stop_all()
        {
            NativeCalls.godot_icall_0_7(method_bind_9, Object.GetPtr(this));
        }
    }
}
