using System;

namespace GodotEngine
{
    /// <summary>
    /// Software implementation of [Physics2DDirectBodyState]. This object exposes no new methods or properties and should not be used, as [Physics2DDirectBodyState] selects the best implementation available.
    /// </summary>
    public class Physics2DDirectBodyStateSW : Physics2DDirectBodyState
    {
        private const string nativeName = "Physics2DDirectBodyStateSW";

        internal Physics2DDirectBodyStateSW() {}

        internal Physics2DDirectBodyStateSW(bool memoryOwn) : base(memoryOwn) {}

        ~Physics2DDirectBodyStateSW()
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
    }
}
