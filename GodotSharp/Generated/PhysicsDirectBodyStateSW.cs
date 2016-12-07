using System;

namespace GodotEngine
{
    public class PhysicsDirectBodyStateSW : PhysicsDirectBodyState
    {
        private const string nativeName = "PhysicsDirectBodyStateSW";

        internal PhysicsDirectBodyStateSW() {}

        internal PhysicsDirectBodyStateSW(bool memoryOwn) : base(memoryOwn) {}

        ~PhysicsDirectBodyStateSW()
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
