using System;

namespace GodotEngine
{
    public class TriangleMesh : Reference
    {
        private const string nativeName = "TriangleMesh";

        public TriangleMesh() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_TriangleMesh_Ctor(this);
        }

        internal TriangleMesh(bool memoryOwn) : base(memoryOwn) {}

        ~TriangleMesh()
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
                    NativeCalls.godot_icall_TriangleMesh_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
