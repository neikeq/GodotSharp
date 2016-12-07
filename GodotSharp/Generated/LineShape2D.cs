using System;

namespace GodotEngine
{
    /// <summary>
    /// Line shape for 2D collision objects. It works like a 2D plane and will not allow any body to go to the negative side. Not recommended for rigid bodies, and usually not recommended for static bodies either because it forces checks against it on every frame.
    /// </summary>
    public class LineShape2D : Shape2D
    {
        private const string nativeName = "LineShape2D";

        public LineShape2D() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_LineShape2D_Ctor(this);
        }

        internal LineShape2D(bool memoryOwn) : base(memoryOwn) {}

        ~LineShape2D()
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
                    NativeCalls.godot_icall_LineShape2D_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_normal");

        /// <summary>
        /// Set the line normal.
        /// </summary>
        public void set_normal(Vector2 normal)
        {
            NativeCalls.godot_icall_1_23(method_bind_0, Object.GetPtr(this), ref normal);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_normal");

        /// <summary>
        /// Return the line normal.
        /// </summary>
        public Vector2 get_normal()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_1, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_d");

        /// <summary>
        /// Set the line distance from the origin.
        /// </summary>
        public void set_d(float d)
        {
            NativeCalls.godot_icall_1_45(method_bind_2, Object.GetPtr(this), d);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_d");

        /// <summary>
        /// Return the line distance from the origin.
        /// </summary>
        public float get_d()
        {
            return NativeCalls.godot_icall_0_46(method_bind_3, Object.GetPtr(this));
        }
    }
}
