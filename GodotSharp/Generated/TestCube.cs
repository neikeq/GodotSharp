using System;

namespace GodotEngine
{
    /// <summary>
    /// The TestCube is a simple 2x2x2 cube with a basic texture. It can be used as a placeholder, to verify how the lighting looks, to test shaders, or any other task you may need a textured model to test with.
    /// </summary>
    public class TestCube : GeometryInstance
    {
        private const string nativeName = "TestCube";

        public TestCube() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_TestCube_Ctor(this);
        }

        internal TestCube(bool memoryOwn) : base(memoryOwn) {}

        ~TestCube()
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
