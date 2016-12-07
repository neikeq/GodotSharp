using System;

namespace GodotEngine
{
    /// <summary>
    /// Opus Codec audio stream driver.
    /// </summary>
    public class AudioStreamOpus : AudioStream
    {
        private const string nativeName = "AudioStreamOpus";

        public AudioStreamOpus() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_AudioStreamOpus_Ctor(this);
        }

        internal AudioStreamOpus(bool memoryOwn) : base(memoryOwn) {}

        ~AudioStreamOpus()
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
                    NativeCalls.godot_icall_AudioStreamOpus_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
