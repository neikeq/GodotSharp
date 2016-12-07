using System;

namespace GodotEngine
{
    /// <summary>
    /// Base class for all 2D Shapes. All 2D shape types inherit from this.
    /// </summary>
    public class Shape2D : Resource
    {
        private const string nativeName = "Shape2D";

        internal Shape2D() {}

        internal Shape2D(bool memoryOwn) : base(memoryOwn) {}

        ~Shape2D()
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
                    NativeCalls.godot_icall_Shape2D_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_custom_solver_bias");

        /// <summary>
        /// Use a custom solver bias. No need to change this unless you really know what you are doing.
        /// The solver bias is a factor controlling how much two objects "rebound" off each other, when colliding, to avoid them getting into each other because of numerical imprecision.
        /// </summary>
        public void set_custom_solver_bias(float bias)
        {
            NativeCalls.godot_icall_1_45(method_bind_0, Object.GetPtr(this), bias);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_custom_solver_bias");

        /// <summary>
        /// Return the custom solver bias.
        /// </summary>
        public float get_custom_solver_bias()
        {
            return NativeCalls.godot_icall_0_46(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "collide");

        /// <summary>
        /// Return whether this shape is colliding with another.
        /// This method needs the transformation matrix for this shape ([code]local_xform[/code]), the shape to check collisions with ([code]with_shape[/code]), and the transformation matrix of that shape ([code]shape_xform[/code]).
        /// </summary>
        public bool collide(Matrix32 local_xform, Shape2D with_shape, Matrix32 shape_xform)
        {
            return NativeCalls.godot_icall_3_454(method_bind_2, Object.GetPtr(this), ref local_xform, Object.GetPtr(with_shape), ref shape_xform);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "collide_with_motion");

        /// <summary>
        /// Return whether this shape would collide with another, if a given movement was applied.
        /// This method needs the transformation matrix for this shape ([code]local_xform[/code]), the movement to test on this shape ([code]local_motion[/code]), the shape to check collisions with ([code]with_shape[/code]), the transformation matrix of that shape ([code]shape_xform[/code]), and the movement to test onto the other object ([code]shape_motion[/code]).
        /// </summary>
        public bool collide_with_motion(Matrix32 local_xform, Vector2 local_motion, Shape2D with_shape, Matrix32 shape_xform, Vector2 shape_motion)
        {
            return NativeCalls.godot_icall_5_455(method_bind_3, Object.GetPtr(this), ref local_xform, ref local_motion, Object.GetPtr(with_shape), ref shape_xform, ref shape_motion);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "collide_and_get_contacts");

        /// <summary>
        /// Return a list of the points where this shape touches another. If there are no collisions, the list is empty.
        /// This method needs the transformation matrix for this shape ([code]local_xform[/code]), the shape to check collisions with ([code]with_shape[/code]), and the transformation matrix of that shape ([code]shape_xform[/code]).
        /// </summary>
        public object collide_and_get_contacts(Matrix32 local_xform, Shape2D with_shape, Matrix32 shape_xform)
        {
            return NativeCalls.godot_icall_3_456(method_bind_4, Object.GetPtr(this), ref local_xform, Object.GetPtr(with_shape), ref shape_xform);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "collide_with_motion_and_get_contacts");

        /// <summary>
        /// Return a list of the points where this shape would touch another, if a given movement was applied. If there are no collisions, the list is empty.
        /// This method needs the transformation matrix for this shape ([code]local_xform[/code]), the movement to test on this shape ([code]local_motion[/code]), the shape to check collisions with ([code]with_shape[/code]), the transformation matrix of that shape ([code]shape_xform[/code]), and the movement to test onto the other object ([code]shape_motion[/code]).
        /// </summary>
        public object collide_with_motion_and_get_contacts(Matrix32 local_xform, Vector2 local_motion, Shape2D with_shape, Matrix32 shape_xform, Vector2 shape_motion)
        {
            return NativeCalls.godot_icall_5_457(method_bind_5, Object.GetPtr(this), ref local_xform, ref local_motion, Object.GetPtr(with_shape), ref shape_xform, ref shape_motion);
        }
    }
}
