using System;

namespace GodotEngine
{
    /// <summary>
    /// This control has the ability to play video streams. The only format accepted is the OGV Theora, so any other format must be converted before using in a project.
    /// </summary>
    public class VideoPlayer : Control
    {
        private const string nativeName = "VideoPlayer";

        public VideoPlayer() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VideoPlayer_Ctor(this);
        }

        internal VideoPlayer(bool memoryOwn) : base(memoryOwn) {}

        ~VideoPlayer()
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
        /// Set the video stream for this player.
        /// </summary>
        public void set_stream(VideoStream stream)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(stream));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stream");

        /// <summary>
        /// Get the video stream.
        /// </summary>
        public VideoStream get_stream()
        {
            return NativeCalls.godot_icall_0_511(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "play");

        /// <summary>
        /// Start the video playback.
        /// </summary>
        public void play()
        {
            NativeCalls.godot_icall_0_7(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "stop");

        /// <summary>
        /// Stop the video playback.
        /// </summary>
        public void stop()
        {
            NativeCalls.godot_icall_0_7(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_playing");

        /// <summary>
        /// Get whether or not the video is playing.
        /// </summary>
        public bool is_playing()
        {
            return NativeCalls.godot_icall_0_14(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_paused");

        /// <summary>
        /// Set whether the video should pause the playback.
        /// </summary>
        public void set_paused(bool paused)
        {
            NativeCalls.godot_icall_1_13(method_bind_5, Object.GetPtr(this), paused);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_paused");

        /// <summary>
        /// Get whether or not the video is paused.
        /// </summary>
        public bool is_paused()
        {
            return NativeCalls.godot_icall_0_14(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_volume");

        /// <summary>
        /// Set the audio volume as a linear value.
        /// </summary>
        public void set_volume(float volume)
        {
            NativeCalls.godot_icall_1_45(method_bind_7, Object.GetPtr(this), volume);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_volume");

        /// <summary>
        /// Get the volume of the audio track as a linear value.
        /// </summary>
        public float get_volume()
        {
            return NativeCalls.godot_icall_0_46(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_volume_db");

        /// <summary>
        /// Set the audio volume in decibels.
        /// </summary>
        public void set_volume_db(float db)
        {
            NativeCalls.godot_icall_1_45(method_bind_9, Object.GetPtr(this), db);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_volume_db");

        /// <summary>
        /// Get the volume of the audio track in decibels.
        /// </summary>
        public float get_volume_db()
        {
            return NativeCalls.godot_icall_0_46(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_audio_track");

        /// <summary>
        /// Set the audio track (for multitrack videos).
        /// </summary>
        public void set_audio_track(int track)
        {
            NativeCalls.godot_icall_1_4(method_bind_11, Object.GetPtr(this), track);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_audio_track");

        /// <summary>
        /// Get the selected audio track (for multitrack videos).
        /// </summary>
        public int get_audio_track()
        {
            return NativeCalls.godot_icall_0_0(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stream_name");

        /// <summary>
        /// Get the name of the video stream.
        /// </summary>
        public string get_stream_name()
        {
            return NativeCalls.godot_icall_0_19(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stream_pos");

        /// <summary>
        /// Get the current position of the stream, in seconds.
        /// </summary>
        public float get_stream_pos()
        {
            return NativeCalls.godot_icall_0_46(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_autoplay");

        /// <summary>
        /// Set whether this node should start playing automatically.
        /// </summary>
        public void set_autoplay(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_15, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_autoplay");

        /// <summary>
        /// Get whether or not the video is set as autoplay.
        /// </summary>
        public bool has_autoplay()
        {
            return NativeCalls.godot_icall_0_14(method_bind_16, Object.GetPtr(this));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_expand");

        /// <summary>
        /// Set the expand property. If enabled, the video will grow or shrink to fit the player size, otherwise it will play at the stream resolution.
        /// </summary>
        public void set_expand(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_17, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_expand");

        /// <summary>
        /// Get whether or not the expand property is set.
        /// </summary>
        public bool has_expand()
        {
            return NativeCalls.godot_icall_0_14(method_bind_18, Object.GetPtr(this));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_buffering_msec");

        /// <summary>
        /// Set the amount of miliseconds to buffer during playback.
        /// </summary>
        public void set_buffering_msec(int msec)
        {
            NativeCalls.godot_icall_1_4(method_bind_19, Object.GetPtr(this), msec);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_buffering_msec");

        /// <summary>
        /// Get the amount of miliseconds to store in buffer while playing.
        /// </summary>
        public int get_buffering_msec()
        {
            return NativeCalls.godot_icall_0_0(method_bind_20, Object.GetPtr(this));
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_video_texture");

        /// <summary>
        /// Get the current frame of the video as a [Texture].
        /// </summary>
        public Texture get_video_texture()
        {
            return NativeCalls.godot_icall_0_80(method_bind_21, Object.GetPtr(this));
        }
    }
}
