using System;

namespace GodotEngine
{
    /// <summary>
    /// Generic 2D Position hint for editing. It's just like a plain [Node2D] but displays as a cross in the 2D-Editor at all times.
    /// </summary>
    public class Position2D : Node2D
    {
        private const string nativeName = "Position2D";

        public Position2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Position2D_Ctor(this);
        }

        internal Position2D(bool memoryOwn) : base(memoryOwn) {}

        ~Position2D()
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
