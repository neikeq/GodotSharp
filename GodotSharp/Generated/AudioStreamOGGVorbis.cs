using System;

namespace GodotEngine
{
    /// <summary>
    /// OGG Vorbis audio stream driver.
    /// </summary>
    public class AudioStreamOGGVorbis : AudioStream
    {
        private const string nativeName = "AudioStreamOGGVorbis";

        public AudioStreamOGGVorbis() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_AudioStreamOGGVorbis_Ctor(this);
        }

        internal AudioStreamOGGVorbis(bool memoryOwn) : base(memoryOwn) {}

        ~AudioStreamOGGVorbis()
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
                    NativeCalls.godot_icall_AudioStreamOGGVorbis_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
