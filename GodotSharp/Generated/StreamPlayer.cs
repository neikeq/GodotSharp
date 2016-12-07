using System;

namespace GodotEngine
{
    /// <summary>
    /// Base class for audio stream playback. Audio stream players inherit from it.
    /// </summary>
    public class StreamPlayer : Node
    {
        private const string nativeName = "StreamPlayer";

        public StreamPlayer() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_StreamPlayer_Ctor(this);
        }

        internal StreamPlayer(bool memoryOwn) : base(memoryOwn) {}

        ~StreamPlayer()
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
        public void set_stream(AudioStream stream)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(stream));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stream");

        /// <summary>
        /// Return the currently assigned stream.
        /// </summary>
        public AudioStream get_stream()
        {
            return NativeCalls.godot_icall_0_464(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "play");

        /// <summary>
        /// Play the currently assigned stream, starting from a given position (in seconds).
        /// </summary>
        public void play(float offset = 0)
        {
            NativeCalls.godot_icall_1_45(method_bind_2, Object.GetPtr(this), offset);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "stop");

        /// <summary>
        /// Stop the playback.
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
        /// Return whether the stream will be restarted at the end.
        /// </summary>
        public bool has_loop()
        {
            return NativeCalls.godot_icall_0_14(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_volume");

        /// <summary>
        /// Set the playback volume for this player. This is a float between 0.0 (silent) and 1.0 (full volume). Values over 1.0 will amplify sound even more, but may introduce distortion. Negative values will just invert the output waveform, which produces no audible difference.
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

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_volume_db");

        /// <summary>
        /// Set the playback volume for this player, in decibels. This is a float between -80.0 (silent) and 0.0 (full volume). Values under -79.0 get truncated to -80, but values over 0.0 do not, so the warnings for overamplifying (see [method set_volume]) still apply.
        /// </summary>
        public void set_volume_db(float db)
        {
            NativeCalls.godot_icall_1_45(method_bind_11, Object.GetPtr(this), db);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_volume_db");

        /// <summary>
        /// Return the playback volume for this player, in decibels.
        /// </summary>
        public float get_volume_db()
        {
            return NativeCalls.godot_icall_0_46(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_buffering_msec");

        /// <summary>
        /// Set the size (in milliseconds) of the audio buffer. A long audio buffer protects better against slowdowns, but responds worse to changes (in volume, stream played...). A shorter buffer takes less time to respond to changes, but may stutter if the application suffers some slowdown.
        /// Default is 500 milliseconds.
        /// </summary>
        public void set_buffering_msec(int msec)
        {
            NativeCalls.godot_icall_1_4(method_bind_13, Object.GetPtr(this), msec);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_buffering_msec");

        /// <summary>
        /// Return the size of the audio buffer.
        /// </summary>
        public int get_buffering_msec()
        {
            return NativeCalls.godot_icall_0_0(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_loop_restart_time");

        /// <summary>
        /// Set the point in time the stream will rewind to, when looping.
        /// </summary>
        public void set_loop_restart_time(float secs)
        {
            NativeCalls.godot_icall_1_45(method_bind_15, Object.GetPtr(this), secs);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_loop_restart_time");

        /// <summary>
        /// Return the point in time the stream will rewind to, when looping.
        /// </summary>
        public float get_loop_restart_time()
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
        /// Return the playback position, in seconds.
        /// </summary>
        public float get_pos()
        {
            return NativeCalls.godot_icall_0_46(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "seek_pos");

        /// <summary>
        /// Set the playback position, in seconds.
        /// </summary>
        public void seek_pos(float time)
        {
            NativeCalls.godot_icall_1_45(method_bind_20, Object.GetPtr(this), time);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_autoplay");

        /// <summary>
        /// Set whether this player will start playing as soon as it enters the scene tree.
        /// </summary>
        public void set_autoplay(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_21, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_autoplay");

        /// <summary>
        /// Return whether this player will start playing as soon as it enters the scene tree.
        /// </summary>
        public bool has_autoplay()
        {
            return NativeCalls.godot_icall_0_14(method_bind_22, Object.GetPtr(this));
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_length");

        /// <summary>
        /// Return the length of the stream, in seconds.
        /// </summary>
        public float get_length()
        {
            return NativeCalls.godot_icall_0_46(method_bind_23, Object.GetPtr(this));
        }
    }
}
