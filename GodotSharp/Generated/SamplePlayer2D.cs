using System;

namespace GodotEngine
{
    /// <summary>
    /// Sample player for positional 2D Sound. Plays sound samples positionally, left and right depending on the distance/place on the screen.
    /// </summary>
    public class SamplePlayer2D : SoundPlayer2D
    {
        /// <summary>
        /// Value returned if the voice or sample are invalid.
        /// </summary>
        public const int INVALID_VOICE = -1;
        /// <summary>
        /// Default voice for the play method. Corresponds to the first voice following the last used voice.
        /// </summary>
        public const int NEXT_VOICE = -2;

        private const string nativeName = "SamplePlayer2D";

        public SamplePlayer2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_SamplePlayer2D_Ctor(this);
        }

        internal SamplePlayer2D(bool memoryOwn) : base(memoryOwn) {}

        ~SamplePlayer2D()
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

        /// <summary>
        /// Set the sample library for the player.
        /// </summary>
        public void set_sample_library(SampleLibrary library)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(library));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_sample_library");

        /// <summary>
        /// Return the sample library used by the player.
        /// </summary>
        public SampleLibrary get_sample_library()
        {
            return NativeCalls.godot_icall_0_415(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_polyphony");

        /// <summary>
        /// Set the polyphony of the player (maximum amount of simultaneous voices).
        /// </summary>
        public void set_polyphony(int max_voices)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), max_voices);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_polyphony");

        /// <summary>
        /// Return the polyphony of the player.
        /// </summary>
        public int get_polyphony()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "play");

        /// <summary>
        /// Play a sample. An internal polyphony ID can optionally be passed, or defaults to NEXT_VOICE.
        /// Return a voice ID which can be used to modify the voice parameters, or INVALID_VOICE if the voice or sample are invalid.
        /// </summary>
        public int play(string sample, int voice = -2)
        {
            return NativeCalls.godot_icall_2_253(method_bind_4, Object.GetPtr(this), sample, voice);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_set_pitch_scale");

        /// <summary>
        /// Change the pitch scale of a currently playing voice.
        /// </summary>
        public void voice_set_pitch_scale(int voice, float ratio)
        {
            NativeCalls.godot_icall_2_36(method_bind_5, Object.GetPtr(this), voice, ratio);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_set_volume_scale_db");

        /// <summary>
        /// Change the volume scale (in dB) of a currently playing voice.
        /// </summary>
        public void voice_set_volume_scale_db(int voice, float db)
        {
            NativeCalls.godot_icall_2_36(method_bind_6, Object.GetPtr(this), voice, db);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_voice_active");

        /// <summary>
        /// Return whether a voice is still active or has stopped playing.
        /// </summary>
        public bool is_voice_active(int voice)
        {
            return NativeCalls.godot_icall_1_33(method_bind_7, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "stop_voice");

        /// <summary>
        /// Stop a given voice.
        /// </summary>
        public void stop_voice(int voice)
        {
            NativeCalls.godot_icall_1_4(method_bind_8, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "stop_all");

        /// <summary>
        /// Stop all playing voices.
        /// </summary>
        public void stop_all()
        {
            NativeCalls.godot_icall_0_7(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_random_pitch_scale");

        /// <summary>
        /// Set the amplitude for random pitch scale variations. If different from zero, the pitch scale will vary randomly around 1.0 in a range defined by val.
        /// The actual pitch scale will be, with "variation" ranging from -val to val:
        /// * variation > 0: 1.0 + variation
        /// * variation < 0: 1.0/(1.0 - variation)
        /// </summary>
        public void set_random_pitch_scale(float val)
        {
            NativeCalls.godot_icall_1_45(method_bind_10, Object.GetPtr(this), val);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_random_pitch_scale");

        /// <summary>
        /// Return the amplitude used for random pitch scale variations.
        /// </summary>
        public float get_random_pitch_scale()
        {
            return NativeCalls.godot_icall_0_46(method_bind_11, Object.GetPtr(this));
        }
    }
}
