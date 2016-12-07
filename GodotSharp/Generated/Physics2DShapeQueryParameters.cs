using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// This class contains the shape and other parameters for intersection/collision queries.
    /// </summary>
    public class Physics2DShapeQueryParameters : Reference
    {
        private const string nativeName = "Physics2DShapeQueryParameters";

        public Physics2DShapeQueryParameters() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Physics2DShapeQueryParameters_Ctor(this);
        }

        internal Physics2DShapeQueryParameters(bool memoryOwn) : base(memoryOwn) {}

        ~Physics2DShapeQueryParameters()
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
                    NativeCalls.godot_icall_Physics2DShapeQueryParameters_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shape");

        /// <summary>
        /// Set the [Shape2D] that will be used for collision/intersection queries.
        /// </summary>
        public void set_shape(Shape2D shape)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(shape));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shape_rid");

        /// <summary>
        /// Set the [RID] of the shape to be used in queries.
        /// </summary>
        public void set_shape_rid(RID shape)
        {
            NativeCalls.godot_icall_1_100(method_bind_1, Object.GetPtr(this), RID.GetPtr(shape));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shape_rid");

        /// <summary>
        /// Return the [RID] of the shape queried.
        /// </summary>
        public RID get_shape_rid()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_2, Object.GetPtr(this));
            return new RID(ret);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_transform");

        /// <summary>
        /// Set the transormation matrix of the shape. This is necessary to set its position/rotation/scale.
        /// </summary>
        public void set_transform(Matrix32 transform)
        {
            NativeCalls.godot_icall_1_140(method_bind_3, Object.GetPtr(this), ref transform);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_transform");

        /// <summary>
        /// Return the transform matrix of the shape queried.
        /// </summary>
        public Matrix32 get_transform()
        {
            object ret = NativeCalls.godot_icall_0_141(method_bind_4, Object.GetPtr(this));
            return (Matrix32)ret;
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_motion");

        /// <summary>
        /// Set the current movement speed of the shape.
        /// </summary>
        public void set_motion(Vector2 motion)
        {
            NativeCalls.godot_icall_1_23(method_bind_5, Object.GetPtr(this), ref motion);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_motion");

        /// <summary>
        /// Return the current movement speed of the shape.
        /// </summary>
        public Vector2 get_motion()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_6, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_margin");

        /// <summary>
        /// Set the collision margin for the shape. A collision margin is an amount (in pixels) that the shape will grow when computing collisions, to account for numerical imprecision.
        /// </summary>
        public void set_margin(float margin)
        {
            NativeCalls.godot_icall_1_45(method_bind_7, Object.GetPtr(this), margin);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_margin");

        /// <summary>
        /// Return the collision margin for the shape.
        /// </summary>
        public float get_margin()
        {
            return NativeCalls.godot_icall_0_46(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_layer_mask");

        /// <summary>
        /// Set the physics layer(s) the shape belongs to.
        /// </summary>
        public void set_layer_mask(int layer_mask)
        {
            NativeCalls.godot_icall_1_4(method_bind_9, Object.GetPtr(this), layer_mask);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_layer_mask");

        /// <summary>
        /// Return the physics layer(s) the shape belongs to.
        /// </summary>
        public int get_layer_mask()
        {
            return NativeCalls.godot_icall_0_0(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_object_type_mask");

        /// <summary>
        /// Set the type of object the shape belongs to (see Physics2DDirectSpaceState.TYPE_MASK_*).
        /// </summary>
        public void set_object_type_mask(int object_type_mask)
        {
            NativeCalls.godot_icall_1_4(method_bind_11, Object.GetPtr(this), object_type_mask);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_object_type_mask");

        /// <summary>
        /// Return the type of object the shape belongs to.
        /// </summary>
        public int get_object_type_mask()
        {
            return NativeCalls.godot_icall_0_0(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_exclude");

        /// <summary>
        /// Set the list of objects, or object [RID]s, that will be excluded from collisions.
        /// </summary>
        public void set_exclude(List<object> exclude)
        {
            NativeCalls.godot_icall_1_375(method_bind_13, Object.GetPtr(this), exclude.ToArray());
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_exclude");

        /// <summary>
        /// Return the list of objects, or object [RID]s, that will be excluded from collisions.
        /// </summary>
        public List<object> get_exclude()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_14, Object.GetPtr(this));
            return new List<object>(ret);
        }
    }
}
