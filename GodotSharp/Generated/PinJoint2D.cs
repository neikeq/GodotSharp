using System;

namespace GodotEngine
{
    /// <summary>
    /// Pin Joint for 2D Rigid Bodies. It pins 2 bodies (rigid or static) together, or a single body to a fixed position in space.
    /// </summary>
    public class PinJoint2D : Joint2D
    {
        private const string nativeName = "PinJoint2D";

        public PinJoint2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_PinJoint2D_Ctor(this);
        }

        internal PinJoint2D(bool memoryOwn) : base(memoryOwn) {}

        ~PinJoint2D()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_softness");

        public void set_softness(float softness)
        {
            NativeCalls.godot_icall_1_45(method_bind_0, Object.GetPtr(this), softness);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_softness");

        public float get_softness()
        {
            return NativeCalls.godot_icall_0_46(method_bind_1, Object.GetPtr(this));
        }
    }
}
