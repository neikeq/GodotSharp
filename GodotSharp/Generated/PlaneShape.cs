using System;

namespace GodotEngine
{
    public class PlaneShape : Shape
    {
        private const string nativeName = "PlaneShape";

        public PlaneShape() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_PlaneShape_Ctor(this);
        }

        internal PlaneShape(bool memoryOwn) : base(memoryOwn) {}

        ~PlaneShape()
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
                    NativeCalls.godot_icall_PlaneShape_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_plane");

        public void set_plane(Plane plane)
        {
            NativeCalls.godot_icall_1_257(method_bind_0, Object.GetPtr(this), ref plane);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_plane");

        public Plane get_plane()
        {
            object ret = NativeCalls.godot_icall_0_396(method_bind_1, Object.GetPtr(this));
            return (Plane)ret;
        }
    }
}
