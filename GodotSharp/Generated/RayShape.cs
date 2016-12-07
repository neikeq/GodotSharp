using System;

namespace GodotEngine
{
    public class RayShape : Shape
    {
        private const string nativeName = "RayShape";

        public RayShape() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_RayShape_Ctor(this);
        }

        internal RayShape(bool memoryOwn) : base(memoryOwn) {}

        ~RayShape()
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
                    NativeCalls.godot_icall_RayShape_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_length");

        public void set_length(float length)
        {
            NativeCalls.godot_icall_1_45(method_bind_0, Object.GetPtr(this), length);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_length");

        public float get_length()
        {
            return NativeCalls.godot_icall_0_46(method_bind_1, Object.GetPtr(this));
        }
    }
}
