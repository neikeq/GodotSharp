using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// AudioServer is a low level server interface for audio access. It is in charge of creating sample data (playable audio) as well as its playback via a voice interface.
    /// </summary>
    public static class AudioServer
    {
        /// <summary>
        /// Sample format is 8 bits, signed.
        /// </summary>
        public const int SAMPLE_FORMAT_PCM8 = 0;
        /// <summary>
        /// Sample format is 16 bits, little-endian, signed.
        /// </summary>
        public const int SAMPLE_FORMAT_PCM16 = 1;
        /// <summary>
        /// Sample format is IMA-ADPCM compressed.
        /// </summary>
        public const int SAMPLE_FORMAT_IMA_ADPCM = 2;
        /// <summary>
        /// Sample does not loop.
        /// </summary>
        public const int SAMPLE_LOOP_NONE = 0;
        /// <summary>
        /// Sample loops in forward mode.
        /// </summary>
        public const int SAMPLE_LOOP_FORWARD = 1;
        /// <summary>
        /// Sample loops in a bidirectional way.
        /// </summary>
        public const int SAMPLE_LOOP_PING_PONG = 2;
        /// <summary>
        /// Filter is disabled.
        /// </summary>
        public const int FILTER_NONE = 0;
        /// <summary>
        /// Filter is a resonant lowpass.
        /// </summary>
        public const int FILTER_LOWPASS = 1;
        /// <summary>
        /// Filter is a resonant bandpass.
        /// </summary>
        public const int FILTER_BANDPASS = 2;
        /// <summary>
        /// Filter is a resonant highpass.
        /// </summary>
        public const int FILTER_HIPASS = 3;
        /// <summary>
        /// Filter is a notch (band reject).
        /// </summary>
        public const int FILTER_NOTCH = 4;
        /// <summary>
        /// Filter is a bandlimit (resonance used as highpass).
        /// </summary>
        public const int FILTER_BANDLIMIT = 6;
        /// <summary>
        /// Small reverb room (closet, bathroom, etc).
        /// </summary>
        public const int REVERB_SMALL = 0;
        /// <summary>
        /// Medium reverb room (living room)
        /// </summary>
        public const int REVERB_MEDIUM = 1;
        /// <summary>
        /// Large reverb room (warehouse).
        /// </summary>
        public const int REVERB_LARGE = 2;
        /// <summary>
        /// Large reverb room with long decay.
        /// </summary>
        public const int REVERB_HALL = 3;

        private const string nativeName = "AudioServer";
        internal static IntPtr ptr = NativeCalls.godot_icall_AudioServer_get_singleton();

        private static IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_create");

        /// <summary>
        /// Create an audio sample, return a [RID] referencing it. The sample will be created with a given format (from the SAMPLE_FORMAT_* enum), a total length (in samples, not bytes), in either stereo or mono.
        /// Even if a stereo sample consists of a left sample and a right sample, it still counts as one sample for length purposes.
        /// </summary>
        public static RID sample_create(int format, bool stereo, int length)
        {
            IntPtr ret = NativeCalls.godot_icall_3_83(method_bind_0, ptr, format, stereo, length);
            return new RID(ret);
        }

        private static IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_set_description");

        /// <summary>
        /// Set the description of an audio sample. Mainly used for organization.
        /// </summary>
        public static void sample_set_description(RID sample, string description)
        {
            NativeCalls.godot_icall_2_84(method_bind_1, ptr, RID.GetPtr(sample), description);
        }

        private static IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_get_description");

        /// <summary>
        /// Return the description of an audio sample. Mainly used for organization.
        /// </summary>
        public static string sample_get_description(RID sample)
        {
            return NativeCalls.godot_icall_1_85(method_bind_2, ptr, RID.GetPtr(sample));
        }

        private static IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_get_format");

        /// <summary>
        /// Return the format of the audio sample, in the form of the SAMPLE_FORMAT_* enum.
        /// </summary>
        public static int sample_get_format(RID sample)
        {
            return NativeCalls.godot_icall_1_86(method_bind_3, ptr, RID.GetPtr(sample));
        }

        private static IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_is_stereo");

        /// <summary>
        /// Return whether the sample is stereo (2 channels).
        /// </summary>
        public static bool sample_is_stereo(RID sample)
        {
            return NativeCalls.godot_icall_1_87(method_bind_4, ptr, RID.GetPtr(sample));
        }

        private static IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_get_length");

        /// <summary>
        /// Return the length in samples (not bytes) of the audio sample. Even if a stereo sample consists of a left sample and a right sample, it still counts as one sample for length purposes.
        /// </summary>
        public static int sample_get_length(RID sample)
        {
            return NativeCalls.godot_icall_1_86(method_bind_5, ptr, RID.GetPtr(sample));
        }

        private static IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_set_signed_data");

        /// <summary>
        /// Set the sample data for a given sample as an array of floats. The length must be equal to the sample length or an error will be produced.
        /// For this method, a stereo sample is made from two samples. Thus, in case of a stereo sample, the array length must be twice the length returned by [method sample_get_length].
        /// Trying to alter a SAMPLE_FORMAT_IMA_ADPCM sample is not supported. It will throw an error to the console, but will not alter the sample data.
        /// </summary>
        public static void sample_set_signed_data(RID sample, List<float> data)
        {
            NativeCalls.godot_icall_2_88(method_bind_6, ptr, RID.GetPtr(sample), data.ToArray());
        }

        private static IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_set_data");

        /// <summary>
        /// Set the sample data for a given sample as an array of bytes. The length must be equal to the sample length expected in bytes or an error will be produced. The byte length can be calculated as follows:
        /// Get the sample length ([method sample_get_length]).
        /// If the sample format is SAMPLE_FORMAT_PCM16, multiply it by 2.
        /// If the sample format is SAMPLE_FORMAT_IMA_ADPCM, divide it by 2 (rounding any fraction up), then add 4.
        /// If the sample is stereo ([method sample_is_stereo]), multiply it by 2.
        /// </summary>
        public static void sample_set_data(RID sample, List<byte> data)
        {
            NativeCalls.godot_icall_2_89(method_bind_7, ptr, RID.GetPtr(sample), data.ToArray());
        }

        private static IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_get_data");

        /// <summary>
        /// Return the sample data as an array of bytes. The length will be the expected length in bytes.
        /// </summary>
        public static List<byte> sample_get_data(RID sample)
        {
            byte[] ret = NativeCalls.godot_icall_1_90(method_bind_8, ptr, RID.GetPtr(sample));
            return new List<byte>(ret);
        }

        private static IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_set_mix_rate");

        /// <summary>
        /// Change the default mix rate of a given sample.
        /// </summary>
        public static void sample_set_mix_rate(RID sample, int mix_rate)
        {
            NativeCalls.godot_icall_2_91(method_bind_9, ptr, RID.GetPtr(sample), mix_rate);
        }

        private static IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_get_mix_rate");

        /// <summary>
        /// Return the mix rate of the given sample.
        /// </summary>
        public static int sample_get_mix_rate(RID sample)
        {
            return NativeCalls.godot_icall_1_86(method_bind_10, ptr, RID.GetPtr(sample));
        }

        private static IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_set_loop_format");

        /// <summary>
        /// Set the loop format for a sample from the SAMPLE_LOOP_* enum. As a warning, Ping Pong loops may not be available on some hardware-mixing platforms.
        /// </summary>
        public static void sample_set_loop_format(RID sample, int loop_format)
        {
            NativeCalls.godot_icall_2_91(method_bind_11, ptr, RID.GetPtr(sample), loop_format);
        }

        private static IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_get_loop_format");

        /// <summary>
        /// Return the loop format for a sample, as a value from the SAMPLE_LOOP_* enum.
        /// </summary>
        public static int sample_get_loop_format(RID sample)
        {
            return NativeCalls.godot_icall_1_86(method_bind_12, ptr, RID.GetPtr(sample));
        }

        private static IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_set_loop_begin");

        /// <summary>
        /// Set the initial loop point of a sample. Only has effect if sample loop is enabled. See [method sample_set_loop_format].
        /// </summary>
        public static void sample_set_loop_begin(RID sample, int pos)
        {
            NativeCalls.godot_icall_2_91(method_bind_13, ptr, RID.GetPtr(sample), pos);
        }

        private static IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_get_loop_begin");

        /// <summary>
        /// Return the initial loop point of a sample. Only has effect if sample loop is enabled. See [method sample_set_loop_format].
        /// </summary>
        public static int sample_get_loop_begin(RID sample)
        {
            return NativeCalls.godot_icall_1_86(method_bind_14, ptr, RID.GetPtr(sample));
        }

        private static IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_set_loop_end");

        /// <summary>
        /// Set the final loop point of a sample. Only has effect if sample loop is enabled. See [method sample_set_loop_format].
        /// </summary>
        public static void sample_set_loop_end(RID sample, int pos)
        {
            NativeCalls.godot_icall_2_91(method_bind_15, ptr, RID.GetPtr(sample), pos);
        }

        private static IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_get_loop_end");

        /// <summary>
        /// Return the final loop point of a sample. Only has effect if sample loop is enabled. See [method sample_set_loop_format].
        /// </summary>
        public static int sample_get_loop_end(RID sample)
        {
            return NativeCalls.godot_icall_1_86(method_bind_16, ptr, RID.GetPtr(sample));
        }

        private static IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_create");

        /// <summary>
        /// Allocate a voice for playback. Voices are persistent. A voice can play a single sample at the same time. See [method sample_create].
        /// </summary>
        public static RID voice_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_17, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_play");

        /// <summary>
        /// Start playback of a given voice using a given sample. If the voice was already playing it will be restarted.
        /// </summary>
        public static void voice_play(RID voice, RID sample)
        {
            NativeCalls.godot_icall_2_93(method_bind_18, ptr, RID.GetPtr(voice), RID.GetPtr(sample));
        }

        private static IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_set_volume");

        /// <summary>
        /// Change the volume of a currently playing voice. Volume is expressed as linear gain where 0.0 is mute and 1.0 is default.
        /// </summary>
        public static void voice_set_volume(RID voice, float volume)
        {
            NativeCalls.godot_icall_2_94(method_bind_19, ptr, RID.GetPtr(voice), volume);
        }

        private static IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_set_pan");

        /// <summary>
        /// Change the pan of a currently playing voice and, optionally, the depth and height for a positional/3D sound. Panning values are expressed within the -1 to +1 range.
        /// </summary>
        public static void voice_set_pan(RID voice, float pan, float depth = 0, float height = 0)
        {
            NativeCalls.godot_icall_4_95(method_bind_20, ptr, RID.GetPtr(voice), pan, depth, height);
        }

        private static IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_set_filter");

        /// <summary>
        /// Set a resonant filter post processing for the voice. Filter type is a value from the FILTER_* enum.
        /// </summary>
        public static void voice_set_filter(RID voice, int type, float cutoff, float resonance, float gain = 0)
        {
            NativeCalls.godot_icall_5_96(method_bind_21, ptr, RID.GetPtr(voice), type, cutoff, resonance, gain);
        }

        private static IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_set_chorus");

        /// <summary>
        /// Set chorus send post processing for the voice (from 0 to 1).
        /// </summary>
        public static void voice_set_chorus(RID voice, float chorus)
        {
            NativeCalls.godot_icall_2_94(method_bind_22, ptr, RID.GetPtr(voice), chorus);
        }

        private static IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_set_reverb");

        /// <summary>
        /// Set the reverb send post processing for the voice (from 0 to 1) and the reverb type, from the REVERB_* enum.
        /// </summary>
        public static void voice_set_reverb(RID voice, int room, float reverb)
        {
            NativeCalls.godot_icall_3_97(method_bind_23, ptr, RID.GetPtr(voice), room, reverb);
        }

        private static IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_set_mix_rate");

        /// <summary>
        /// Set a different playback mix rate for the given voice.
        /// </summary>
        public static void voice_set_mix_rate(RID voice, int rate)
        {
            NativeCalls.godot_icall_2_91(method_bind_24, ptr, RID.GetPtr(voice), rate);
        }

        private static IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_set_positional");

        /// <summary>
        /// Set whether a given voice is positional. This is only interpreted as a hint and used for backends that may support binaural encoding.
        /// </summary>
        public static void voice_set_positional(RID voice, bool enabled)
        {
            NativeCalls.godot_icall_2_98(method_bind_25, ptr, RID.GetPtr(voice), enabled);
        }

        private static IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_get_volume");

        /// <summary>
        /// Return the current volume for a given voice.
        /// </summary>
        public static float voice_get_volume(RID voice)
        {
            return NativeCalls.godot_icall_1_99(method_bind_26, ptr, RID.GetPtr(voice));
        }

        private static IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_get_pan");

        /// <summary>
        /// Return the current pan for a given voice (-1 to +1 range).
        /// </summary>
        public static float voice_get_pan(RID voice)
        {
            return NativeCalls.godot_icall_1_99(method_bind_27, ptr, RID.GetPtr(voice));
        }

        private static IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_get_pan_height");

        /// <summary>
        /// Return the current pan height for a given voice (-1 to +1 range).
        /// </summary>
        public static float voice_get_pan_height(RID voice)
        {
            return NativeCalls.godot_icall_1_99(method_bind_28, ptr, RID.GetPtr(voice));
        }

        private static IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_get_pan_depth");

        /// <summary>
        /// Return the current pan depth for a given voice (-1 to +1 range).
        /// </summary>
        public static float voice_get_pan_depth(RID voice)
        {
            return NativeCalls.godot_icall_1_99(method_bind_29, ptr, RID.GetPtr(voice));
        }

        private static IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_get_filter_type");

        /// <summary>
        /// Return the current selected filter type for a given voice, from the FILTER_* enum.
        /// </summary>
        public static int voice_get_filter_type(RID voice)
        {
            return NativeCalls.godot_icall_1_86(method_bind_30, ptr, RID.GetPtr(voice));
        }

        private static IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_get_filter_cutoff");

        /// <summary>
        /// Return the current filter cutoff (in hz) for a given voice.
        /// </summary>
        public static float voice_get_filter_cutoff(RID voice)
        {
            return NativeCalls.godot_icall_1_99(method_bind_31, ptr, RID.GetPtr(voice));
        }

        private static IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_get_filter_resonance");

        /// <summary>
        /// Return the current filter resonance for a given voice.
        /// </summary>
        public static float voice_get_filter_resonance(RID voice)
        {
            return NativeCalls.godot_icall_1_99(method_bind_32, ptr, RID.GetPtr(voice));
        }

        private static IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_get_chorus");

        /// <summary>
        /// Return the current chorus send for a given voice (0 to 1).
        /// </summary>
        public static float voice_get_chorus(RID voice)
        {
            return NativeCalls.godot_icall_1_99(method_bind_33, ptr, RID.GetPtr(voice));
        }

        private static IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_get_reverb_type");

        /// <summary>
        /// Return the current reverb type for a given voice from the REVERB_* enum.
        /// </summary>
        public static int voice_get_reverb_type(RID voice)
        {
            return NativeCalls.godot_icall_1_86(method_bind_34, ptr, RID.GetPtr(voice));
        }

        private static IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_get_reverb");

        /// <summary>
        /// Return the current reverb send for a given voice (0 to 1).
        /// </summary>
        public static float voice_get_reverb(RID voice)
        {
            return NativeCalls.godot_icall_1_99(method_bind_35, ptr, RID.GetPtr(voice));
        }

        private static IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_get_mix_rate");

        /// <summary>
        /// Return the current mix rate for a given voice.
        /// </summary>
        public static int voice_get_mix_rate(RID voice)
        {
            return NativeCalls.godot_icall_1_86(method_bind_36, ptr, RID.GetPtr(voice));
        }

        private static IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_is_positional");

        /// <summary>
        /// Return whether the current voice is positional. See [method voice_set_positional].
        /// </summary>
        public static bool voice_is_positional(RID voice)
        {
            return NativeCalls.godot_icall_1_87(method_bind_37, ptr, RID.GetPtr(voice));
        }

        private static IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "voice_stop");

        /// <summary>
        /// Stop a given voice.
        /// </summary>
        public static void voice_stop(RID voice)
        {
            NativeCalls.godot_icall_1_100(method_bind_38, ptr, RID.GetPtr(voice));
        }

        private static IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "free_rid");

        /// <summary>
        /// Free a [RID] resource.
        /// </summary>
        public static void free_rid(RID rid)
        {
            NativeCalls.godot_icall_1_100(method_bind_39, ptr, RID.GetPtr(rid));
        }

        private static IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_stream_global_volume_scale");

        /// <summary>
        /// Set global scale for stream playback. Default is 1.0.
        /// </summary>
        public static void set_stream_global_volume_scale(float scale)
        {
            NativeCalls.godot_icall_1_45(method_bind_40, ptr, scale);
        }

        private static IntPtr method_bind_41 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stream_global_volume_scale");

        /// <summary>
        /// Return the global scale for stream playback.
        /// </summary>
        public static float get_stream_global_volume_scale()
        {
            return NativeCalls.godot_icall_0_46(method_bind_41, ptr);
        }

        private static IntPtr method_bind_42 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_fx_global_volume_scale");

        /// <summary>
        /// Set global scale for all voices (not including streams). Default is 1.0.
        /// </summary>
        public static void set_fx_global_volume_scale(float scale)
        {
            NativeCalls.godot_icall_1_45(method_bind_42, ptr, scale);
        }

        private static IntPtr method_bind_43 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_fx_global_volume_scale");

        /// <summary>
        /// Return the global scale for all voices.
        /// </summary>
        public static float get_fx_global_volume_scale()
        {
            return NativeCalls.godot_icall_0_46(method_bind_43, ptr);
        }

        private static IntPtr method_bind_44 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_event_voice_global_volume_scale");

        /// <summary>
        /// Set global scale for event-based stream ([EventStream]) playback. Default is 1.0.
        /// </summary>
        public static void set_event_voice_global_volume_scale(float scale)
        {
            NativeCalls.godot_icall_1_45(method_bind_44, ptr, scale);
        }

        private static IntPtr method_bind_45 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_event_voice_global_volume_scale");

        /// <summary>
        /// Return the global scale for event-based stream playback.
        /// </summary>
        public static float get_event_voice_global_volume_scale()
        {
            return NativeCalls.godot_icall_0_46(method_bind_45, ptr);
        }
    }
}
