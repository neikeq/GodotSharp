using System;

namespace GodotEngine
{
    public class SpatialGizmo : Reference
    {
        private const string nativeName = "SpatialGizmo";

        internal SpatialGizmo() {}

        internal SpatialGizmo(bool memoryOwn) : base(memoryOwn) {}

        ~SpatialGizmo()
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
                    NativeCalls.godot_icall_SpatialGizmo_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
