using System;

namespace GodotEngine
{
    /// <summary>
    /// Generic 3D Position hint for editing. It's just like a plain [Spatial] but displays as a cross in the 3D-Editor at all times.
    /// </summary>
    public class Position3D : Spatial
    {
        private const string nativeName = "Position3D";

        public Position3D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Position3D_Ctor(this);
        }

        internal Position3D(bool memoryOwn) : base(memoryOwn) {}

        ~Position3D()
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
