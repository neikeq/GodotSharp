using System;

namespace GodotEngine
{
    public class VideoStream : Resource
    {
        private const string nativeName = "VideoStream";

        internal VideoStream() {}

        internal VideoStream(bool memoryOwn) : base(memoryOwn) {}

        ~VideoStream()
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
                    NativeCalls.godot_icall_VideoStream_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
