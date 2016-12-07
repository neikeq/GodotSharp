using System;

namespace GodotEngine
{
    /// <summary>
    /// Capsule shape resource, which can be set into a [PhysicsBody] or area.
    /// </summary>
    public class CapsuleShape : Shape
    {
        private const string nativeName = "CapsuleShape";

        public CapsuleShape() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_CapsuleShape_Ctor(this);
        }

        internal CapsuleShape(bool memoryOwn) : base(memoryOwn) {}

        ~CapsuleShape()
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
                    NativeCalls.godot_icall_CapsuleShape_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_radius");

        /// <summary>
        /// Set the capsule radius.
        /// </summary>
        public void set_radius(float radius)
        {
            NativeCalls.godot_icall_1_45(method_bind_0, Object.GetPtr(this), radius);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_radius");

        /// <summary>
        /// Return the capsule radius.
        /// </summary>
        public float get_radius()
        {
            return NativeCalls.godot_icall_0_46(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_height");

        /// <summary>
        /// Set the capsule height.
        /// </summary>
        public void set_height(float height)
        {
            NativeCalls.godot_icall_1_45(method_bind_2, Object.GetPtr(this), height);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_height");

        /// <summary>
        /// Return the capsule height.
        /// </summary>
        public float get_height()
        {
            return NativeCalls.godot_icall_0_46(method_bind_3, Object.GetPtr(this));
        }
    }
}
