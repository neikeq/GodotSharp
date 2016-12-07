using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Direct access object to a space in the [Physics2DServer]. It's used mainly to do queries against objects and areas residing in a given space.
    /// </summary>
    public class Physics2DDirectSpaceState : Object
    {
        /// <summary>
        /// Check for collisions with static bodies.
        /// </summary>
        public const int TYPE_MASK_STATIC_BODY = 1;
        /// <summary>
        /// Check for collisions with kinematic bodies.
        /// </summary>
        public const int TYPE_MASK_KINEMATIC_BODY = 2;
        /// <summary>
        /// Check for collisions with rigid bodies.
        /// </summary>
        public const int TYPE_MASK_RIGID_BODY = 4;
        /// <summary>
        /// Check for collisions with rigid bodies in character mode.
        /// </summary>
        public const int TYPE_MASK_CHARACTER_BODY = 8;
        /// <summary>
        /// Check for collisions with areas.
        /// </summary>
        public const int TYPE_MASK_AREA = 16;
        /// <summary>
        /// Check for collisions with any kind of bodies (but not areas).
        /// </summary>
        public const int TYPE_MASK_COLLISION = 15;

        private const string nativeName = "Physics2DDirectSpaceState";

        internal Physics2DDirectSpaceState() {}

        internal Physics2DDirectSpaceState(bool memoryOwn) : base(memoryOwn) {}

        ~Physics2DDirectSpaceState()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "intersect_point");

        /// <summary>
        /// Check whether a point is inside any shape. The shapes the point is inside of are returned in an array containing dictionaries with the following fields:
        /// shape: Shape index within the object the point is in.
        /// metadata: Metadata of the shape the point is in. This metadata is different from [method Object.get_meta], and is set with [method Physics2DServer.shape_set_data].
        /// collider_id: Id of the object the point is in.
        /// collider: Object the point is inside of.
        /// rid: [RID] of the object the point is in.
        /// Additionally, the method can take an array of objects or [RID]s that are to be excluded from collisions, a bitmask representing the physics layers to check in, and another bitmask for the types of objects to check (see TYPE_MASK_* constants).
        /// <param name="exclude">If the param is null, then the default value is new List<object>()</param>
        /// </summary>
        public List<object> intersect_point(Vector2 point, int max_results = 32, List<object> exclude = null, int layer_mask = 2147483647, int type_mask = 15)
        {
            List<object> exclude_in = exclude != null ? exclude : new List<object>();
            object[] ret = NativeCalls.godot_icall_5_346(method_bind_0, Object.GetPtr(this), ref point, max_results, exclude_in.ToArray(), layer_mask, type_mask);
            return new List<object>(ret);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "intersect_ray");

        /// <summary>
        /// Intersect a ray in a given space. The returned object is a dictionary with the following fields:
        /// position: Place where ray is stopped.
        /// normal: Normal of the object at the point where the ray was stopped.
        /// shape: Shape index within the object against which the ray was stopped.
        /// metadata: Metadata of the shape against which the ray was stopped. This metadata is different from [method Object.get_meta], and is set with [method Physics2DServer.shape_set_data].
        /// collider_id: Id of the object against which the ray was stopped.
        /// collider: Object against which the ray was stopped.
        /// rid: [RID] of the object against which the ray was stopped.
        /// If the ray did not intersect anything, then an empty dictionary (dir.empty()==true) is returned instead.
        /// Additionally, the method can take an array of objects or [RID]s that are to be excluded from collisions, a bitmask representing the physics layers to check in, and another bitmask for the types of objects to check (see TYPE_MASK_* constants).
        /// <param name="exclude">If the param is null, then the default value is new List<object>()</param>
        /// </summary>
        public Dictionary<object, object> intersect_ray(Vector2 @from, Vector2 to, List<object> exclude = null, int layer_mask = 2147483647, int type_mask = 15)
        {
            List<object> exclude_in = exclude != null ? exclude : new List<object>();
            return NativeCalls.godot_icall_5_347(method_bind_1, Object.GetPtr(this), ref @from, ref to, exclude_in.ToArray(), layer_mask, type_mask);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "intersect_shape");

        /// <summary>
        /// Check the intersections of a shape, given through a [Physics2DShapeQueryParameters] object, against the space. The intersected shapes are returned in an array containing dictionaries with the following fields:
        /// shape: Shape index within the object the shape intersected.
        /// metadata: Metadata of the shape intersected by the shape given through the [Physics2DShapeQueryParameters]. This metadata is different from [method Object.get_meta], and is set with [method Physics2DServer.shape_set_data].
        /// collider_id: Id of the object the shape intersected.
        /// collider: Object the shape intersected.
        /// rid: [RID] of the object the shape intersected.
        /// The number of intersections can be limited with the second paramater, to reduce the processing time.
        /// </summary>
        public List<object> intersect_shape(Physics2DShapeQueryParameters shape, int max_results = 32)
        {
            object[] ret = NativeCalls.godot_icall_2_348(method_bind_2, Object.GetPtr(this), Object.GetPtr(shape), max_results);
            return new List<object>(ret);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cast_motion");

        /// <summary>
        /// Check whether the shape can travel to a point. If it can, the method will return an array with two floats: The first is the distance the shape can move in that direction without colliding, and the second is the distance at which it will collide.
        /// If the shape can not move, the array will be empty.
        /// </summary>
        public List<object> cast_motion(Physics2DShapeQueryParameters shape)
        {
            object[] ret = NativeCalls.godot_icall_1_349(method_bind_3, Object.GetPtr(this), Object.GetPtr(shape));
            return new List<object>(ret);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "collide_shape");

        /// <summary>
        /// Check the intersections of a shape, given through a [Physics2DShapeQueryParameters] object, against the space. The resulting array contains a list of points where the shape intersects another. Like with [method intersect_shape], the number of returned results can be limited to save processing time.
        /// </summary>
        public List<object> collide_shape(Physics2DShapeQueryParameters shape, int max_results = 32)
        {
            object[] ret = NativeCalls.godot_icall_2_348(method_bind_4, Object.GetPtr(this), Object.GetPtr(shape), max_results);
            return new List<object>(ret);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rest_info");

        /// <summary>
        /// Check the intersections of a shape, given through a [Physics2DShapeQueryParameters] object, against the space. If it collides with more than a shape, the nearest one is selected. The returned object is a dictionary containing the following fields:
        /// pointo: Place where the shapes intersect.
        /// normal: Normal of the object at the point where the shapes intersect.
        /// shape: Shape index within the object against which the shape intersected.
        /// metadata: Metadata of the shape against which the shape intersected. This metadata is different from [method Object.get_meta], and is set with [method Physics2DServer.shape_set_data].
        /// collider_id: Id of the object against which the shape intersected.
        /// collider: Object against which the shape intersected.
        /// rid: [RID] of the object against which the shape intersected.
        /// linear_velocity: The movement vector of the object the shape intersected, if it was a body. If it was an area, it is (0,0).
        /// If the shape did not intersect anything, then an empty dictionary (dir.empty()==true) is returned instead.
        /// </summary>
        public Dictionary<object, object> get_rest_info(Physics2DShapeQueryParameters shape)
        {
            return NativeCalls.godot_icall_1_350(method_bind_5, Object.GetPtr(this), Object.GetPtr(shape));
        }
    }
}
