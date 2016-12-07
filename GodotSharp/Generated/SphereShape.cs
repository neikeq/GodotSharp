using System;

namespace GodotEngine
{
    public class SphereShape : Shape
    {
        private const string nativeName = "SphereShape";

        public SphereShape() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_SphereShape_Ctor(this);
        }

        internal SphereShape(bool memoryOwn) : base(memoryOwn) {}

        ~SphereShape()
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
                    NativeCalls.godot_icall_SphereShape_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_radius");

        public void set_radius(float radius)
        {
            NativeCalls.godot_icall_1_45(method_bind_0, Object.GetPtr(this), radius);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_radius");

        public float get_radius()
        {
            return NativeCalls.godot_icall_0_46(method_bind_1, Object.GetPtr(this));
        }
    }
}
