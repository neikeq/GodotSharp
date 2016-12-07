using System;

namespace GodotEngine
{
    /// <summary>
    /// Physics 2D Server is the server responsible for all 2D physics. It can create many kinds of physics objects, but does not insert them on the node tree.
    /// </summary>
    public static class Physics2DServer
    {
        /// <summary>
        /// Constant to set/get the maximum distance a pair of bodies has to move before their collision status has to be recalculated.
        /// </summary>
        public const int SPACE_PARAM_CONTACT_RECYCLE_RADIUS = 0;
        /// <summary>
        /// Constant to set/get the maximum distance a shape can be from another before they are considered separated.
        /// </summary>
        public const int SPACE_PARAM_CONTACT_MAX_SEPARATION = 1;
        /// <summary>
        /// Constant to set/get the maximum distance a shape can penetrate another shape before it is considered a collision.
        /// </summary>
        public const int SPACE_PARAM_BODY_MAX_ALLOWED_PENETRATION = 2;
        /// <summary>
        /// Constant to set/get the linear velocity threshold. Bodies slower than this will be marked as potentially inactive.
        /// </summary>
        public const int SPACE_PARAM_BODY_LINEAR_VELOCITY_SLEEP_TRESHOLD = 3;
        /// <summary>
        /// Constant to set/get the angular velocity threshold. Bodies slower than this will be marked as potentially inactive.
        /// </summary>
        public const int SPACE_PARAM_BODY_ANGULAR_VELOCITY_SLEEP_TRESHOLD = 4;
        /// <summary>
        /// Constant to set/get the maximum time of activity. A body marked as potentially inactive for both linear and angular velocity will be put to sleep after this time.
        /// </summary>
        public const int SPACE_PARAM_BODY_TIME_TO_SLEEP = 5;
        /// <summary>
        /// Constant to set/get the default solver bias for all physics constraints. A solver bias is a factor controlling how much two objects "rebound", after violating a constraint, to avoid leaving them in that state because of numerical imprecision.
        /// </summary>
        public const int SPACE_PARAM_CONSTRAINT_DEFAULT_BIAS = 6;
        /// <summary>
        /// This is the constant for creating line shapes. A line shape is an infinite line with an origin point, and a normal. Thus, it can be used for front/behind checks.
        /// </summary>
        public const int SHAPE_LINE = 0;
        /// <summary>
        /// This is the constant for creating segment shapes. A segment shape is a line from a point A to a point B. It can be checked for intersections.
        /// </summary>
        public const int SHAPE_SEGMENT = 2;
        /// <summary>
        /// This is the constant for creating circle shapes. A circle shape only has a radius. It can be used for intersections and inside/outside checks.
        /// </summary>
        public const int SHAPE_CIRCLE = 3;
        /// <summary>
        /// This is the constant for creating rectangle shapes. A rectangle shape is defined by a width and a height. It can be used for intersections and inside/outside checks.
        /// </summary>
        public const int SHAPE_RECTANGLE = 4;
        /// <summary>
        /// This is the constant for creating capsule shapes. A capsule shape is defined by a radius and a length. It can be used for intersections and inside/outside checks.
        /// </summary>
        public const int SHAPE_CAPSULE = 5;
        /// <summary>
        /// This is the constant for creating convex polygon shapes. A polygon is defined by a list of points. It can be used for intersections and inside/outside checks. Unlike the method [method CollisionPolygon2D.set_polygon], polygons modified with [method shape_set_data] do not verify that the points supplied form, in fact, a convex polygon.
        /// </summary>
        public const int SHAPE_CONVEX_POLYGON = 6;
        /// <summary>
        /// This is the constant for creating concave polygon shapes. A polygon is defined by a list of points. It can be used for intersections checks, but not for inside/outside checks.
        /// </summary>
        public const int SHAPE_CONCAVE_POLYGON = 7;
        /// <summary>
        /// This constant is used internally by the engine. Any attempt to create this kind of shape results in an error.
        /// </summary>
        public const int SHAPE_CUSTOM = 8;
        /// <summary>
        /// Constant to set/get gravity strength in an area.
        /// </summary>
        public const int AREA_PARAM_GRAVITY = 0;
        /// <summary>
        /// Constant to set/get gravity vector/center in an area.
        /// </summary>
        public const int AREA_PARAM_GRAVITY_VECTOR = 1;
        /// <summary>
        /// Constant to set/get whether the gravity vector of an area is a direction, or a center point.
        /// </summary>
        public const int AREA_PARAM_GRAVITY_IS_POINT = 2;
        /// <summary>
        /// Constant to set/get the falloff factor for point gravity of an area. The greater this value is, the faster the strength of gravity decreases with the square of distance.
        /// </summary>
        public const int AREA_PARAM_GRAVITY_DISTANCE_SCALE = 3;
        /// <summary>
        /// This constant was used to set/get the falloff factor for point gravity. It has been superseded by AREA_PARAM_GRAVITY_DISTANCE_SCALE.
        /// </summary>
        public const int AREA_PARAM_GRAVITY_POINT_ATTENUATION = 4;
        /// <summary>
        /// Constant to set/get the linear dampening factor of an area.
        /// </summary>
        public const int AREA_PARAM_LINEAR_DAMP = 5;
        /// <summary>
        /// Constant to set/get the angular dampening factor of an area.
        /// </summary>
        public const int AREA_PARAM_ANGULAR_DAMP = 6;
        /// <summary>
        /// Constant to set/get the priority (order of processing) of an area.
        /// </summary>
        public const int AREA_PARAM_PRIORITY = 7;
        /// <summary>
        /// This area does not affect gravity/damp. These are generally areas that exist only to detect collisions, and objects entering or exiting them.
        /// </summary>
        public const int AREA_SPACE_OVERRIDE_DISABLED = 0;
        /// <summary>
        /// This area adds its gravity/damp values to whatever has been calculated so far. This way, many overlapping areas can combine their physics to make interesting effects.
        /// </summary>
        public const int AREA_SPACE_OVERRIDE_COMBINE = 1;
        /// <summary>
        /// This area adds its gravity/damp values to whatever has been calculated so far. Then stops taking into account the rest of the areas, even the default one.
        /// </summary>
        public const int AREA_SPACE_OVERRIDE_COMBINE_REPLACE = 2;
        /// <summary>
        /// This area replaces any gravity/damp, even the default one, and stops taking into account the rest of the areas.
        /// </summary>
        public const int AREA_SPACE_OVERRIDE_REPLACE = 3;
        /// <summary>
        /// This area replaces any gravity/damp calculated so far, but keeps calculating the rest of the areas, down to the default one.
        /// </summary>
        public const int AREA_SPACE_OVERRIDE_REPLACE_COMBINE = 4;
        /// <summary>
        /// Constant for static bodies.
        /// </summary>
        public const int BODY_MODE_STATIC = 0;
        /// <summary>
        /// Constant for kinematic bodies.
        /// </summary>
        public const int BODY_MODE_KINEMATIC = 1;
        /// <summary>
        /// Constant for rigid bodies.
        /// </summary>
        public const int BODY_MODE_RIGID = 2;
        /// <summary>
        /// Constant for rigid bodies in character mode. In this mode, a body can not rotate, and only its linear velocity is affected by physics.
        /// </summary>
        public const int BODY_MODE_CHARACTER = 3;
        /// <summary>
        /// Constant to set/get a body's bounce factor.
        /// </summary>
        public const int BODY_PARAM_BOUNCE = 0;
        /// <summary>
        /// Constant to set/get a body's friction.
        /// </summary>
        public const int BODY_PARAM_FRICTION = 1;
        /// <summary>
        /// Constant to set/get a body's mass.
        /// </summary>
        public const int BODY_PARAM_MASS = 2;
        /// <summary>
        /// Constant to set/get a body's inertia.
        /// </summary>
        public const int BODY_PARAM_INERTIA = 3;
        /// <summary>
        /// Constant to set/get a body's gravity multiplier.
        /// </summary>
        public const int BODY_PARAM_GRAVITY_SCALE = 4;
        /// <summary>
        /// Constant to set/get a body's linear dampening factor.
        /// </summary>
        public const int BODY_PARAM_LINEAR_DAMP = 5;
        /// <summary>
        /// Constant to set/get a body's angular dampening factor.
        /// </summary>
        public const int BODY_PARAM_ANGULAR_DAMP = 6;
        /// <summary>
        /// This is the last ID for body parameters. Any attempt to set this property is ignored. Any attempt to get it returns 0.
        /// </summary>
        public const int BODY_PARAM_MAX = 7;
        /// <summary>
        /// Constant to set/get the current transform matrix of the body.
        /// </summary>
        public const int BODY_STATE_TRANSFORM = 0;
        /// <summary>
        /// Constant to set/get the current linear velocity of the body.
        /// </summary>
        public const int BODY_STATE_LINEAR_VELOCITY = 1;
        /// <summary>
        /// Constant to set/get the current angular velocity of the body.
        /// </summary>
        public const int BODY_STATE_ANGULAR_VELOCITY = 2;
        /// <summary>
        /// Constant to sleep/wake up a body, or to get whether it is sleeping.
        /// </summary>
        public const int BODY_STATE_SLEEPING = 3;
        /// <summary>
        /// Constant to set/get whether the body can sleep.
        /// </summary>
        public const int BODY_STATE_CAN_SLEEP = 4;
        /// <summary>
        /// Constant to create pin joints.
        /// </summary>
        public const int JOINT_PIN = 0;
        /// <summary>
        /// Constant to create groove joints.
        /// </summary>
        public const int JOINT_GROOVE = 1;
        /// <summary>
        /// Constant to create damped spring joints.
        /// </summary>
        public const int JOINT_DAMPED_SPRING = 2;
        /// <summary>
        /// Set the resting length of the spring joint. The joint will always try to go to back this length when pulled apart.
        /// </summary>
        public const int DAMPED_STRING_REST_LENGTH = 0;
        /// <summary>
        /// Set the stiffness of the spring joint. The joint applies a force equal to the stiffness times the distance from its resting length.
        /// </summary>
        public const int DAMPED_STRING_STIFFNESS = 1;
        /// <summary>
        /// Set the damping ratio of the spring joint. A value of 0 indicates an undamped spring, while 1 causes the system to reach equilibrium as fast as possible (critical damping).
        /// </summary>
        public const int DAMPED_STRING_DAMPING = 2;
        /// <summary>
        /// Disables continuous collision detection. This is the fastest way to detect body collisions, but can miss small, fast-moving objects.
        /// </summary>
        public const int CCD_MODE_DISABLED = 0;
        /// <summary>
        /// Enables continuous collision detection by raycasting. It is faster than shapecasting, but less precise.
        /// </summary>
        public const int CCD_MODE_CAST_RAY = 1;
        /// <summary>
        /// Enables continuous collision detection by shapecasting. It is the slowest CCD method, and the most precise.
        /// </summary>
        public const int CCD_MODE_CAST_SHAPE = 2;
        /// <summary>
        /// The value of the first parameter and area callback function receives, when an object enters one of its shapes.
        /// </summary>
        public const int AREA_BODY_ADDED = 0;
        /// <summary>
        /// The value of the first parameter and area callback function receives, when an object exits one of its shapes.
        /// </summary>
        public const int AREA_BODY_REMOVED = 1;
        /// <summary>
        /// Constant to get the number of objects that are not sleeping.
        /// </summary>
        public const int INFO_ACTIVE_OBJECTS = 0;
        /// <summary>
        /// Constant to get the number of possible collisions.
        /// </summary>
        public const int INFO_COLLISION_PAIRS = 1;
        /// <summary>
        /// Constant to get the number of space regions where a collision could occur.
        /// </summary>
        public const int INFO_ISLAND_COUNT = 2;

        private const string nativeName = "Physics2DServer";
        internal static IntPtr ptr = NativeCalls.godot_icall_Physics2DServer_get_singleton();

        private static IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "shape_create");

        /// <summary>
        /// Create a shape of type SHAPE_*. Does not assign it to a body or an area. To do so, you must use [method area_set_shape] or [method body_set_shape].
        /// </summary>
        public static RID shape_create(int type)
        {
            IntPtr ret = NativeCalls.godot_icall_1_343(method_bind_0, ptr, type);
            return new RID(ret);
        }

        private static IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "shape_set_data");

        /// <summary>
        /// Set the shape data that defines its shape and size. The data to be passed depends on the kind of shape created [method shape_get_type].
        /// </summary>
        public static void shape_set_data(RID shape, object data)
        {
            NativeCalls.godot_icall_2_351(method_bind_1, ptr, RID.GetPtr(shape), data);
        }

        private static IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "shape_get_type");

        /// <summary>
        /// Return the type of shape (see SHAPE_* constants).
        /// </summary>
        public static int shape_get_type(RID shape)
        {
            return NativeCalls.godot_icall_1_86(method_bind_2, ptr, RID.GetPtr(shape));
        }

        private static IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "shape_get_data");

        /// <summary>
        /// Return the shape data.
        /// </summary>
        public static void shape_get_data(RID shape)
        {
            NativeCalls.godot_icall_1_100(method_bind_3, ptr, RID.GetPtr(shape));
        }

        private static IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "space_create");

        /// <summary>
        /// Create a space. A space is a collection of parameters for the physics engine that can be assigned to an area or a body. It can be assigned to an area with [method area_set_space], or to a body with [method body_set_space].
        /// </summary>
        public static RID space_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_4, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "space_set_active");

        /// <summary>
        /// Mark a space as active. It will not have an effect, unless it is assigned to an area or body.
        /// </summary>
        public static void space_set_active(RID space, bool active)
        {
            NativeCalls.godot_icall_2_98(method_bind_5, ptr, RID.GetPtr(space), active);
        }

        private static IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "space_is_active");

        /// <summary>
        /// Return whether the space is active.
        /// </summary>
        public static bool space_is_active(RID space)
        {
            return NativeCalls.godot_icall_1_87(method_bind_6, ptr, RID.GetPtr(space));
        }

        private static IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "space_set_param");

        /// <summary>
        /// Set the value for a space parameter. A list of available parameters is on the SPACE_PARAM_* constants.
        /// </summary>
        public static void space_set_param(RID space, int param, float @value)
        {
            NativeCalls.godot_icall_3_97(method_bind_7, ptr, RID.GetPtr(space), param, @value);
        }

        private static IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "space_get_param");

        /// <summary>
        /// Return the value of a space parameter.
        /// </summary>
        public static float space_get_param(RID space, int param)
        {
            return NativeCalls.godot_icall_2_352(method_bind_8, ptr, RID.GetPtr(space), param);
        }

        private static IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "space_get_direct_state");

        /// <summary>
        /// Return the state of a space, a [Physics2DDirectSpaceState]. This object can be used to make collision/intersection queries.
        /// </summary>
        public static Physics2DDirectSpaceState space_get_direct_state(RID space)
        {
            return NativeCalls.godot_icall_1_353(method_bind_9, ptr, RID.GetPtr(space));
        }

        private static IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_create");

        /// <summary>
        /// Create an [Area2D].
        /// </summary>
        public static RID area_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_10, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_space");

        /// <summary>
        /// Assign a space to the area.
        /// </summary>
        public static void area_set_space(RID area, RID space)
        {
            NativeCalls.godot_icall_2_93(method_bind_11, ptr, RID.GetPtr(area), RID.GetPtr(space));
        }

        private static IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_get_space");

        /// <summary>
        /// Return the space assigned to the area.
        /// </summary>
        public static RID area_get_space(RID area)
        {
            IntPtr ret = NativeCalls.godot_icall_1_354(method_bind_12, ptr, RID.GetPtr(area));
            return new RID(ret);
        }

        private static IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_space_override_mode");

        /// <summary>
        /// Set the space override mode for the area. The modes are described in the constants AREA_SPACE_OVERRIDE_*.
        /// </summary>
        public static void area_set_space_override_mode(RID area, int mode)
        {
            NativeCalls.godot_icall_2_91(method_bind_13, ptr, RID.GetPtr(area), mode);
        }

        private static IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_get_space_override_mode");

        /// <summary>
        /// Return the space override mode for the area.
        /// </summary>
        public static int area_get_space_override_mode(RID area)
        {
            return NativeCalls.godot_icall_1_86(method_bind_14, ptr, RID.GetPtr(area));
        }

        private static IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_add_shape");

        /// <summary>
        /// Add a shape to the area, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
        /// <param name="transform">If the param is null, then the default value is Matrix32.Identity</param>
        /// </summary>
        public static void area_add_shape(RID area, RID shape, Nullable<Matrix32> transform = null)
        {
            Matrix32 transform_in = transform.HasValue ? transform.Value : Matrix32.Identity;
            NativeCalls.godot_icall_3_355(method_bind_15, ptr, RID.GetPtr(area), RID.GetPtr(shape), ref transform_in);
        }

        private static IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_shape");

        /// <summary>
        /// Substitute a given area shape by another. The old shape is selected by its index, the new one by its [RID].
        /// </summary>
        public static void area_set_shape(RID area, int shape_idx, RID shape)
        {
            NativeCalls.godot_icall_3_356(method_bind_16, ptr, RID.GetPtr(area), shape_idx, RID.GetPtr(shape));
        }

        private static IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_shape_transform");

        /// <summary>
        /// Set the transform matrix for an area shape.
        /// </summary>
        public static void area_set_shape_transform(RID area, int shape_idx, Matrix32 transform)
        {
            NativeCalls.godot_icall_3_357(method_bind_17, ptr, RID.GetPtr(area), shape_idx, ref transform);
        }

        private static IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_get_shape_count");

        /// <summary>
        /// Return the number of shapes assigned to an area.
        /// </summary>
        public static int area_get_shape_count(RID area)
        {
            return NativeCalls.godot_icall_1_86(method_bind_18, ptr, RID.GetPtr(area));
        }

        private static IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_get_shape");

        /// <summary>
        /// Return the [RID] of the nth shape of an area.
        /// </summary>
        public static RID area_get_shape(RID area, int shape_idx)
        {
            IntPtr ret = NativeCalls.godot_icall_2_358(method_bind_19, ptr, RID.GetPtr(area), shape_idx);
            return new RID(ret);
        }

        private static IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_get_shape_transform");

        /// <summary>
        /// Return the transform matrix of a shape within an area.
        /// </summary>
        public static Matrix32 area_get_shape_transform(RID area, int shape_idx)
        {
            object ret = NativeCalls.godot_icall_2_359(method_bind_20, ptr, RID.GetPtr(area), shape_idx);
            return (Matrix32)ret;
        }

        private static IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_remove_shape");

        /// <summary>
        /// Remove a shape from an area. It does not delete the shape, so it can be reassigned later.
        /// </summary>
        public static void area_remove_shape(RID area, int shape_idx)
        {
            NativeCalls.godot_icall_2_91(method_bind_21, ptr, RID.GetPtr(area), shape_idx);
        }

        private static IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_clear_shapes");

        /// <summary>
        /// Remove all shapes from an area. It does not delete the shapes, so they can be reassigned later.
        /// </summary>
        public static void area_clear_shapes(RID area)
        {
            NativeCalls.godot_icall_1_100(method_bind_22, ptr, RID.GetPtr(area));
        }

        private static IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_layer_mask");

        /// <summary>
        /// Assign the area to one or many physics layers.
        /// </summary>
        public static void area_set_layer_mask(RID area, int mask)
        {
            NativeCalls.godot_icall_2_91(method_bind_23, ptr, RID.GetPtr(area), mask);
        }

        private static IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_collision_mask");

        /// <summary>
        /// Set which physics layers the area will monitor.
        /// </summary>
        public static void area_set_collision_mask(RID area, int mask)
        {
            NativeCalls.godot_icall_2_91(method_bind_24, ptr, RID.GetPtr(area), mask);
        }

        private static IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_param");

        /// <summary>
        /// Set the value for an area parameter. A list of available parameters is on the AREA_PARAM_* constants.
        /// </summary>
        public static void area_set_param(RID area, int param, object @value)
        {
            NativeCalls.godot_icall_3_360(method_bind_25, ptr, RID.GetPtr(area), param, @value);
        }

        private static IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_transform");

        /// <summary>
        /// Set the transform matrix for an area.
        /// </summary>
        public static void area_set_transform(RID area, Matrix32 transform)
        {
            NativeCalls.godot_icall_2_361(method_bind_26, ptr, RID.GetPtr(area), ref transform);
        }

        private static IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_get_param");

        /// <summary>
        /// Return an area parameter value.
        /// </summary>
        public static void area_get_param(RID area, int param)
        {
            NativeCalls.godot_icall_2_91(method_bind_27, ptr, RID.GetPtr(area), param);
        }

        private static IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_get_transform");

        /// <summary>
        /// Return the transform matrix for an area.
        /// </summary>
        public static Matrix32 area_get_transform(RID area)
        {
            object ret = NativeCalls.godot_icall_1_362(method_bind_28, ptr, RID.GetPtr(area));
            return (Matrix32)ret;
        }

        private static IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_attach_object_instance_ID");

        /// <summary>
        /// Assign the area to a descendant of [Object], so it can exist in the node tree.
        /// </summary>
        public static void area_attach_object_instance_ID(RID area, int id)
        {
            NativeCalls.godot_icall_2_91(method_bind_29, ptr, RID.GetPtr(area), id);
        }

        private static IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_get_object_instance_ID");

        /// <summary>
        /// Get the instance ID of the object the area is assigned to.
        /// </summary>
        public static int area_get_object_instance_ID(RID area)
        {
            return NativeCalls.godot_icall_1_86(method_bind_30, ptr, RID.GetPtr(area));
        }

        private static IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_monitor_callback");

        /// <summary>
        /// Set the function to call when any body/area enters or exits the area. This callback will be called for any object interacting with the area, and takes five parameters:
        /// 1: AREA_BODY_ADDED or AREA_BODY_REMOVED, depending on whether the object entered or exited the area.
        /// 2: [RID] of the object that entered/exited the area.
        /// 3: Instance ID of the object that entered/exited the area.
        /// 4: The shape index of the object that entered/exited the area.
        /// 5: The shape index of the area where the object entered/exited.
        /// </summary>
        public static void area_set_monitor_callback(RID area, Object receiver, string method)
        {
            NativeCalls.godot_icall_3_363(method_bind_31, ptr, RID.GetPtr(area), Object.GetPtr(receiver), method);
        }

        private static IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_create");

        /// <summary>
        /// Create a physics body. The first parameter can be any value from constants BODY_MODE*, for the type of body created. Additionally, the body can be created in sleeping state to save processing time.
        /// </summary>
        public static RID body_create(int mode = 2, bool init_sleeping = false)
        {
            IntPtr ret = NativeCalls.godot_icall_2_364(method_bind_32, ptr, mode, init_sleeping);
            return new RID(ret);
        }

        private static IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_space");

        /// <summary>
        /// Assign a space to the body (see [method create_space]).
        /// </summary>
        public static void body_set_space(RID body, RID space)
        {
            NativeCalls.godot_icall_2_93(method_bind_33, ptr, RID.GetPtr(body), RID.GetPtr(space));
        }

        private static IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_space");

        /// <summary>
        /// Return the [RID] of the space assigned to a body.
        /// </summary>
        public static RID body_get_space(RID body)
        {
            IntPtr ret = NativeCalls.godot_icall_1_354(method_bind_34, ptr, RID.GetPtr(body));
            return new RID(ret);
        }

        private static IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_mode");

        /// <summary>
        /// Set the body mode, from one of the constants BODY_MODE*.
        /// </summary>
        public static void body_set_mode(RID body, int mode)
        {
            NativeCalls.godot_icall_2_91(method_bind_35, ptr, RID.GetPtr(body), mode);
        }

        private static IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_mode");

        /// <summary>
        /// Return the body mode.
        /// </summary>
        public static int body_get_mode(RID body)
        {
            return NativeCalls.godot_icall_1_86(method_bind_36, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_add_shape");

        /// <summary>
        /// Add a shape to the body, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
        /// <param name="transform">If the param is null, then the default value is Matrix32.Identity</param>
        /// </summary>
        public static void body_add_shape(RID body, RID shape, Nullable<Matrix32> transform = null)
        {
            Matrix32 transform_in = transform.HasValue ? transform.Value : Matrix32.Identity;
            NativeCalls.godot_icall_3_355(method_bind_37, ptr, RID.GetPtr(body), RID.GetPtr(shape), ref transform_in);
        }

        private static IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_shape");

        /// <summary>
        /// Substitute a given body shape by another. The old shape is selected by its index, the new one by its [RID].
        /// </summary>
        public static void body_set_shape(RID body, int shape_idx, RID shape)
        {
            NativeCalls.godot_icall_3_356(method_bind_38, ptr, RID.GetPtr(body), shape_idx, RID.GetPtr(shape));
        }

        private static IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_shape_transform");

        /// <summary>
        /// Set the transform matrix for a body shape.
        /// </summary>
        public static void body_set_shape_transform(RID body, int shape_idx, Matrix32 transform)
        {
            NativeCalls.godot_icall_3_357(method_bind_39, ptr, RID.GetPtr(body), shape_idx, ref transform);
        }

        private static IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_shape_metadata");

        /// <summary>
        /// Set metadata of a shape within a body. This metadata is different from [method Object.set_meta], and can be retrieved on shape queries.
        /// </summary>
        public static void body_set_shape_metadata(RID body, int shape_idx, object metadata)
        {
            NativeCalls.godot_icall_3_360(method_bind_40, ptr, RID.GetPtr(body), shape_idx, metadata);
        }

        private static IntPtr method_bind_41 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_shape_count");

        /// <summary>
        /// Return the number of shapes assigned to a body.
        /// </summary>
        public static int body_get_shape_count(RID body)
        {
            return NativeCalls.godot_icall_1_86(method_bind_41, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_42 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_shape");

        /// <summary>
        /// Return the [RID] of the nth shape of a body.
        /// </summary>
        public static RID body_get_shape(RID body, int shape_idx)
        {
            IntPtr ret = NativeCalls.godot_icall_2_358(method_bind_42, ptr, RID.GetPtr(body), shape_idx);
            return new RID(ret);
        }

        private static IntPtr method_bind_43 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_shape_transform");

        /// <summary>
        /// Return the transform matrix of a body shape.
        /// </summary>
        public static Matrix32 body_get_shape_transform(RID body, int shape_idx)
        {
            object ret = NativeCalls.godot_icall_2_359(method_bind_43, ptr, RID.GetPtr(body), shape_idx);
            return (Matrix32)ret;
        }

        private static IntPtr method_bind_44 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_shape_metadata");

        /// <summary>
        /// Return the metadata of a shape of a body.
        /// </summary>
        public static void body_get_shape_metadata(RID body, int shape_idx)
        {
            NativeCalls.godot_icall_2_91(method_bind_44, ptr, RID.GetPtr(body), shape_idx);
        }

        private static IntPtr method_bind_45 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_remove_shape");

        /// <summary>
        /// Remove a shape from a body. The shape is not deleted, so it can be reused afterwards.
        /// </summary>
        public static void body_remove_shape(RID body, int shape_idx)
        {
            NativeCalls.godot_icall_2_91(method_bind_45, ptr, RID.GetPtr(body), shape_idx);
        }

        private static IntPtr method_bind_46 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_clear_shapes");

        /// <summary>
        /// Remove all shapes from a body.
        /// </summary>
        public static void body_clear_shapes(RID body)
        {
            NativeCalls.godot_icall_1_100(method_bind_46, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_47 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_shape_as_trigger");

        /// <summary>
        /// Mark a body's shape as a trigger. A trigger shape cannot affect other bodies, but detects other shapes entering and exiting it.
        /// </summary>
        public static void body_set_shape_as_trigger(RID body, int shape_idx, bool enable)
        {
            NativeCalls.godot_icall_3_365(method_bind_47, ptr, RID.GetPtr(body), shape_idx, enable);
        }

        private static IntPtr method_bind_48 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_is_shape_set_as_trigger");

        /// <summary>
        /// Return whether a body's shape is marked as a trigger.
        /// </summary>
        public static bool body_is_shape_set_as_trigger(RID body, int shape_idx)
        {
            return NativeCalls.godot_icall_2_366(method_bind_48, ptr, RID.GetPtr(body), shape_idx);
        }

        private static IntPtr method_bind_49 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_attach_object_instance_ID");

        /// <summary>
        /// Assign the area to a descendant of [Object], so it can exist in the node tree.
        /// </summary>
        public static void body_attach_object_instance_ID(RID body, int id)
        {
            NativeCalls.godot_icall_2_91(method_bind_49, ptr, RID.GetPtr(body), id);
        }

        private static IntPtr method_bind_50 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_object_instance_ID");

        /// <summary>
        /// Get the instance ID of the object the area is assigned to.
        /// </summary>
        public static int body_get_object_instance_ID(RID body)
        {
            return NativeCalls.godot_icall_1_86(method_bind_50, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_51 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_continuous_collision_detection_mode");

        /// <summary>
        /// Set the continuous collision detection mode from any of the CCD_MODE_* constants.
        /// Continuous collision detection tries to predict where a moving body will collide, instead of moving it and correcting its movement if it collided.
        /// </summary>
        public static void body_set_continuous_collision_detection_mode(RID body, int mode)
        {
            NativeCalls.godot_icall_2_91(method_bind_51, ptr, RID.GetPtr(body), mode);
        }

        private static IntPtr method_bind_52 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_continuous_collision_detection_mode");

        /// <summary>
        /// Return the continuous collision detection mode.
        /// </summary>
        public static int body_get_continuous_collision_detection_mode(RID body)
        {
            return NativeCalls.godot_icall_1_86(method_bind_52, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_53 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_layer_mask");

        /// <summary>
        /// Set the physics layer or layers a body belongs to.
        /// </summary>
        public static void body_set_layer_mask(RID body, int mask)
        {
            NativeCalls.godot_icall_2_91(method_bind_53, ptr, RID.GetPtr(body), mask);
        }

        private static IntPtr method_bind_54 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_layer_mask");

        /// <summary>
        /// Return the physics layer or layers a body belongs to.
        /// </summary>
        public static int body_get_layer_mask(RID body)
        {
            return NativeCalls.godot_icall_1_86(method_bind_54, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_55 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_collision_mask");

        /// <summary>
        /// Set the physics layer or layers a body can collide with.
        /// </summary>
        public static void body_set_collision_mask(RID body, int mask)
        {
            NativeCalls.godot_icall_2_91(method_bind_55, ptr, RID.GetPtr(body), mask);
        }

        private static IntPtr method_bind_56 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_collision_mask");

        /// <summary>
        /// Return the physics layer or layers a body can collide with.
        /// </summary>
        public static int body_get_collision_mask(RID body)
        {
            return NativeCalls.godot_icall_1_86(method_bind_56, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_57 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_param");

        /// <summary>
        /// Set a body parameter (see BODY_PARAM* constants).
        /// </summary>
        public static void body_set_param(RID body, int param, float @value)
        {
            NativeCalls.godot_icall_3_97(method_bind_57, ptr, RID.GetPtr(body), param, @value);
        }

        private static IntPtr method_bind_58 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_param");

        /// <summary>
        /// Return the value of a body parameter.
        /// </summary>
        public static float body_get_param(RID body, int param)
        {
            return NativeCalls.godot_icall_2_352(method_bind_58, ptr, RID.GetPtr(body), param);
        }

        private static IntPtr method_bind_59 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_state");

        /// <summary>
        /// Set a body state (see BODY_STATE* constants).
        /// </summary>
        public static void body_set_state(RID body, int state, object @value)
        {
            NativeCalls.godot_icall_3_360(method_bind_59, ptr, RID.GetPtr(body), state, @value);
        }

        private static IntPtr method_bind_60 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_state");

        /// <summary>
        /// Return a body state.
        /// </summary>
        public static void body_get_state(RID body, int state)
        {
            NativeCalls.godot_icall_2_91(method_bind_60, ptr, RID.GetPtr(body), state);
        }

        private static IntPtr method_bind_61 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_apply_impulse");

        /// <summary>
        /// Add a positioned impulse to the applied force and torque. Both the force and the offset from the body origin are in global coordinates.
        /// </summary>
        public static void body_apply_impulse(RID body, Vector2 pos, Vector2 impulse)
        {
            NativeCalls.godot_icall_3_367(method_bind_61, ptr, RID.GetPtr(body), ref pos, ref impulse);
        }

        private static IntPtr method_bind_62 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_add_force");

        /// <summary>
        /// Add a positioned force to the applied force and torque. As with [method body_apply_impulse], both the force and the offset from the body origin are in global coordinates. A force differs from an impulse in that, while the two are forces, the impulse clears itself after being applied.
        /// </summary>
        public static void body_add_force(RID body, Vector2 offset, Vector2 force)
        {
            NativeCalls.godot_icall_3_367(method_bind_62, ptr, RID.GetPtr(body), ref offset, ref force);
        }

        private static IntPtr method_bind_63 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_axis_velocity");

        /// <summary>
        /// Set an axis velocity. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.
        /// </summary>
        public static void body_set_axis_velocity(RID body, Vector2 axis_velocity)
        {
            NativeCalls.godot_icall_2_368(method_bind_63, ptr, RID.GetPtr(body), ref axis_velocity);
        }

        private static IntPtr method_bind_64 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_add_collision_exception");

        /// <summary>
        /// Add a body to the list of bodies exempt from collisions.
        /// </summary>
        public static void body_add_collision_exception(RID body, RID excepted_body)
        {
            NativeCalls.godot_icall_2_93(method_bind_64, ptr, RID.GetPtr(body), RID.GetPtr(excepted_body));
        }

        private static IntPtr method_bind_65 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_remove_collision_exception");

        /// <summary>
        /// Remove a body from the list of bodies exempt from collisions.
        /// </summary>
        public static void body_remove_collision_exception(RID body, RID excepted_body)
        {
            NativeCalls.godot_icall_2_93(method_bind_65, ptr, RID.GetPtr(body), RID.GetPtr(excepted_body));
        }

        private static IntPtr method_bind_66 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_max_contacts_reported");

        /// <summary>
        /// Set the maximum contacts to report. Bodies can keep a log of the contacts with other bodies, this is enabled by setting the maximum amount of contacts reported to a number greater than 0.
        /// </summary>
        public static void body_set_max_contacts_reported(RID body, int amount)
        {
            NativeCalls.godot_icall_2_91(method_bind_66, ptr, RID.GetPtr(body), amount);
        }

        private static IntPtr method_bind_67 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_max_contacts_reported");

        /// <summary>
        /// Return the maximum contacts that can be reported. See [method body_set_max_contacts_reported].
        /// </summary>
        public static int body_get_max_contacts_reported(RID body)
        {
            return NativeCalls.godot_icall_1_86(method_bind_67, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_68 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_one_way_collision_direction");

        /// <summary>
        /// Set a direction in which bodies can go through the given one. If this value is different from (0,0), any movement within 90 degrees of this vector is considered a valid movement. Set this direction to (0,0) to disable one-way collisions.
        /// </summary>
        public static void body_set_one_way_collision_direction(RID body, Vector2 normal)
        {
            NativeCalls.godot_icall_2_368(method_bind_68, ptr, RID.GetPtr(body), ref normal);
        }

        private static IntPtr method_bind_69 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_one_way_collision_direction");

        /// <summary>
        /// Return the direction used for one-way collision detection.
        /// </summary>
        public static Vector2 body_get_one_way_collision_direction(RID body)
        {
            object ret = NativeCalls.godot_icall_1_369(method_bind_69, ptr, RID.GetPtr(body));
            return (Vector2)ret;
        }

        private static IntPtr method_bind_70 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_one_way_collision_max_depth");

        /// <summary>
        /// Set how far a body can go through the given one, if it allows one-way collisions (see [method body_set_one_way_collision_direction]).
        /// </summary>
        public static void body_set_one_way_collision_max_depth(RID body, float depth)
        {
            NativeCalls.godot_icall_2_94(method_bind_70, ptr, RID.GetPtr(body), depth);
        }

        private static IntPtr method_bind_71 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_one_way_collision_max_depth");

        /// <summary>
        /// Return how far a body can go through the given one, when it allows one-way collisions.
        /// </summary>
        public static float body_get_one_way_collision_max_depth(RID body)
        {
            return NativeCalls.godot_icall_1_99(method_bind_71, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_72 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_omit_force_integration");

        /// <summary>
        /// Set whether a body uses a callback function to calculate its own physics (see [method body_set_force_integration_callback]).
        /// </summary>
        public static void body_set_omit_force_integration(RID body, bool enable)
        {
            NativeCalls.godot_icall_2_98(method_bind_72, ptr, RID.GetPtr(body), enable);
        }

        private static IntPtr method_bind_73 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_is_omitting_force_integration");

        /// <summary>
        /// Return whether a body uses a callback function to calculate its own physics (see [method body_set_force_integration_callback]).
        /// </summary>
        public static bool body_is_omitting_force_integration(RID body)
        {
            return NativeCalls.godot_icall_1_87(method_bind_73, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_74 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_force_integration_callback");

        /// <summary>
        /// Set the function used to calculate physics for an object, if that object allows it (see [method body_set_omit_force integration]).
        /// </summary>
        public static void body_set_force_integration_callback(RID body, Object receiver, string method, object userdata = null)
        {
            NativeCalls.godot_icall_4_370(method_bind_74, ptr, RID.GetPtr(body), Object.GetPtr(receiver), method, userdata);
        }

        private static IntPtr method_bind_75 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_test_motion");

        /// <summary>
        /// Return whether a body can move from a given point in a given direction. Apart from the boolean return value, a [Physics2DTestMotionResult] can be passed to return additional information in.
        /// </summary>
        public static bool body_test_motion(RID body, Matrix32 @from, Vector2 motion, float margin = 0.08f, Physics2DTestMotionResult result = null)
        {
            return NativeCalls.godot_icall_5_371(method_bind_75, ptr, RID.GetPtr(body), ref @from, ref motion, margin, Object.GetPtr(result));
        }

        private static IntPtr method_bind_76 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "joint_set_param");

        /// <summary>
        /// Set a joint parameter. Parameters are explained in the JOINT_PARAM* constants.
        /// </summary>
        public static void joint_set_param(RID joint, int param, float @value)
        {
            NativeCalls.godot_icall_3_97(method_bind_76, ptr, RID.GetPtr(joint), param, @value);
        }

        private static IntPtr method_bind_77 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "joint_get_param");

        /// <summary>
        /// Return the value of a joint parameter.
        /// </summary>
        public static float joint_get_param(RID joint, int param)
        {
            return NativeCalls.godot_icall_2_352(method_bind_77, ptr, RID.GetPtr(joint), param);
        }

        private static IntPtr method_bind_78 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "pin_joint_create");

        /// <summary>
        /// Create a pin joint between two bodies. If not specified, the second body is assumed to be the joint itself.
        /// <param name="body_b">If the param is null, then the default value is new RID()</param>
        /// </summary>
        public static RID pin_joint_create(Vector2 anchor, RID body_a, RID body_b = null)
        {
            RID body_b_in = body_b != null ? body_b : new RID();
            IntPtr ret = NativeCalls.godot_icall_3_372(method_bind_78, ptr, ref anchor, RID.GetPtr(body_a), RID.GetPtr(body_b_in));
            return new RID(ret);
        }

        private static IntPtr method_bind_79 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "groove_joint_create");

        /// <summary>
        /// Create a groove joint between two bodies. If not specified, the bodyies are assumed to be the joint itself.
        /// <param name="body_a">If the param is null, then the default value is new RID()</param>
        /// <param name="body_b">If the param is null, then the default value is new RID()</param>
        /// </summary>
        public static RID groove_joint_create(Vector2 groove1_a, Vector2 groove2_a, Vector2 anchor_b, RID body_a = null, RID body_b = null)
        {
            RID body_a_in = body_a != null ? body_a : new RID();
            RID body_b_in = body_b != null ? body_b : new RID();
            IntPtr ret = NativeCalls.godot_icall_5_373(method_bind_79, ptr, ref groove1_a, ref groove2_a, ref anchor_b, RID.GetPtr(body_a_in), RID.GetPtr(body_b_in));
            return new RID(ret);
        }

        private static IntPtr method_bind_80 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "damped_spring_joint_create");

        /// <summary>
        /// Create a damped spring joint between two bodies. If not specified, the second body is assumed to be the joint itself.
        /// <param name="body_b">If the param is null, then the default value is new RID()</param>
        /// </summary>
        public static RID damped_spring_joint_create(Vector2 anchor_a, Vector2 anchor_b, RID body_a, RID body_b = null)
        {
            RID body_b_in = body_b != null ? body_b : new RID();
            IntPtr ret = NativeCalls.godot_icall_4_374(method_bind_80, ptr, ref anchor_a, ref anchor_b, RID.GetPtr(body_a), RID.GetPtr(body_b_in));
            return new RID(ret);
        }

        private static IntPtr method_bind_81 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "damped_string_joint_set_param");

        /// <summary>
        /// Set a damped spring joint parameter. Parameters are explained in the DAMPED_STRING* constants.
        /// </summary>
        public static void damped_string_joint_set_param(RID joint, int param, float @value)
        {
            NativeCalls.godot_icall_3_97(method_bind_81, ptr, RID.GetPtr(joint), param, @value);
        }

        private static IntPtr method_bind_82 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "damped_string_joint_get_param");

        /// <summary>
        /// Return the value of a damped spring joint parameter.
        /// </summary>
        public static float damped_string_joint_get_param(RID joint, int param)
        {
            return NativeCalls.godot_icall_2_352(method_bind_82, ptr, RID.GetPtr(joint), param);
        }

        private static IntPtr method_bind_83 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "joint_get_type");

        /// <summary>
        /// Return the type of a joint (see JOINT_* constants).
        /// </summary>
        public static int joint_get_type(RID joint)
        {
            return NativeCalls.godot_icall_1_86(method_bind_83, ptr, RID.GetPtr(joint));
        }

        private static IntPtr method_bind_84 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "free_rid");

        /// <summary>
        /// Destroy any of the objects created by Physics2DServer. If the [RID] passed is not one of the objects that can be created by Physics2DServer, an error will be sent to the console.
        /// </summary>
        public static void free_rid(RID rid)
        {
            NativeCalls.godot_icall_1_100(method_bind_84, ptr, RID.GetPtr(rid));
        }

        private static IntPtr method_bind_85 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_active");

        /// <summary>
        /// Activate or deactivate the 2D physics engine.
        /// </summary>
        public static void set_active(bool active)
        {
            NativeCalls.godot_icall_1_13(method_bind_85, ptr, active);
        }

        private static IntPtr method_bind_86 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_process_info");

        /// <summary>
        /// Return information about the current state of the 2D physics engine. The states are listed under the INFO_* constants.
        /// </summary>
        public static int get_process_info(int process_info)
        {
            return NativeCalls.godot_icall_1_28(method_bind_86, ptr, process_info);
        }
    }
}
