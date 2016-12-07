using System;

namespace GodotEngine
{
    /// <summary>
    /// Groove constraint for 2D physics. This is useful for making a body "slide" through a segment placed in another.
    /// </summary>
    public class GrooveJoint2D : Joint2D
    {
        private const string nativeName = "GrooveJoint2D";

        public GrooveJoint2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_GrooveJoint2D_Ctor(this);
        }

        internal GrooveJoint2D(bool memoryOwn) : base(memoryOwn) {}

        ~GrooveJoint2D()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_length");

        /// <summary>
        /// Set the length of the groove.
        /// </summary>
        public void set_length(float length)
        {
            NativeCalls.godot_icall_1_45(method_bind_0, Object.GetPtr(this), length);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_length");

        /// <summary>
        /// Return the length of the groove.
        /// </summary>
        public float get_length()
        {
            return NativeCalls.godot_icall_0_46(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_initial_offset");

        /// <summary>
        /// Set the initial offset of the groove on body A.
        /// </summary>
        public void set_initial_offset(float offset)
        {
            NativeCalls.godot_icall_1_45(method_bind_2, Object.GetPtr(this), offset);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_initial_offset");

        /// <summary>
        /// Set the final offset of the groove on body A.
        /// </summary>
        public float get_initial_offset()
        {
            return NativeCalls.godot_icall_0_46(method_bind_3, Object.GetPtr(this));
        }
    }
}
