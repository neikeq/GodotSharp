using System;

namespace GodotEngine
{
    public class VideoStreamWebm : VideoStream
    {
        private const string nativeName = "VideoStreamWebm";

        public VideoStreamWebm() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VideoStreamWebm_Ctor(this);
        }

        internal VideoStreamWebm(bool memoryOwn) : base(memoryOwn) {}

        ~VideoStreamWebm()
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
                    NativeCalls.godot_icall_VideoStreamWebm_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
