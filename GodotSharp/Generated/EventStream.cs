using System;

namespace GodotEngine
{
    /// <summary>
    /// Base class for all event-based stream drivers. Event streams are music expressed as a series of events (note on, note off, instrument change...), as opposed to audio streams, which are just audio data. Examples of event-based streams are MIDI files, of MOD music.
    /// This class exposes no methods.
    /// </summary>
    public class EventStream : Resource
    {
        private const string nativeName = "EventStream";

        internal EventStream() {}

        internal EventStream(bool memoryOwn) : base(memoryOwn) {}

        ~EventStream()
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
                    NativeCalls.godot_icall_EventStream_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
