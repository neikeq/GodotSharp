using System;

namespace GodotEngine
{
    /// <summary>
    /// Class for event stream playback. Event streams are music expressed as a series of events (note on, note off, instrument change...), as opposed to audio streams, which are just audio data. Examples of event-based streams are MIDI files, or MOD music.
    /// Currently, only MOD, S3M, IT, and XM music is supported.
    /// </summary>
    public class EventPlayer : Node
    {
        private const string nativeName = "EventPlayer";

        public EventPlayer() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_EventPlayer_Ctor(this);
        }

        internal EventPlayer(bool memoryOwn) : base(memoryOwn) {}

        ~EventPlayer()
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

        /// <summary>
        /// Set the [EventStream] this player will play.
        /// </summary>
        public void set_stream(EventStream stream)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(stream));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stream");

        /// <summary>
        /// Return the currently assigned stream.
        /// </summary>
        public EventStream get_stream()
        {
            return NativeCalls.godot_icall_0_226(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "play");

        /// <summary>
        /// Play the currently assigned stream.
        /// </summary>
        public void play()
        {
            NativeCalls.godot_icall_0_7(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "stop");

        /// <summary>
        /// Stop playing.
        /// </summary>
        public void stop()
        {
            NativeCalls.godot_icall_0_7(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_playing");

        /// <summary>
        /// Return whether this player is playing.
        /// </summary>
        public bool is_playing()
        {
            return NativeCalls.godot_icall_0_14(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_paused");

        /// <summary>
        /// Pause stream playback.
        /// </summary>
        public void set_paused(bool paused)
        {
            NativeCalls.godot_icall_1_13(method_bind_5, Object.GetPtr(this), paused);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_paused");

        /// <summary>
        /// Return whether the playback is currently paused.
        /// </summary>
        public bool is_paused()
        {
            return NativeCalls.godot_icall_0_14(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_loop");

        /// <summary>
        /// Set whether the stream will be restarted at the end.
        /// </summary>
        public void set_loop(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_7, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_loop");

        /// <summary>
        /// Return whether this player will be restart the playback at the end.
        /// </summary>
        public bool has_loop()
        {
            return NativeCalls.godot_icall_0_14(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_volume");

        /// <summary>
        /// Set the playback volume for this player. This is a float between 0.0 (silent) and 1.0 (full volume). Values over 1.0 may amplify sound even more, but may introduce distortion. Negative values may just invert the output waveform, which produces no audible difference.
        /// The effect of these special values ultimately depends on the low-level implementation of the file format being played.
        /// </summary>
        public void set_volume(float volume)
        {
            NativeCalls.godot_icall_1_45(method_bind_9, Object.GetPtr(this), volume);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_volume");

        /// <summary>
        /// Return the playback volume for this player.
        /// </summary>
        public float get_volume()
        {
            return NativeCalls.godot_icall_0_46(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_pitch_scale");

        /// <summary>
        /// Set the pitch multiplier for all sounds coming from this stream. A value of 2.0 shifts all pitches one octave up, and a value of 0.5 shifts pitches one octave down.
        /// </summary>
        public void set_pitch_scale(float pitch_scale)
        {
            NativeCalls.godot_icall_1_45(method_bind_11, Object.GetPtr(this), pitch_scale);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pitch_scale");

        /// <summary>
        /// Return the pitch scale factor for this player.
        /// </summary>
        public float get_pitch_scale()
        {
            return NativeCalls.godot_icall_0_46(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_tempo_scale");

        /// <summary>
        /// Set the tempo multiplier. This allows to slow down or speed up the music, without affecting its pitch.
        /// </summary>
        public void set_tempo_scale(float tempo_scale)
        {
            NativeCalls.godot_icall_1_45(method_bind_13, Object.GetPtr(this), tempo_scale);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_tempo_scale");

        /// <summary>
        /// Return the tempo multiplier.
        /// </summary>
        public float get_tempo_scale()
        {
            return NativeCalls.godot_icall_0_46(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_volume_db");

        /// <summary>
        /// Set the playback volume for this player, in decibels. This is a float between -80.0 (silent) and 0.0 (full volume). Values under -79.0 get truncated to -80, but values over 0.0 do not, so the warnings for over amplifying (see [method set_volume]) still apply.
        /// </summary>
        public void set_volume_db(float db)
        {
            NativeCalls.godot_icall_1_45(method_bind_15, Object.GetPtr(this), db);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_volume_db");

        /// <summary>
        /// Return the playback volume for this player, in decibels.
        /// </summary>
        public float get_volume_db()
        {
            return NativeCalls.godot_icall_0_46(method_bind_16, Object.GetPtr(this));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stream_name");

        /// <summary>
        /// Return the name of the currently assigned stream. This is not the file name, but a field inside the file. If no stream is assigned, if returns "<No Stream>".
        /// </summary>
        public string get_stream_name()
        {
            return NativeCalls.godot_icall_0_19(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_loop_count");

        /// <summary>
        /// Return the number of times the playback has looped.
        /// </summary>
        public int get_loop_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_18, Object.GetPtr(this));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pos");

        /// <summary>
        /// Return the playback position. May be in seconds, but depends on the stream type.
        /// </summary>
        public float get_pos()
        {
            return NativeCalls.godot_icall_0_46(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "seek_pos");

        /// <summary>
        /// Set the playback position. May be in seconds, but depends on the stream type.
        /// </summary>
        public void seek_pos(float time)
        {
            NativeCalls.godot_icall_1_45(method_bind_20, Object.GetPtr(this), time);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_length");

        /// <summary>
        /// Return the song length. May be in seconds, but depends on the stream type.
        /// </summary>
        public float get_length()
        {
            return NativeCalls.godot_icall_0_46(method_bind_21, Object.GetPtr(this));
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_autoplay");

        /// <summary>
        /// Set whether this player will start playing as soon as it enters the scene tree.
        /// </summary>
        public void set_autoplay(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_22, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_autoplay");

        /// <summary>
        /// Return whether this player will start playing as soon as it enters the scene tree.
        /// </summary>
        public bool has_autoplay()
        {
            return NativeCalls.godot_icall_0_14(method_bind_23, Object.GetPtr(this));
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_channel_volume");

        /// <summary>
        /// Set the volume scale for an individual channel of the stream, with the same value range as [method set_volume]. The channel number depends on the stream format. For example, MIDIs range from 0 to 15, and MODs from 0 to 63.
        /// Many stream formats are multichannel, so this allows to affect only a part of the music.
        /// </summary>
        public void set_channel_volume(int channel, float channel_volume)
        {
            NativeCalls.godot_icall_2_36(method_bind_24, Object.GetPtr(this), channel, channel_volume);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_channel_volume");

        /// <summary>
        /// Return the volume scale for an individual channel of the stream.
        /// </summary>
        public float get_channel_volume(int channel)
        {
            return NativeCalls.godot_icall_1_3(method_bind_25, Object.GetPtr(this), channel);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_channel_last_note_time");

        /// <summary>
        /// Return the time at which the last note of a given channel in the stream plays.
        /// </summary>
        public float get_channel_last_note_time(int channel)
        {
            return NativeCalls.godot_icall_1_3(method_bind_26, Object.GetPtr(this), channel);
        }
    }
}
