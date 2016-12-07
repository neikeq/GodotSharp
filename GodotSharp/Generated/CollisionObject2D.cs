using System;

namespace GodotEngine
{
    /// <summary>
    /// CollisionObject2D is the base class for 2D physics collisionables. They can hold any number of 2D collision shapes. Usually, they are edited by placing [CollisionShape2D] and/or [CollisionPolygon2D] nodes as children. Such nodes are for reference and not present outside the editor, so code should use the regular shape API.
    /// </summary>
    public class CollisionObject2D : Node2D
    {
        private const string nativeName = "CollisionObject2D";

        internal CollisionObject2D() {}

        internal CollisionObject2D(bool memoryOwn) : base(memoryOwn) {}

        ~CollisionObject2D()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_shape");

        /// <summary>
        /// Add a [Shape2D] to the collision body, with a given custom transform.
        /// <param name="transform">If the param is null, then the default value is Matrix32.Identity</param>
        /// </summary>
        public void add_shape(Shape2D shape, Nullable<Matrix32> transform = null)
        {
            Matrix32 transform_in = transform.HasValue ? transform.Value : Matrix32.Identity;
            NativeCalls.godot_icall_2_152(method_bind_0, Object.GetPtr(this), Object.GetPtr(shape), ref transform_in);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shape_count");

        /// <summary>
        /// Return the amount of shapes in the collision body. Because a [CollisionPolygon2D] can generate more than one [Shape2D], the amount returned does not have to match the sum of [CollisionShape2D] and [CollisionPolygon2D].
        /// </summary>
        public int get_shape_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shape");

        /// <summary>
        /// Change a shape in the collision body.
        /// </summary>
        public void set_shape(int shape_idx, Shape shape)
        {
            NativeCalls.godot_icall_2_115(method_bind_2, Object.GetPtr(this), shape_idx, Object.GetPtr(shape));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shape_transform");

        /// <summary>
        /// Change the shape transform in the collision body.
        /// </summary>
        public void set_shape_transform(int shape_idx, Matrix32 transform)
        {
            NativeCalls.godot_icall_2_153(method_bind_3, Object.GetPtr(this), shape_idx, ref transform);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shape_as_trigger");

        /// <summary>
        /// Set whether a shape is a trigger. A trigger shape detects collisions, but is otherwise unaffected by physics (i.e. colliding objects will not get blocked).
        /// </summary>
        public void set_shape_as_trigger(int shape_idx, bool enable)
        {
            NativeCalls.godot_icall_2_32(method_bind_4, Object.GetPtr(this), shape_idx, enable);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shape");

        /// <summary>
        /// Return the shape in the given index.
        /// </summary>
        public Shape2D get_shape(int shape_idx)
        {
            return NativeCalls.godot_icall_1_154(method_bind_5, Object.GetPtr(this), shape_idx);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shape_transform");

        /// <summary>
        /// Return the shape transform in the given index.
        /// </summary>
        public Matrix32 get_shape_transform(int shape_idx)
        {
            object ret = NativeCalls.godot_icall_1_155(method_bind_6, Object.GetPtr(this), shape_idx);
            return (Matrix32)ret;
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_shape_set_as_trigger");

        /// <summary>
        /// Return whether a shape is a trigger. A trigger shape detects collisions, but is otherwise unaffected by physics (i.e. colliding objects will not get blocked).
        /// </summary>
        public bool is_shape_set_as_trigger(int shape_idx)
        {
            return NativeCalls.godot_icall_1_33(method_bind_7, Object.GetPtr(this), shape_idx);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_shape");

        /// <summary>
        /// Remove the shape in the given index.
        /// </summary>
        public void remove_shape(int shape_idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_8, Object.GetPtr(this), shape_idx);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_shapes");

        /// <summary>
        /// Remove all shapes.
        /// </summary>
        public void clear_shapes()
        {
            NativeCalls.godot_icall_0_7(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rid");

        /// <summary>
        /// Return the RID of this object.
        /// </summary>
        public RID get_rid()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_10, Object.GetPtr(this));
            return new RID(ret);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_pickable");

        /// <summary>
        /// Set whether this object is pickable. A pickable object can detect the mouse pointer enter/leave it and, if the mouse is inside it, report input events.
        /// </summary>
        public void set_pickable(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_11, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_pickable");

        /// <summary>
        /// Return whether this object is pickable.
        /// </summary>
        public bool is_pickable()
        {
            return NativeCalls.godot_icall_0_14(method_bind_12, Object.GetPtr(this));
        }
    }
}
