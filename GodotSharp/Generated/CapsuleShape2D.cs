using System;

namespace GodotEngine
{
    /// <summary>
    /// Capsule 2D shape resource for physics. A capsule (or sometimes called "pill") is like a line grown in all directions. It has a radius and a height, and is often useful for modeling biped characters.
    /// </summary>
    public class CapsuleShape2D : Shape2D
    {
        private const string nativeName = "CapsuleShape2D";

        public CapsuleShape2D() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_CapsuleShape2D_Ctor(this);
        }

        internal CapsuleShape2D(bool memoryOwn) : base(memoryOwn) {}

        ~CapsuleShape2D()
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
                    NativeCalls.godot_icall_CapsuleShape2D_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_radius");

        /// <summary>
        /// Set the radius of the [CapsuleShape2D].
        /// </summary>
        public void set_radius(float radius)
        {
            NativeCalls.godot_icall_1_45(method_bind_0, Object.GetPtr(this), radius);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_radius");

        /// <summary>
        /// Return the radius of the [CapsuleShape2D].
        /// </summary>
        public float get_radius()
        {
            return NativeCalls.godot_icall_0_46(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_height");

        /// <summary>
        /// Set the height of the [CapsuleShape2D].
        /// </summary>
        public void set_height(float height)
        {
            NativeCalls.godot_icall_1_45(method_bind_2, Object.GetPtr(this), height);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_height");

        /// <summary>
        /// Return the height of the [CapsuleShape2D].
        /// </summary>
        public float get_height()
        {
            return NativeCalls.godot_icall_0_46(method_bind_3, Object.GetPtr(this));
        }
    }
}
