using System;

namespace GodotEngine
{
    public static class PhysicsServer
    {
        public const int JOINT_PIN = 0;
        public const int JOINT_HINGE = 1;
        public const int JOINT_SLIDER = 2;
        public const int JOINT_CONE_TWIST = 3;
        public const int JOINT_6DOF = 4;
        public const int PIN_JOINT_BIAS = 0;
        public const int PIN_JOINT_DAMPING = 1;
        public const int PIN_JOINT_IMPULSE_CLAMP = 2;
        public const int HINGE_JOINT_BIAS = 0;
        public const int HINGE_JOINT_LIMIT_UPPER = 1;
        public const int HINGE_JOINT_LIMIT_LOWER = 2;
        public const int HINGE_JOINT_LIMIT_BIAS = 3;
        public const int HINGE_JOINT_LIMIT_SOFTNESS = 4;
        public const int HINGE_JOINT_LIMIT_RELAXATION = 5;
        public const int HINGE_JOINT_MOTOR_TARGET_VELOCITY = 6;
        public const int HINGE_JOINT_MOTOR_MAX_IMPULSE = 7;
        public const int HINGE_JOINT_FLAG_USE_LIMIT = 0;
        public const int HINGE_JOINT_FLAG_ENABLE_MOTOR = 1;
        public const int SLIDER_JOINT_LINEAR_LIMIT_UPPER = 0;
        public const int SLIDER_JOINT_LINEAR_LIMIT_LOWER = 1;
        public const int SLIDER_JOINT_LINEAR_LIMIT_SOFTNESS = 2;
        public const int SLIDER_JOINT_LINEAR_LIMIT_RESTITUTION = 3;
        public const int SLIDER_JOINT_LINEAR_LIMIT_DAMPING = 4;
        public const int SLIDER_JOINT_LINEAR_MOTION_SOFTNESS = 5;
        public const int SLIDER_JOINT_LINEAR_MOTION_RESTITUTION = 6;
        public const int SLIDER_JOINT_LINEAR_MOTION_DAMPING = 7;
        public const int SLIDER_JOINT_LINEAR_ORTHOGONAL_SOFTNESS = 8;
        public const int SLIDER_JOINT_LINEAR_ORTHOGONAL_RESTITUTION = 9;
        public const int SLIDER_JOINT_LINEAR_ORTHOGONAL_DAMPING = 10;
        public const int SLIDER_JOINT_ANGULAR_LIMIT_UPPER = 11;
        public const int SLIDER_JOINT_ANGULAR_LIMIT_LOWER = 12;
        public const int SLIDER_JOINT_ANGULAR_LIMIT_SOFTNESS = 13;
        public const int SLIDER_JOINT_ANGULAR_LIMIT_RESTITUTION = 14;
        public const int SLIDER_JOINT_ANGULAR_LIMIT_DAMPING = 15;
        public const int SLIDER_JOINT_ANGULAR_MOTION_SOFTNESS = 16;
        public const int SLIDER_JOINT_ANGULAR_MOTION_RESTITUTION = 17;
        public const int SLIDER_JOINT_ANGULAR_MOTION_DAMPING = 18;
        public const int SLIDER_JOINT_ANGULAR_ORTHOGONAL_SOFTNESS = 19;
        public const int SLIDER_JOINT_ANGULAR_ORTHOGONAL_RESTITUTION = 20;
        public const int SLIDER_JOINT_ANGULAR_ORTHOGONAL_DAMPING = 21;
        public const int SLIDER_JOINT_MAX = 22;
        public const int CONE_TWIST_JOINT_SWING_SPAN = 0;
        public const int CONE_TWIST_JOINT_TWIST_SPAN = 1;
        public const int CONE_TWIST_JOINT_BIAS = 2;
        public const int CONE_TWIST_JOINT_SOFTNESS = 3;
        public const int CONE_TWIST_JOINT_RELAXATION = 4;
        public const int G6DOF_JOINT_LINEAR_LOWER_LIMIT = 0;
        public const int G6DOF_JOINT_LINEAR_UPPER_LIMIT = 1;
        public const int G6DOF_JOINT_LINEAR_LIMIT_SOFTNESS = 2;
        public const int G6DOF_JOINT_LINEAR_RESTITUTION = 3;
        public const int G6DOF_JOINT_LINEAR_DAMPING = 4;
        public const int G6DOF_JOINT_ANGULAR_LOWER_LIMIT = 5;
        public const int G6DOF_JOINT_ANGULAR_UPPER_LIMIT = 6;
        public const int G6DOF_JOINT_ANGULAR_LIMIT_SOFTNESS = 7;
        public const int G6DOF_JOINT_ANGULAR_DAMPING = 8;
        public const int G6DOF_JOINT_ANGULAR_RESTITUTION = 9;
        public const int G6DOF_JOINT_ANGULAR_FORCE_LIMIT = 10;
        public const int G6DOF_JOINT_ANGULAR_ERP = 11;
        public const int G6DOF_JOINT_ANGULAR_MOTOR_TARGET_VELOCITY = 12;
        public const int G6DOF_JOINT_ANGULAR_MOTOR_FORCE_LIMIT = 13;
        public const int G6DOF_JOINT_FLAG_ENABLE_LINEAR_LIMIT = 0;
        public const int G6DOF_JOINT_FLAG_ENABLE_ANGULAR_LIMIT = 1;
        public const int G6DOF_JOINT_FLAG_ENABLE_MOTOR = 2;
        public const int SHAPE_PLANE = 0;
        public const int SHAPE_RAY = 1;
        public const int SHAPE_SPHERE = 2;
        public const int SHAPE_BOX = 3;
        public const int SHAPE_CAPSULE = 4;
        public const int SHAPE_CONVEX_POLYGON = 5;
        public const int SHAPE_CONCAVE_POLYGON = 6;
        public const int SHAPE_HEIGHTMAP = 7;
        public const int SHAPE_CUSTOM = 8;
        public const int AREA_PARAM_GRAVITY = 0;
        public const int AREA_PARAM_GRAVITY_VECTOR = 1;
        public const int AREA_PARAM_GRAVITY_IS_POINT = 2;
        public const int AREA_PARAM_GRAVITY_DISTANCE_SCALE = 3;
        public const int AREA_PARAM_GRAVITY_POINT_ATTENUATION = 4;
        public const int AREA_PARAM_LINEAR_DAMP = 5;
        public const int AREA_PARAM_ANGULAR_DAMP = 6;
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
        public const int BODY_MODE_STATIC = 0;
        public const int BODY_MODE_KINEMATIC = 1;
        public const int BODY_MODE_RIGID = 2;
        public const int BODY_MODE_CHARACTER = 3;
        public const int BODY_PARAM_BOUNCE = 0;
        public const int BODY_PARAM_FRICTION = 1;
        public const int BODY_PARAM_MASS = 2;
        public const int BODY_PARAM_GRAVITY_SCALE = 3;
        public const int BODY_PARAM_ANGULAR_DAMP = 5;
        public const int BODY_PARAM_LINEAR_DAMP = 4;
        public const int BODY_PARAM_MAX = 6;
        public const int BODY_STATE_TRANSFORM = 0;
        public const int BODY_STATE_LINEAR_VELOCITY = 1;
        public const int BODY_STATE_ANGULAR_VELOCITY = 2;
        public const int BODY_STATE_SLEEPING = 3;
        public const int BODY_STATE_CAN_SLEEP = 4;
        public const int AREA_BODY_ADDED = 0;
        public const int AREA_BODY_REMOVED = 1;
        public const int INFO_ACTIVE_OBJECTS = 0;
        public const int INFO_COLLISION_PAIRS = 1;
        public const int INFO_ISLAND_COUNT = 2;

        private const string nativeName = "PhysicsServer";
        internal static IntPtr ptr = NativeCalls.godot_icall_PhysicsServer_get_singleton();

        private static IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "shape_create");

        public static RID shape_create(int type)
        {
            IntPtr ret = NativeCalls.godot_icall_1_343(method_bind_0, ptr, type);
            return new RID(ret);
        }

        private static IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "shape_set_data");

        public static void shape_set_data(RID shape, object data)
        {
            NativeCalls.godot_icall_2_351(method_bind_1, ptr, RID.GetPtr(shape), data);
        }

        private static IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "shape_get_type");

        public static int shape_get_type(RID shape)
        {
            return NativeCalls.godot_icall_1_86(method_bind_2, ptr, RID.GetPtr(shape));
        }

        private static IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "shape_get_data");

        public static void shape_get_data(RID shape)
        {
            NativeCalls.godot_icall_1_100(method_bind_3, ptr, RID.GetPtr(shape));
        }

        private static IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "space_create");

        public static RID space_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_4, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "space_set_active");

        public static void space_set_active(RID space, bool active)
        {
            NativeCalls.godot_icall_2_98(method_bind_5, ptr, RID.GetPtr(space), active);
        }

        private static IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "space_is_active");

        public static bool space_is_active(RID space)
        {
            return NativeCalls.godot_icall_1_87(method_bind_6, ptr, RID.GetPtr(space));
        }

        private static IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "space_set_param");

        public static void space_set_param(RID space, int param, float @value)
        {
            NativeCalls.godot_icall_3_97(method_bind_7, ptr, RID.GetPtr(space), param, @value);
        }

        private static IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "space_get_param");

        public static float space_get_param(RID space, int param)
        {
            return NativeCalls.godot_icall_2_352(method_bind_8, ptr, RID.GetPtr(space), param);
        }

        private static IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "space_get_direct_state");

        public static PhysicsDirectSpaceState space_get_direct_state(RID space)
        {
            return NativeCalls.godot_icall_1_380(method_bind_9, ptr, RID.GetPtr(space));
        }

        private static IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_create");

        public static RID area_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_10, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_space");

        public static void area_set_space(RID area, RID space)
        {
            NativeCalls.godot_icall_2_93(method_bind_11, ptr, RID.GetPtr(area), RID.GetPtr(space));
        }

        private static IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_get_space");

        public static RID area_get_space(RID area)
        {
            IntPtr ret = NativeCalls.godot_icall_1_354(method_bind_12, ptr, RID.GetPtr(area));
            return new RID(ret);
        }

        private static IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_space_override_mode");

        public static void area_set_space_override_mode(RID area, int mode)
        {
            NativeCalls.godot_icall_2_91(method_bind_13, ptr, RID.GetPtr(area), mode);
        }

        private static IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_get_space_override_mode");

        public static int area_get_space_override_mode(RID area)
        {
            return NativeCalls.godot_icall_1_86(method_bind_14, ptr, RID.GetPtr(area));
        }

        private static IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_add_shape");

        public static void area_add_shape(RID area, RID shape, Nullable<Transform> transform = null)
        {
            Transform transform_in = transform.HasValue ? transform.Value : new Transform();
            NativeCalls.godot_icall_3_381(method_bind_15, ptr, RID.GetPtr(area), RID.GetPtr(shape), ref transform_in);
        }

        private static IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_shape");

        public static void area_set_shape(RID area, int shape_idx, RID shape)
        {
            NativeCalls.godot_icall_3_356(method_bind_16, ptr, RID.GetPtr(area), shape_idx, RID.GetPtr(shape));
        }

        private static IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_shape_transform");

        public static void area_set_shape_transform(RID area, int shape_idx, Transform transform)
        {
            NativeCalls.godot_icall_3_382(method_bind_17, ptr, RID.GetPtr(area), shape_idx, ref transform);
        }

        private static IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_get_shape_count");

        public static int area_get_shape_count(RID area)
        {
            return NativeCalls.godot_icall_1_86(method_bind_18, ptr, RID.GetPtr(area));
        }

        private static IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_get_shape");

        public static RID area_get_shape(RID area, int shape_idx)
        {
            IntPtr ret = NativeCalls.godot_icall_2_358(method_bind_19, ptr, RID.GetPtr(area), shape_idx);
            return new RID(ret);
        }

        private static IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_get_shape_transform");

        public static Transform area_get_shape_transform(RID area, int shape_idx)
        {
            object ret = NativeCalls.godot_icall_2_383(method_bind_20, ptr, RID.GetPtr(area), shape_idx);
            return (Transform)ret;
        }

        private static IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_remove_shape");

        public static void area_remove_shape(RID area, int shape_idx)
        {
            NativeCalls.godot_icall_2_91(method_bind_21, ptr, RID.GetPtr(area), shape_idx);
        }

        private static IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_clear_shapes");

        public static void area_clear_shapes(RID area)
        {
            NativeCalls.godot_icall_1_100(method_bind_22, ptr, RID.GetPtr(area));
        }

        private static IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_layer_mask");

        public static void area_set_layer_mask(RID area, int mask)
        {
            NativeCalls.godot_icall_2_91(method_bind_23, ptr, RID.GetPtr(area), mask);
        }

        private static IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_collision_mask");

        public static void area_set_collision_mask(RID area, int mask)
        {
            NativeCalls.godot_icall_2_91(method_bind_24, ptr, RID.GetPtr(area), mask);
        }

        private static IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_param");

        public static void area_set_param(RID area, int param, object @value)
        {
            NativeCalls.godot_icall_3_360(method_bind_25, ptr, RID.GetPtr(area), param, @value);
        }

        private static IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_transform");

        public static void area_set_transform(RID area, Transform transform)
        {
            NativeCalls.godot_icall_2_384(method_bind_26, ptr, RID.GetPtr(area), ref transform);
        }

        private static IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_get_param");

        public static void area_get_param(RID area, int param)
        {
            NativeCalls.godot_icall_2_91(method_bind_27, ptr, RID.GetPtr(area), param);
        }

        private static IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_get_transform");

        public static Transform area_get_transform(RID area)
        {
            object ret = NativeCalls.godot_icall_1_385(method_bind_28, ptr, RID.GetPtr(area));
            return (Transform)ret;
        }

        private static IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_attach_object_instance_ID");

        public static void area_attach_object_instance_ID(RID area, int id)
        {
            NativeCalls.godot_icall_2_91(method_bind_29, ptr, RID.GetPtr(area), id);
        }

        private static IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_get_object_instance_ID");

        public static int area_get_object_instance_ID(RID area)
        {
            return NativeCalls.godot_icall_1_86(method_bind_30, ptr, RID.GetPtr(area));
        }

        private static IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_monitor_callback");

        public static void area_set_monitor_callback(RID area, Object receiver, string method)
        {
            NativeCalls.godot_icall_3_363(method_bind_31, ptr, RID.GetPtr(area), Object.GetPtr(receiver), method);
        }

        private static IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_set_ray_pickable");

        public static void area_set_ray_pickable(RID area, bool enable)
        {
            NativeCalls.godot_icall_2_98(method_bind_32, ptr, RID.GetPtr(area), enable);
        }

        private static IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "area_is_ray_pickable");

        public static bool area_is_ray_pickable(RID area)
        {
            return NativeCalls.godot_icall_1_87(method_bind_33, ptr, RID.GetPtr(area));
        }

        private static IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_create");

        public static RID body_create(int mode = 2, bool init_sleeping = false)
        {
            IntPtr ret = NativeCalls.godot_icall_2_364(method_bind_34, ptr, mode, init_sleeping);
            return new RID(ret);
        }

        private static IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_space");

        public static void body_set_space(RID body, RID space)
        {
            NativeCalls.godot_icall_2_93(method_bind_35, ptr, RID.GetPtr(body), RID.GetPtr(space));
        }

        private static IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_space");

        public static RID body_get_space(RID body)
        {
            IntPtr ret = NativeCalls.godot_icall_1_354(method_bind_36, ptr, RID.GetPtr(body));
            return new RID(ret);
        }

        private static IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_mode");

        public static void body_set_mode(RID body, int mode)
        {
            NativeCalls.godot_icall_2_91(method_bind_37, ptr, RID.GetPtr(body), mode);
        }

        private static IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_mode");

        public static int body_get_mode(RID body)
        {
            return NativeCalls.godot_icall_1_86(method_bind_38, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_layer_mask");

        public static void body_set_layer_mask(RID body, int mask)
        {
            NativeCalls.godot_icall_2_91(method_bind_39, ptr, RID.GetPtr(body), mask);
        }

        private static IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_layer_mask");

        public static int body_get_layer_mask(RID body, int arg1)
        {
            return NativeCalls.godot_icall_2_386(method_bind_40, ptr, RID.GetPtr(body), arg1);
        }

        private static IntPtr method_bind_41 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_collision_mask");

        public static void body_set_collision_mask(RID body, int mask)
        {
            NativeCalls.godot_icall_2_91(method_bind_41, ptr, RID.GetPtr(body), mask);
        }

        private static IntPtr method_bind_42 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_collision_mask");

        public static int body_get_collision_mask(RID body, int arg1)
        {
            return NativeCalls.godot_icall_2_386(method_bind_42, ptr, RID.GetPtr(body), arg1);
        }

        private static IntPtr method_bind_43 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_add_shape");

        public static void body_add_shape(RID body, RID shape, Nullable<Transform> transform = null)
        {
            Transform transform_in = transform.HasValue ? transform.Value : new Transform();
            NativeCalls.godot_icall_3_381(method_bind_43, ptr, RID.GetPtr(body), RID.GetPtr(shape), ref transform_in);
        }

        private static IntPtr method_bind_44 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_shape");

        public static void body_set_shape(RID body, int shape_idx, RID shape)
        {
            NativeCalls.godot_icall_3_356(method_bind_44, ptr, RID.GetPtr(body), shape_idx, RID.GetPtr(shape));
        }

        private static IntPtr method_bind_45 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_shape_transform");

        public static void body_set_shape_transform(RID body, int shape_idx, Transform transform)
        {
            NativeCalls.godot_icall_3_382(method_bind_45, ptr, RID.GetPtr(body), shape_idx, ref transform);
        }

        private static IntPtr method_bind_46 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_shape_count");

        public static int body_get_shape_count(RID body)
        {
            return NativeCalls.godot_icall_1_86(method_bind_46, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_47 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_shape");

        public static RID body_get_shape(RID body, int shape_idx)
        {
            IntPtr ret = NativeCalls.godot_icall_2_358(method_bind_47, ptr, RID.GetPtr(body), shape_idx);
            return new RID(ret);
        }

        private static IntPtr method_bind_48 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_shape_transform");

        public static Transform body_get_shape_transform(RID body, int shape_idx)
        {
            object ret = NativeCalls.godot_icall_2_383(method_bind_48, ptr, RID.GetPtr(body), shape_idx);
            return (Transform)ret;
        }

        private static IntPtr method_bind_49 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_remove_shape");

        public static void body_remove_shape(RID body, int shape_idx)
        {
            NativeCalls.godot_icall_2_91(method_bind_49, ptr, RID.GetPtr(body), shape_idx);
        }

        private static IntPtr method_bind_50 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_clear_shapes");

        public static void body_clear_shapes(RID body)
        {
            NativeCalls.godot_icall_1_100(method_bind_50, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_51 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_attach_object_instance_ID");

        public static void body_attach_object_instance_ID(RID body, int id)
        {
            NativeCalls.godot_icall_2_91(method_bind_51, ptr, RID.GetPtr(body), id);
        }

        private static IntPtr method_bind_52 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_object_instance_ID");

        public static int body_get_object_instance_ID(RID body)
        {
            return NativeCalls.godot_icall_1_86(method_bind_52, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_53 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_enable_continuous_collision_detection");

        public static void body_set_enable_continuous_collision_detection(RID body, bool enable)
        {
            NativeCalls.godot_icall_2_98(method_bind_53, ptr, RID.GetPtr(body), enable);
        }

        private static IntPtr method_bind_54 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_is_continuous_collision_detection_enabled");

        public static bool body_is_continuous_collision_detection_enabled(RID body)
        {
            return NativeCalls.godot_icall_1_87(method_bind_54, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_55 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_param");

        public static void body_set_param(RID body, int param, float @value)
        {
            NativeCalls.godot_icall_3_97(method_bind_55, ptr, RID.GetPtr(body), param, @value);
        }

        private static IntPtr method_bind_56 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_param");

        public static float body_get_param(RID body, int param)
        {
            return NativeCalls.godot_icall_2_352(method_bind_56, ptr, RID.GetPtr(body), param);
        }

        private static IntPtr method_bind_57 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_state");

        public static void body_set_state(RID body, int state, object @value)
        {
            NativeCalls.godot_icall_3_360(method_bind_57, ptr, RID.GetPtr(body), state, @value);
        }

        private static IntPtr method_bind_58 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_state");

        public static void body_get_state(RID body, int state)
        {
            NativeCalls.godot_icall_2_91(method_bind_58, ptr, RID.GetPtr(body), state);
        }

        private static IntPtr method_bind_59 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_apply_impulse");

        public static void body_apply_impulse(RID body, Vector3 pos, Vector3 impulse)
        {
            NativeCalls.godot_icall_3_387(method_bind_59, ptr, RID.GetPtr(body), ref pos, ref impulse);
        }

        private static IntPtr method_bind_60 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_axis_velocity");

        public static void body_set_axis_velocity(RID body, Vector3 axis_velocity)
        {
            NativeCalls.godot_icall_2_388(method_bind_60, ptr, RID.GetPtr(body), ref axis_velocity);
        }

        private static IntPtr method_bind_61 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_axis_lock");

        public static void body_set_axis_lock(RID body, int axis)
        {
            NativeCalls.godot_icall_2_91(method_bind_61, ptr, RID.GetPtr(body), axis);
        }

        private static IntPtr method_bind_62 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_axis_lock");

        public static int body_get_axis_lock(RID body)
        {
            return NativeCalls.godot_icall_1_86(method_bind_62, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_63 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_add_collision_exception");

        public static void body_add_collision_exception(RID body, RID excepted_body)
        {
            NativeCalls.godot_icall_2_93(method_bind_63, ptr, RID.GetPtr(body), RID.GetPtr(excepted_body));
        }

        private static IntPtr method_bind_64 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_remove_collision_exception");

        public static void body_remove_collision_exception(RID body, RID excepted_body)
        {
            NativeCalls.godot_icall_2_93(method_bind_64, ptr, RID.GetPtr(body), RID.GetPtr(excepted_body));
        }

        private static IntPtr method_bind_65 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_max_contacts_reported");

        public static void body_set_max_contacts_reported(RID body, int amount)
        {
            NativeCalls.godot_icall_2_91(method_bind_65, ptr, RID.GetPtr(body), amount);
        }

        private static IntPtr method_bind_66 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_get_max_contacts_reported");

        public static int body_get_max_contacts_reported(RID body)
        {
            return NativeCalls.godot_icall_1_86(method_bind_66, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_67 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_omit_force_integration");

        public static void body_set_omit_force_integration(RID body, bool enable)
        {
            NativeCalls.godot_icall_2_98(method_bind_67, ptr, RID.GetPtr(body), enable);
        }

        private static IntPtr method_bind_68 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_is_omitting_force_integration");

        public static bool body_is_omitting_force_integration(RID body)
        {
            return NativeCalls.godot_icall_1_87(method_bind_68, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_69 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_force_integration_callback");

        public static void body_set_force_integration_callback(RID body, Object receiver, string method, object userdata = null)
        {
            NativeCalls.godot_icall_4_370(method_bind_69, ptr, RID.GetPtr(body), Object.GetPtr(receiver), method, userdata);
        }

        private static IntPtr method_bind_70 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_set_ray_pickable");

        public static void body_set_ray_pickable(RID body, bool enable)
        {
            NativeCalls.godot_icall_2_98(method_bind_70, ptr, RID.GetPtr(body), enable);
        }

        private static IntPtr method_bind_71 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "body_is_ray_pickable");

        public static bool body_is_ray_pickable(RID body)
        {
            return NativeCalls.godot_icall_1_87(method_bind_71, ptr, RID.GetPtr(body));
        }

        private static IntPtr method_bind_72 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "joint_create_pin");

        public static RID joint_create_pin(RID body_A, Vector3 local_A, RID body_B, Vector3 local_B)
        {
            IntPtr ret = NativeCalls.godot_icall_4_389(method_bind_72, ptr, RID.GetPtr(body_A), ref local_A, RID.GetPtr(body_B), ref local_B);
            return new RID(ret);
        }

        private static IntPtr method_bind_73 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "pin_joint_set_param");

        public static void pin_joint_set_param(RID joint, int param, float @value)
        {
            NativeCalls.godot_icall_3_97(method_bind_73, ptr, RID.GetPtr(joint), param, @value);
        }

        private static IntPtr method_bind_74 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "pin_joint_get_param");

        public static float pin_joint_get_param(RID joint, int param)
        {
            return NativeCalls.godot_icall_2_352(method_bind_74, ptr, RID.GetPtr(joint), param);
        }

        private static IntPtr method_bind_75 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "pin_joint_set_local_A");

        public static void pin_joint_set_local_A(RID joint, Vector3 local_A)
        {
            NativeCalls.godot_icall_2_388(method_bind_75, ptr, RID.GetPtr(joint), ref local_A);
        }

        private static IntPtr method_bind_76 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "pin_joint_get_local_A");

        public static Vector3 pin_joint_get_local_A(RID joint)
        {
            object ret = NativeCalls.godot_icall_1_390(method_bind_76, ptr, RID.GetPtr(joint));
            return (Vector3)ret;
        }

        private static IntPtr method_bind_77 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "pin_joint_set_local_B");

        public static void pin_joint_set_local_B(RID joint, Vector3 local_B)
        {
            NativeCalls.godot_icall_2_388(method_bind_77, ptr, RID.GetPtr(joint), ref local_B);
        }

        private static IntPtr method_bind_78 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "pin_joint_get_local_B");

        public static Vector3 pin_joint_get_local_B(RID joint)
        {
            object ret = NativeCalls.godot_icall_1_390(method_bind_78, ptr, RID.GetPtr(joint));
            return (Vector3)ret;
        }

        private static IntPtr method_bind_79 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "joint_create_hinge");

        public static RID joint_create_hinge(RID body_A, Transform hinge_A, RID body_B, Transform hinge_B)
        {
            IntPtr ret = NativeCalls.godot_icall_4_391(method_bind_79, ptr, RID.GetPtr(body_A), ref hinge_A, RID.GetPtr(body_B), ref hinge_B);
            return new RID(ret);
        }

        private static IntPtr method_bind_80 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "hinge_joint_set_param");

        public static void hinge_joint_set_param(RID joint, int param, float @value)
        {
            NativeCalls.godot_icall_3_97(method_bind_80, ptr, RID.GetPtr(joint), param, @value);
        }

        private static IntPtr method_bind_81 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "hinge_joint_get_param");

        public static float hinge_joint_get_param(RID joint, int param)
        {
            return NativeCalls.godot_icall_2_352(method_bind_81, ptr, RID.GetPtr(joint), param);
        }

        private static IntPtr method_bind_82 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "hinge_joint_set_flag");

        public static void hinge_joint_set_flag(RID joint, int flag, bool enabled)
        {
            NativeCalls.godot_icall_3_365(method_bind_82, ptr, RID.GetPtr(joint), flag, enabled);
        }

        private static IntPtr method_bind_83 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "hinge_joint_get_flag");

        public static bool hinge_joint_get_flag(RID joint, int flag)
        {
            return NativeCalls.godot_icall_2_366(method_bind_83, ptr, RID.GetPtr(joint), flag);
        }

        private static IntPtr method_bind_84 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "joint_create_slider");

        public static RID joint_create_slider(RID body_A, Transform local_ref_A, RID body_B, Transform local_ref_B)
        {
            IntPtr ret = NativeCalls.godot_icall_4_391(method_bind_84, ptr, RID.GetPtr(body_A), ref local_ref_A, RID.GetPtr(body_B), ref local_ref_B);
            return new RID(ret);
        }

        private static IntPtr method_bind_85 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "slider_joint_set_param");

        public static void slider_joint_set_param(RID joint, int param, float @value)
        {
            NativeCalls.godot_icall_3_97(method_bind_85, ptr, RID.GetPtr(joint), param, @value);
        }

        private static IntPtr method_bind_86 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "slider_joint_get_param");

        public static float slider_joint_get_param(RID joint, int param)
        {
            return NativeCalls.godot_icall_2_352(method_bind_86, ptr, RID.GetPtr(joint), param);
        }

        private static IntPtr method_bind_87 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "joint_create_cone_twist");

        public static RID joint_create_cone_twist(RID body_A, Transform local_ref_A, RID body_B, Transform local_ref_B)
        {
            IntPtr ret = NativeCalls.godot_icall_4_391(method_bind_87, ptr, RID.GetPtr(body_A), ref local_ref_A, RID.GetPtr(body_B), ref local_ref_B);
            return new RID(ret);
        }

        private static IntPtr method_bind_88 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cone_twist_joint_set_param");

        public static void cone_twist_joint_set_param(RID joint, int param, float @value)
        {
            NativeCalls.godot_icall_3_97(method_bind_88, ptr, RID.GetPtr(joint), param, @value);
        }

        private static IntPtr method_bind_89 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cone_twist_joint_get_param");

        public static float cone_twist_joint_get_param(RID joint, int param)
        {
            return NativeCalls.godot_icall_2_352(method_bind_89, ptr, RID.GetPtr(joint), param);
        }

        private static IntPtr method_bind_90 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "joint_get_type");

        public static int joint_get_type(RID joint)
        {
            return NativeCalls.godot_icall_1_86(method_bind_90, ptr, RID.GetPtr(joint));
        }

        private static IntPtr method_bind_91 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "joint_set_solver_priority");

        public static void joint_set_solver_priority(RID joint, int priority)
        {
            NativeCalls.godot_icall_2_91(method_bind_91, ptr, RID.GetPtr(joint), priority);
        }

        private static IntPtr method_bind_92 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "joint_get_solver_priority");

        public static int joint_get_solver_priority(RID joint)
        {
            return NativeCalls.godot_icall_1_86(method_bind_92, ptr, RID.GetPtr(joint));
        }

        private static IntPtr method_bind_93 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "joint_create_generic_6dof");

        public static RID joint_create_generic_6dof(RID body_A, Transform local_ref_A, RID body_B, Transform local_ref_B)
        {
            IntPtr ret = NativeCalls.godot_icall_4_391(method_bind_93, ptr, RID.GetPtr(body_A), ref local_ref_A, RID.GetPtr(body_B), ref local_ref_B);
            return new RID(ret);
        }

        private static IntPtr method_bind_94 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "generic_6dof_joint_set_param");

        public static void generic_6dof_joint_set_param(RID joint, int axis, int param, float @value)
        {
            NativeCalls.godot_icall_4_392(method_bind_94, ptr, RID.GetPtr(joint), axis, param, @value);
        }

        private static IntPtr method_bind_95 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "generic_6dof_joint_get_param");

        public static float generic_6dof_joint_get_param(RID joint, int axis, int param)
        {
            return NativeCalls.godot_icall_3_393(method_bind_95, ptr, RID.GetPtr(joint), axis, param);
        }

        private static IntPtr method_bind_96 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "generic_6dof_joint_set_flag");

        public static void generic_6dof_joint_set_flag(RID joint, int axis, int flag, bool enable)
        {
            NativeCalls.godot_icall_4_394(method_bind_96, ptr, RID.GetPtr(joint), axis, flag, enable);
        }

        private static IntPtr method_bind_97 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "generic_6dof_joint_get_flag");

        public static bool generic_6dof_joint_get_flag(RID joint, int axis, int flag)
        {
            return NativeCalls.godot_icall_3_395(method_bind_97, ptr, RID.GetPtr(joint), axis, flag);
        }

        private static IntPtr method_bind_98 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "free_rid");

        public static void free_rid(RID rid)
        {
            NativeCalls.godot_icall_1_100(method_bind_98, ptr, RID.GetPtr(rid));
        }

        private static IntPtr method_bind_99 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_active");

        public static void set_active(bool active)
        {
            NativeCalls.godot_icall_1_13(method_bind_99, ptr, active);
        }

        private static IntPtr method_bind_100 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_process_info");

        public static int get_process_info(int process_info)
        {
            return NativeCalls.godot_icall_1_28(method_bind_100, ptr, process_info);
        }
    }
}
