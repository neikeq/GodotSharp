using System;

namespace GodotEngine
{
    public class VideoStreamTheora : VideoStream
    {
        private const string nativeName = "VideoStreamTheora";

        public VideoStreamTheora() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VideoStreamTheora_Ctor(this);
        }

        internal VideoStreamTheora(bool memoryOwn) : base(memoryOwn) {}

        ~VideoStreamTheora()
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
                    NativeCalls.godot_icall_VideoStreamTheora_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
