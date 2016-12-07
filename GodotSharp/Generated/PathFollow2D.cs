using System;

namespace GodotEngine
{
    /// <summary>
    /// This node takes its parent [Path2D], and returns the coordinates of a point within it, given a distance from the first vertex.
    /// It is useful for making other nodes follow a path, without coding the movement pattern. For that, the nodes must be descendants of this node. Then, when setting an offset in this node, the descendant nodes will move accordingly.
    /// </summary>
    public class PathFollow2D : Node2D
    {
        private const string nativeName = "PathFollow2D";

        public PathFollow2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_PathFollow2D_Ctor(this);
        }

        internal PathFollow2D(bool memoryOwn) : base(memoryOwn) {}

        ~PathFollow2D()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_offset");

        /// <summary>
        /// Sets the distance from the first vertex, measured in pixels along the path. This sets this node's position to a point within the path.
        /// </summary>
        public void set_offset(float offset)
        {
            NativeCalls.godot_icall_1_45(method_bind_0, Object.GetPtr(this), offset);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_offset");

        /// <summary>
        /// Returns the distance along the path in pixels.
        /// </summary>
        public float get_offset()
        {
            return NativeCalls.godot_icall_0_46(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_h_offset");

        /// <summary>
        /// Moves this node horizontally. As this node's position will be set every time its offset is set, this allows many PathFollow2D to share the same curve (and thus the same movement pattern), yet not return the same position for a given path offset.
        /// A similar effect may be achieved moving this node's descendants.
        /// </summary>
        public void set_h_offset(float h_offset)
        {
            NativeCalls.godot_icall_1_45(method_bind_2, Object.GetPtr(this), h_offset);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_h_offset");

        /// <summary>
        /// Returns the horizontal displacement this node has from its parent [Path2D].
        /// </summary>
        public float get_h_offset()
        {
            return NativeCalls.godot_icall_0_46(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_v_offset");

        /// <summary>
        /// Moves the PathFollow2D vertically, for the same reasons of [method set_h_offset].
        /// </summary>
        public void set_v_offset(float v_offset)
        {
            NativeCalls.godot_icall_1_45(method_bind_4, Object.GetPtr(this), v_offset);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_v_offset");

        /// <summary>
        /// Returns the vertical displacement this node has from its parent [Path2D].
        /// </summary>
        public float get_v_offset()
        {
            return NativeCalls.godot_icall_0_46(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_unit_offset");

        /// <summary>
        /// Sets the distance from the first vertex, considering 0.0 as the first vertex and 1.0 as the last. This is just another way of expressing the offset within the path, as the offset supplied is multiplied internally by the path's length.
        /// </summary>
        public void set_unit_offset(float unit_offset)
        {
            NativeCalls.godot_icall_1_45(method_bind_6, Object.GetPtr(this), unit_offset);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_unit_offset");

        /// <summary>
        /// Returns the distance along the path as a number in the range 0.0 (for the first vertex) to 1.0 (for the last).
        /// </summary>
        public float get_unit_offset()
        {
            return NativeCalls.godot_icall_0_46(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_rotate");

        /// <summary>
        /// If set, this node rotates to follow the path, making its descendants rotate.
        /// </summary>
        public void set_rotate(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_8, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_rotating");

        /// <summary>
        /// Returns whether this node rotates to follow the path.
        /// </summary>
        public bool is_rotating()
        {
            return NativeCalls.godot_icall_0_14(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_cubic_interpolation");

        /// <summary>
        /// The points along the [Curve2D] of the [Path2D] are precomputed before use, for faster calculations. The point at the requested offset is then calculated interpolating between two adjacent cached points. This may present a problem if the curve makes sharp turns, as the cached points may not follow the curve closely enough.
        /// There are two answers to this problem: Either increase the number of cached points and increase memory consumption, or make a cubic interpolation between two points at the cost of (slightly) slower calculations.
        /// This method controls whether the position between two cached points is interpolated linearly, or cubicly.
        /// </summary>
        public void set_cubic_interpolation(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_10, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_cubic_interpolation");

        /// <summary>
        /// This method returns whether the position between two cached points (see [method set_cubic_interpolation]) is interpolated linearly, or cubicly.
        /// </summary>
        public bool get_cubic_interpolation()
        {
            return NativeCalls.godot_icall_0_14(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_loop");

        /// <summary>
        /// If set, any offset outside the path's length (whether set by [method set_offset] or [method set_unit_offset] will wrap around, instead of stopping at the ends. Set it for cyclic paths.
        /// </summary>
        public void set_loop(bool loop)
        {
            NativeCalls.godot_icall_1_13(method_bind_12, Object.GetPtr(this), loop);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_loop");

        /// <summary>
        /// Returns whether this node wraps its offsets around, or truncates them to the path ends.
        /// </summary>
        public bool has_loop()
        {
            return NativeCalls.godot_icall_0_14(method_bind_13, Object.GetPtr(this));
        }
    }
}
