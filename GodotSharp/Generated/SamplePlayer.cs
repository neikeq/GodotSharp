using System;

namespace GodotEngine
{
    /// <summary>
    /// SamplePlayer is a [Node] meant for simple sample playback. A library of samples is loaded and played back "as is", without positioning or anything.
    /// </summary>
    public class SamplePlayer : Node
    {
        /// <summary>
        /// Filter is disabled for voice.
        /// </summary>
        public const int FILTER_NONE = 0;
        /// <summary>
        /// Low-pass filter is used for voice.
        /// </summary>
        public const int FILTER_LOWPASS = 1;
        /// <summary>
        /// Band-pass filter is used for voice.
        /// </summary>
        public const int FILTER_BANDPASS = 2;
        /// <summary>
        /// High-pass filter is used for voice.
        /// </summary>
        public const int FILTER_HIPASS = 3;
        /// <summary>
        /// Notch (band reject) filter is used for voice.
        /// </summary>
        public const int FILTER_NOTCH = 4;
        /// <summary>
        /// Peak (exclusive band) filter is used for voice.
        /// </summary>
        public const int FILTER_PEAK = 5;
        /// <summary>
        /// Band-limit filter is used for voice, in this case resonance is the high-pass cutoff. A band-limit filter has a different frequency response than a notch filter, but otherwise both are band-rejecting filters.
        /// </summary>
        public const int FILTER_BANDLIMIT = 6;
        /// <summary>
        /// Low-shelf filter is used for voice.
        /// </summary>
        public const int FILTER_LOW_SHELF = 7;
        /// <summary>
        /// High-shelf filter is used for voice.
        /// </summary>
        public const int FILTER_HIGH_SHELF = 8;
        /// <summary>
        /// Small reverberation room (house room).
        /// </summary>
        public const int REVERB_SMALL = 0;
        /// <summary>
        /// Medium reverberation room (street)
        /// </summary>
        public const int REVERB_MEDIUM = 1;
        /// <summary>
        /// Large reverberation room (theatre)
        /// </summary>
        public const int REVERB_LARGE = 2;
        /// <summary>
        /// Huge reverberation room (cathedral, warehouse).
        /// </summary>
        public const int REVERB_HALL = 3;
        /// <summary>
        /// Value returned if the voice ID is invalid.
        /// </summary>
        public const int INVALID_VOICE_ID = -1;

        private const string nativeName = "SamplePlayer";

        public SamplePlayer() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_SamplePlayer_Ctor(this);
        }

        internal SamplePlayer(bool memoryOwn) : base(memoryOwn) {}

        ~SamplePlayer()
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
        /// Play a sample referenced by its name.
        /// Optionally, the playback can be made "unique" to force stopping all other samples currently played. The voices allocated for playback will then be returned.
        /// </summary>
        public int play(string name, bool unique = false)
        {
            return NativeCalls.godot_icall_2_416(method_bind_4, Object.GetPtr(this), name, unique);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "stop");

        /// <summary>
        /// Stop a given voice.
        /// </summary>
        public void stop(int voice)
        {
            NativeCalls.godot_icall_1_4(method_bind_5, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "stop_all");

        /// <summary>
        /// Stop all playing voices.
        /// </summary>
        public void stop_all()
        {
            NativeCalls.godot_icall_0_7(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_mix_rate");

        /// <summary>
        /// Set the mix rate (in Hz) of a given voice.
        /// </summary>
        public void set_mix_rate(int voice, int hz)
        {
            NativeCalls.godot_icall_2_5(method_bind_7, Object.GetPtr(this), voice, hz);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_pitch_scale");

        /// <summary>
        /// Set the pitch scale of a given voice. A ratio of 1.0 is the normal scale.
        /// </summary>
        public void set_pitch_scale(int voice, float ratio)
        {
            NativeCalls.godot_icall_2_36(method_bind_8, Object.GetPtr(this), voice, ratio);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_volume");

        /// <summary>
        /// Set the volume of a given voice using a linear scale.
        /// The "volume" argument should be a positive factor ranging from 0.0 (mute) up to 16.0 (i.e. 24 dB).
        /// A factor of 1.0 means that the voice will be played at normal system volume. Factors above 1.0 might be limited by the platform's audio output.
        /// </summary>
        public void set_volume(int voice, float volume)
        {
            NativeCalls.godot_icall_2_36(method_bind_9, Object.GetPtr(this), voice, volume);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_volume_db");

        /// <summary>
        /// Set the volume of a given voice in dB.
        /// The "dB" argument can range from -80 to 24 dB, 0 dB being the maximum volume. Every 6 dB (resp. -6 dB), the volume is increased (resp. reduced) by half.
        /// </summary>
        public void set_volume_db(int voice, float db)
        {
            NativeCalls.godot_icall_2_36(method_bind_10, Object.GetPtr(this), voice, db);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_pan");

        /// <summary>
        /// Set the panning of a voice. Panning goes from -1.0 (left) to +1.0 (right).
        /// Optionally, for hardware than support 3D sound, one can also set depth and height (also in range -1.0 to +1.0).
        /// </summary>
        public void set_pan(int voice, float pan, float depth = 0, float height = 0)
        {
            NativeCalls.godot_icall_4_259(method_bind_11, Object.GetPtr(this), voice, pan, depth, height);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_filter");

        /// <summary>
        /// Set the filter for a given voice, using the given type (see FILTER_* constants), cutoff frequency (from 20 to 16,384 Hz) and resonance (from 0 to 4.0).
        /// Optionally, a gain can also be given (from 0 to 2.0).
        /// </summary>
        public void set_filter(int voice, int type, float cutoff_hz, float resonance, float gain = 0)
        {
            NativeCalls.godot_icall_5_417(method_bind_12, Object.GetPtr(this), voice, type, cutoff_hz, resonance, gain);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_chorus");

        /// <summary>
        /// Set the chorus send level of a voice (from 0 to 1.0). For setting chorus parameters, see [AudioServer].
        /// </summary>
        public void set_chorus(int voice, float send)
        {
            NativeCalls.godot_icall_2_36(method_bind_13, Object.GetPtr(this), voice, send);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_reverb");

        /// <summary>
        /// Set the reverberation type (see REVERB_* constants) and send level (from 0 to 1.0) of a voice.
        /// </summary>
        public void set_reverb(int voice, int room_type, float send)
        {
            NativeCalls.godot_icall_3_38(method_bind_14, Object.GetPtr(this), voice, room_type, send);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mix_rate");

        /// <summary>
        /// Return the current mix rate for a given voice.
        /// </summary>
        public int get_mix_rate(int voice)
        {
            return NativeCalls.godot_icall_1_28(method_bind_15, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pitch_scale");

        /// <summary>
        /// Return the current pitch scale for a given voice.
        /// </summary>
        public float get_pitch_scale(int voice)
        {
            return NativeCalls.godot_icall_1_3(method_bind_16, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_volume");

        /// <summary>
        /// Return the current volume (on a linear scale) for a given voice.
        /// </summary>
        public float get_volume(int voice)
        {
            return NativeCalls.godot_icall_1_3(method_bind_17, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_volume_db");

        /// <summary>
        /// Return the current volume (in dB) for a given voice.
        /// </summary>
        public float get_volume_db(int voice)
        {
            return NativeCalls.godot_icall_1_3(method_bind_18, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pan");

        /// <summary>
        /// Return the current panning for a given voice.
        /// </summary>
        public float get_pan(int voice)
        {
            return NativeCalls.godot_icall_1_3(method_bind_19, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pan_depth");

        /// <summary>
        /// Return the current pan depth for a given voice.
        /// </summary>
        public float get_pan_depth(int voice)
        {
            return NativeCalls.godot_icall_1_3(method_bind_20, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pan_height");

        /// <summary>
        /// Return the current pan height for a given voice.
        /// </summary>
        public float get_pan_height(int voice)
        {
            return NativeCalls.godot_icall_1_3(method_bind_21, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_filter_type");

        /// <summary>
        /// Return the current filter type in use (see FILTER_* constants) for a given voice.
        /// </summary>
        public int get_filter_type(int voice)
        {
            return NativeCalls.godot_icall_1_28(method_bind_22, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_filter_cutoff");

        /// <summary>
        /// Return the current filter cutoff frequency for a given voice.
        /// </summary>
        public float get_filter_cutoff(int voice)
        {
            return NativeCalls.godot_icall_1_3(method_bind_23, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_filter_resonance");

        /// <summary>
        /// Return the current filter resonance for a given voice.
        /// </summary>
        public float get_filter_resonance(int voice)
        {
            return NativeCalls.godot_icall_1_3(method_bind_24, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_filter_gain");

        /// <summary>
        /// Return the current filter gain for a given voice.
        /// </summary>
        public float get_filter_gain(int voice)
        {
            return NativeCalls.godot_icall_1_3(method_bind_25, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_chorus");

        /// <summary>
        /// Return the current chorus send level for a given voice.
        /// </summary>
        public float get_chorus(int voice)
        {
            return NativeCalls.godot_icall_1_3(method_bind_26, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_reverb_room");

        /// <summary>
        /// Return the current reverberation room type for a given voice (see REVERB_* enum).
        /// </summary>
        public int get_reverb_room(int voice)
        {
            return NativeCalls.godot_icall_1_28(method_bind_27, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_reverb");

        /// <summary>
        /// Return the current reverberation send level for a given voice.
        /// </summary>
        public float get_reverb(int voice)
        {
            return NativeCalls.godot_icall_1_3(method_bind_28, Object.GetPtr(this), voice);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_default_pitch_scale");

        /// <summary>
        /// Set the default pitch scale of the player. A ratio of 1.0 is the normal scale.
        /// </summary>
        public void set_default_pitch_scale(float ratio)
        {
            NativeCalls.godot_icall_1_45(method_bind_29, Object.GetPtr(this), ratio);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_default_volume");

        /// <summary>
        /// Set the default volume of the player using a linear scale.
        /// The "volume" argument should be a positive factor ranging from 0.0 (mute) up to 16.0 (i.e. 24 dB).
        /// A factor of 1.0 means that the voice will be played at normal system volume. Factors above 1.0 might be limited by the platform's audio output.
        /// </summary>
        public void set_default_volume(float volume)
        {
            NativeCalls.godot_icall_1_45(method_bind_30, Object.GetPtr(this), volume);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_default_volume_db");

        /// <summary>
        /// Set the default volume of the player in dB.
        /// The "dB" argument can range from -80 to 24 dB, 0 dB being the maximum volume. Every 6 dB (resp. -6 dB), the volume is increased (resp. reduced) by half.
        /// </summary>
        public void set_default_volume_db(float db)
        {
            NativeCalls.godot_icall_1_45(method_bind_31, Object.GetPtr(this), db);
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_default_pan");

        /// <summary>
        /// Set the default panning of the player. Panning goes from -1.0 (left) to +1.0 (right).
        /// Optionally, for hardware than support 3D sound, one can also set depth and height (also in range -1.0 to +1.0).
        /// </summary>
        public void set_default_pan(float pan, float depth = 0, float height = 0)
        {
            NativeCalls.godot_icall_3_121(method_bind_32, Object.GetPtr(this), pan, depth, height);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_default_filter");

        /// <summary>
        /// Set the default filter for the player, using the given type (see FILTER_* constants), cutoff frequency (from 20 to 16,384 Hz) and resonance (from 0 to 4.0).
        /// Optionally, a gain can also be given (from 0 to 2.0).
        /// </summary>
        public void set_default_filter(int type, float cutoff_hz, float resonance, float gain = 0)
        {
            NativeCalls.godot_icall_4_259(method_bind_33, Object.GetPtr(this), type, cutoff_hz, resonance, gain);
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_default_chorus");

        /// <summary>
        /// Set the default chorus send level of the player (from 0 to 1.0). For setting chorus parameters, see [AudioServer].
        /// </summary>
        public void set_default_chorus(float send)
        {
            NativeCalls.godot_icall_1_45(method_bind_34, Object.GetPtr(this), send);
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_default_reverb");

        /// <summary>
        /// Set the default reverberation type (see REVERB_* constants) and send level (from 0 to 1.0) of the player.
        /// </summary>
        public void set_default_reverb(int room_type, float send)
        {
            NativeCalls.godot_icall_2_36(method_bind_35, Object.GetPtr(this), room_type, send);
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_pitch_scale");

        /// <summary>
        /// Return the default pitch scale of the player.
        /// </summary>
        public float get_default_pitch_scale()
        {
            return NativeCalls.godot_icall_0_46(method_bind_36, Object.GetPtr(this));
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_volume");

        /// <summary>
        /// Return the default volume (on a linear scale) of the player.
        /// </summary>
        public float get_default_volume()
        {
            return NativeCalls.godot_icall_0_46(method_bind_37, Object.GetPtr(this));
        }

        private IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_volume_db");

        /// <summary>
        /// Return the default volume (in dB) of the player.
        /// </summary>
        public float get_default_volume_db()
        {
            return NativeCalls.godot_icall_0_46(method_bind_38, Object.GetPtr(this));
        }

        private IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_pan");

        /// <summary>
        /// Return the default panning of the player.
        /// </summary>
        public float get_default_pan()
        {
            return NativeCalls.godot_icall_0_46(method_bind_39, Object.GetPtr(this));
        }

        private IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_pan_depth");

        /// <summary>
        /// Return the default pan depth of the player.
        /// </summary>
        public float get_default_pan_depth()
        {
            return NativeCalls.godot_icall_0_46(method_bind_40, Object.GetPtr(this));
        }

        private IntPtr method_bind_41 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_pan_height");

        /// <summary>
        /// Return the default pan height of the player.
        /// </summary>
        public float get_default_pan_height()
        {
            return NativeCalls.godot_icall_0_46(method_bind_41, Object.GetPtr(this));
        }

        private IntPtr method_bind_42 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_filter_type");

        /// <summary>
        /// Return the default filter type in use (see FILTER_* constants) for the player.
        /// </summary>
        public int get_default_filter_type()
        {
            return NativeCalls.godot_icall_0_0(method_bind_42, Object.GetPtr(this));
        }

        private IntPtr method_bind_43 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_filter_cutoff");

        /// <summary>
        /// Return the default filter cutoff frequency of the player.
        /// </summary>
        public float get_default_filter_cutoff()
        {
            return NativeCalls.godot_icall_0_46(method_bind_43, Object.GetPtr(this));
        }

        private IntPtr method_bind_44 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_filter_resonance");

        /// <summary>
        /// Return the default filter resonance of the player.
        /// </summary>
        public float get_default_filter_resonance()
        {
            return NativeCalls.godot_icall_0_46(method_bind_44, Object.GetPtr(this));
        }

        private IntPtr method_bind_45 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_filter_gain");

        /// <summary>
        /// Return the default filter gain of the player.
        /// </summary>
        public float get_default_filter_gain()
        {
            return NativeCalls.godot_icall_0_46(method_bind_45, Object.GetPtr(this));
        }

        private IntPtr method_bind_46 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_chorus");

        /// <summary>
        /// Return the default chorus send level of the player.
        /// </summary>
        public float get_default_chorus()
        {
            return NativeCalls.godot_icall_0_46(method_bind_46, Object.GetPtr(this));
        }

        private IntPtr method_bind_47 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_reverb_room");

        /// <summary>
        /// Return the default reverberation room type of the player (see REVERB_* enum).
        /// </summary>
        public int get_default_reverb_room()
        {
            return NativeCalls.godot_icall_0_0(method_bind_47, Object.GetPtr(this));
        }

        private IntPtr method_bind_48 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_reverb");

        /// <summary>
        /// Return the default reverberation send level of the player.
        /// </summary>
        public float get_default_reverb()
        {
            return NativeCalls.godot_icall_0_46(method_bind_48, Object.GetPtr(this));
        }

        private IntPtr method_bind_49 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_active");

        /// <summary>
        /// Return whether the player is currently active.
        /// </summary>
        public bool is_active()
        {
            return NativeCalls.godot_icall_0_14(method_bind_49, Object.GetPtr(this));
        }

        private IntPtr method_bind_50 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_voice_active");

        /// <summary>
        /// Return whether the given voice is currently active.
        /// </summary>
        public bool is_voice_active(int voice)
        {
            return NativeCalls.godot_icall_1_33(method_bind_50, Object.GetPtr(this), voice);
        }
    }
}
