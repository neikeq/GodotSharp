using System;

namespace GodotEngine
{
    /// <summary>
    /// Segment Shape for 2D Collision Detection, consists of two points, 'a' and 'b'.
    /// </summary>
    public class SegmentShape2D : Shape2D
    {
        private const string nativeName = "SegmentShape2D";

        public SegmentShape2D() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_SegmentShape2D_Ctor(this);
        }

        internal SegmentShape2D(bool memoryOwn) : base(memoryOwn) {}

        ~SegmentShape2D()
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
                    NativeCalls.godot_icall_SegmentShape2D_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_a");

        /// <summary>
        /// Set the first point's position.
        /// </summary>
        public void set_a(Vector2 a)
        {
            NativeCalls.godot_icall_1_23(method_bind_0, Object.GetPtr(this), ref a);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_a");

        /// <summary>
        /// Return the first point's position.
        /// </summary>
        public Vector2 get_a()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_1, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_b");

        /// <summary>
        /// Set the second point's position.
        /// </summary>
        public void set_b(Vector2 b)
        {
            NativeCalls.godot_icall_1_23(method_bind_2, Object.GetPtr(this), ref b);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_b");

        /// <summary>
        /// Return the second point's position.
        /// </summary>
        public Vector2 get_b()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_3, Object.GetPtr(this));
            return (Vector2)ret;
        }
    }
}
