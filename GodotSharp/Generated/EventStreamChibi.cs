using System;

namespace GodotEngine
{
    /// <summary>
    /// This driver plays MOD music. MOD music, as all event-based streams, is a music format defined by note events occurring at defined moments, instead of a stream of audio samples.
    /// Currently, this driver supports the MOD, S3M, IT, and XM formats.
    /// This class exposes no methods.
    /// This class can return its playback position in seconds, but does not allow to set it, failing with only a console warning.
    /// This class can not return its song length, returning 1.0 when queried.
    /// This class does not limit its volume settings, allowing for overflow/distortion and wave inversion.
    /// </summary>
    public class EventStreamChibi : EventStream
    {
        private const string nativeName = "EventStreamChibi";

        public EventStreamChibi() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_EventStreamChibi_Ctor(this);
        }

        internal EventStreamChibi(bool memoryOwn) : base(memoryOwn) {}

        ~EventStreamChibi()
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
                    NativeCalls.godot_icall_EventStreamChibi_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
