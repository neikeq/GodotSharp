using System;

namespace GodotEngine
{
    public class Shape : Resource
    {
        private const string nativeName = "Shape";

        internal Shape() {}

        internal Shape(bool memoryOwn) : base(memoryOwn) {}

        ~Shape()
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
                    NativeCalls.godot_icall_Shape_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
