using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Sample provides an audio sample class, containing audio data, together with some information for playback, such as format, mix rate and loop. It is used by sound playback routines.
    /// </summary>
    public class Sample : Resource
    {
        /// <summary>
        /// 8-bits signed PCM audio.
        /// </summary>
        public const int FORMAT_PCM8 = 0;
        /// <summary>
        /// 16-bits signed little endian PCM audio.
        /// </summary>
        public const int FORMAT_PCM16 = 1;
        /// <summary>
        /// IMA-ADPCM Audio.
        /// </summary>
        public const int FORMAT_IMA_ADPCM = 2;
        /// <summary>
        /// No loop enabled.
        /// </summary>
        public const int LOOP_NONE = 0;
        /// <summary>
        /// Forward looping (when playback reaches loop end, goes back to loop begin).
        /// </summary>
        public const int LOOP_FORWARD = 1;
        /// <summary>
        /// Ping-pong looping (when playback reaches loop end, plays backward until loop begin). Not available in all platforms.
        /// </summary>
        public const int LOOP_PING_PONG = 2;

        private const string nativeName = "Sample";

        public Sample() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Sample_Ctor(this);
        }

        internal Sample(bool memoryOwn) : base(memoryOwn) {}

        ~Sample()
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
                    NativeCalls.godot_icall_Sample_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "create");

        /// <summary>
        /// Create new data for the sample, with format (see FORMAT_* constants), stereo hint, and length in samples (not bytes).
        /// Calling this method overrides previously existing data. Stereo samples are interleaved pairs of left and right points (in that order), but count as one sample for length purposes.
        /// </summary>
        public void create(int format, bool stereo, int length)
        {
            NativeCalls.godot_icall_3_410(method_bind_0, Object.GetPtr(this), format, stereo, length);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_format");

        /// <summary>
        /// Return the sample format.
        /// </summary>
        public int get_format()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_stereo");

        /// <summary>
        /// Return whether the current sample was created as stereo.
        /// </summary>
        public bool is_stereo()
        {
            return NativeCalls.godot_icall_0_14(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_length");

        /// <summary>
        /// Return the sample length in samples. Stereo samples count as one, even if they are made of a left and a right sample.
        /// </summary>
        public int get_length()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_data");

        /// <summary>
        /// Set sample data. Data must be little endian, no matter the host platform, and exactly as long as to fit all samples. The length of this array can be calculated as follows:
        /// Get the sample length ([method get_length]). If the sample format is FORMAT_PCM16, multiply it by 2. If the sample format is FORMAT_IMA_ADPCM, divide it by 2 (rounding any fraction up), then add 4. If the sample is stereo ([method is_stereo]), multiply it by 2.
        /// </summary>
        public void set_data(List<byte> data)
        {
            NativeCalls.godot_icall_1_101(method_bind_4, Object.GetPtr(this), data.ToArray());
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_data");

        /// <summary>
        /// Return sample data as little endian.
        /// </summary>
        public List<byte> get_data()
        {
            byte[] ret = NativeCalls.godot_icall_0_102(method_bind_5, Object.GetPtr(this));
            return new List<byte>(ret);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_mix_rate");

        /// <summary>
        /// Set the mix rate for the sample (expected playback frequency).
        /// </summary>
        public void set_mix_rate(int hz)
        {
            NativeCalls.godot_icall_1_4(method_bind_6, Object.GetPtr(this), hz);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mix_rate");

        /// <summary>
        /// Return the mix rate for the sample.
        /// </summary>
        public int get_mix_rate()
        {
            return NativeCalls.godot_icall_0_0(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_loop_format");

        /// <summary>
        /// Set the loop format (use LOOP_* constants as argument).
        /// </summary>
        public void set_loop_format(int format)
        {
            NativeCalls.godot_icall_1_4(method_bind_8, Object.GetPtr(this), format);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_loop_format");

        /// <summary>
        /// Return the loop format.
        /// </summary>
        public int get_loop_format()
        {
            return NativeCalls.godot_icall_0_0(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_loop_begin");

        /// <summary>
        /// Set the loop begin position. It must be a valid frame and less than the loop end position.
        /// </summary>
        public void set_loop_begin(int pos)
        {
            NativeCalls.godot_icall_1_4(method_bind_10, Object.GetPtr(this), pos);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_loop_begin");

        /// <summary>
        /// Return the loop begin position.
        /// </summary>
        public int get_loop_begin()
        {
            return NativeCalls.godot_icall_0_0(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_loop_end");

        /// <summary>
        /// Set the loop end position. It must be a valid frame and greater than the loop begin position.
        /// </summary>
        public void set_loop_end(int pos)
        {
            NativeCalls.godot_icall_1_4(method_bind_12, Object.GetPtr(this), pos);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_loop_end");

        /// <summary>
        /// Return the loop end position.
        /// </summary>
        public int get_loop_end()
        {
            return NativeCalls.godot_icall_0_0(method_bind_13, Object.GetPtr(this));
        }
    }
}
