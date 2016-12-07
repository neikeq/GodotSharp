using System;

namespace GodotEngine
{
    public class RenderTargetTexture : Texture
    {
        private const string nativeName = "RenderTargetTexture";

        internal RenderTargetTexture() {}

        internal RenderTargetTexture(bool memoryOwn) : base(memoryOwn) {}

        ~RenderTargetTexture()
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
                    NativeCalls.godot_icall_RenderTargetTexture_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
