using System;

namespace GodotEngine
{
    /// <summary>
    /// MusePack audio stream driver.
    /// </summary>
    public class AudioStreamMPC : AudioStream
    {
        private const string nativeName = "AudioStreamMPC";

        public AudioStreamMPC() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_AudioStreamMPC_Ctor(this);
        }

        internal AudioStreamMPC(bool memoryOwn) : base(memoryOwn) {}

        ~AudioStreamMPC()
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
                    NativeCalls.godot_icall_AudioStreamMPC_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
