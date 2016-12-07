using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// General purpose area detection for 3D physics. Areas can be used for detection of objects that enter/exit them, as well as overriding space parameters (changing gravity, damping, etc). For this, use any space override different from AREA_SPACE_OVERRIDE_DISABLE and point gravity at the center of mass.
    /// </summary>
    public class Area : CollisionObject
    {
        private const string nativeName = "Area";

        public Area() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Area_Ctor(this);
        }

        internal Area(bool memoryOwn) : base(memoryOwn) {}

        ~Area()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_space_override_mode");

        /// <summary>
        /// Set the space override mode. This mode controls how an area affects gravity and damp.
        /// AREA_SPACE_OVERRIDE_DISABLED: This area does not affect gravity/damp. These are generally areas that exist only to detect collisions, and objects entering or exiting them.
        /// AREA_SPACE_OVERRIDE_COMBINE: This area adds its gravity/damp values to whatever has been calculated so far. This way, many overlapping areas can combine their physics to make interesting effects.
        /// AREA_SPACE_OVERRIDE_COMBINE_REPLACE: This area adds its gravity/damp values to whatever has been calculated so far. Then stops taking into account the rest of the areas, even the default one.
        /// AREA_SPACE_OVERRIDE_REPLACE: This area replaces any gravity/damp, even the default one, and stops taking into account the rest of the areas.
        /// AREA_SPACE_OVERRIDE_REPLACE_COMBINE: This area replaces any gravity/damp calculated so far, but keeps calculating the rest of the areas, down to the default one.
        /// </summary>
        public void set_space_override_mode(int enable)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_space_override_mode");

        /// <summary>
        /// Return the space override mode.
        /// </summary>
        public int get_space_override_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_gravity_is_point");

        /// <summary>
        /// When overriding space parameters, this method sets whether this area has a center of gravity. To set/get the location of the center of gravity, use [method set_gravity_vector]/[method get_gravity_vector].
        /// </summary>
        public void set_gravity_is_point(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_2, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_gravity_a_point");

        /// <summary>
        /// Return whether gravity is a point. A point gravity will attract objects towards it, as opposed to a gravity vector, which moves them in a given direction.
        /// </summary>
        public bool is_gravity_a_point()
        {
            return NativeCalls.godot_icall_0_14(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_gravity_distance_scale");

        /// <summary>
        /// Set the falloff factor for point gravity. The greater this value is, the faster the strength of gravity decreases with the square of distance.
        /// </summary>
        public void set_gravity_distance_scale(float distance_scale)
        {
            NativeCalls.godot_icall_1_45(method_bind_4, Object.GetPtr(this), distance_scale);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_gravity_distance_scale");

        /// <summary>
        /// Return the falloff factor for point gravity.
        /// </summary>
        public float get_gravity_distance_scale()
        {
            return NativeCalls.godot_icall_0_46(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_gravity_vector");

        /// <summary>
        /// Set the gravity vector. This vector does not have to be normalized.
        /// If gravity is a point (see [method is_gravity_a_point]), this will be the attraction center.
        /// </summary>
        public void set_gravity_vector(Vector3 vector)
        {
            NativeCalls.godot_icall_1_76(method_bind_6, Object.GetPtr(this), ref vector);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_gravity_vector");

        /// <summary>
        /// Return the gravity vector. If gravity is a point (see [method is_gravity_a_point]), this will be the attraction center.
        /// </summary>
        public Vector3 get_gravity_vector()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_7, Object.GetPtr(this));
            return (Vector3)ret;
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_gravity");

        /// <summary>
        /// Set the gravity intensity. This is useful to alter the force of gravity without altering its direction.
        /// This value multiplies the gravity vector, whether it is the given vector ([method set_gravity_vector]), or a calculated one (when using a center of gravity).
        /// </summary>
        public void set_gravity(float gravity)
        {
            NativeCalls.godot_icall_1_45(method_bind_8, Object.GetPtr(this), gravity);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_gravity");

        /// <summary>
        /// Return the gravity intensity.
        /// </summary>
        public float get_gravity()
        {
            return NativeCalls.godot_icall_0_46(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_angular_damp");

        /// <summary>
        /// Set the rate at which objects stop spinning in this area, if there are not any other forces making it spin. The value is a fraction of its current speed, lost per second. Thus, a value of 1.0 should mean stopping immediately, and 0.0 means the object never stops.
        /// In practice, as the fraction of speed lost gets smaller with each frame, a value of 1.0 does not mean the object will stop in exactly one second. Only when the physics calculations are done at 1 frame per second, it does stop in a second.
        /// </summary>
        public void set_angular_damp(float angular_damp)
        {
            NativeCalls.godot_icall_1_45(method_bind_10, Object.GetPtr(this), angular_damp);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_angular_damp");

        /// <summary>
        /// Return the angular damp rate.
        /// </summary>
        public float get_angular_damp()
        {
            return NativeCalls.godot_icall_0_46(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_linear_damp");

        /// <summary>
        /// Set the rate at which objects stop moving in this area, if there are not any other forces moving it. The value is a fraction of its current speed, lost per second. Thus, a value of 1.0 should mean stopping immediately, and 0.0 means the object never stops.
        /// In practice, as the fraction of speed lost gets smaller with each frame, a value of 1.0 does not mean the object will stop in exactly one second. Only when the physics calculations are done at 1 frame per second, it does stop in a second.
        /// </summary>
        public void set_linear_damp(float linear_damp)
        {
            NativeCalls.godot_icall_1_45(method_bind_12, Object.GetPtr(this), linear_damp);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_linear_damp");

        /// <summary>
        /// Return the linear damp rate.
        /// </summary>
        public float get_linear_damp()
        {
            return NativeCalls.godot_icall_0_46(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_priority");

        /// <summary>
        /// Set the order in which the area is processed. Greater values mean the area gets processed first. This is useful for areas which have an space override different from AREA_SPACE_OVERRIDE_DISABLED or AREA_SPACE_OVERRIDE_COMBINE, as they replace values, and are thus order-dependent.
        /// Areas with the same priority value get evaluated in an unpredictable order, and should be differentiated if evaluation order is to be important.
        /// </summary>
        public void set_priority(float priority)
        {
            NativeCalls.godot_icall_1_45(method_bind_14, Object.GetPtr(this), priority);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_priority");

        /// <summary>
        /// Return the processing order of this area.
        /// </summary>
        public float get_priority()
        {
            return NativeCalls.godot_icall_0_46(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collision_mask");

        /// <summary>
        /// Set the physics layers this area can scan for collisions.
        /// </summary>
        public void set_collision_mask(int collision_mask)
        {
            NativeCalls.godot_icall_1_4(method_bind_16, Object.GetPtr(this), collision_mask);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_mask");

        /// <summary>
        /// Return the physics layers this area can scan for collisions.
        /// </summary>
        public int get_collision_mask()
        {
            return NativeCalls.godot_icall_0_0(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_layer_mask");

        /// <summary>
        /// Set the physics layers this area is in.
        /// Collidable objects can exist in any of 32 different layers. These layers are not visual, but more of a tagging system instead. A collidable can use these layers/tags to select with which objects it can collide, using [method set_collision_mask].
        /// A contact is detected if object A is in any of the layers that object B scans, or object B is in any layer scanned by object A.
        /// </summary>
        public void set_layer_mask(int layer_mask)
        {
            NativeCalls.godot_icall_1_4(method_bind_18, Object.GetPtr(this), layer_mask);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_layer_mask");

        /// <summary>
        /// Return the physics layer this area is in.
        /// </summary>
        public int get_layer_mask()
        {
            return NativeCalls.godot_icall_0_0(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collision_mask_bit");

        /// <summary>
        /// Set/clear individual bits on the collision mask. This makes selecting the areas scanned easier.
        /// </summary>
        public void set_collision_mask_bit(int bit, bool @value)
        {
            NativeCalls.godot_icall_2_32(method_bind_20, Object.GetPtr(this), bit, @value);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_mask_bit");

        /// <summary>
        /// Return an individual bit on the collision mask.
        /// </summary>
        public bool get_collision_mask_bit(int bit)
        {
            return NativeCalls.godot_icall_1_33(method_bind_21, Object.GetPtr(this), bit);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_layer_mask_bit");

        /// <summary>
        /// Set/clear individual bits on the layer mask. This makes getting an area in/out of only one layer easier.
        /// </summary>
        public void set_layer_mask_bit(int bit, bool @value)
        {
            NativeCalls.godot_icall_2_32(method_bind_22, Object.GetPtr(this), bit, @value);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_layer_mask_bit");

        /// <summary>
        /// Return an individual bit on the layer mask.
        /// </summary>
        public bool get_layer_mask_bit(int bit)
        {
            return NativeCalls.godot_icall_1_33(method_bind_23, Object.GetPtr(this), bit);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_monitorable");

        /// <summary>
        /// Set whether this area can be detected by other, monitoring, areas. Only areas need to be marked as monitorable. Bodies are always so.
        /// </summary>
        public void set_monitorable(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_24, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_monitorable");

        /// <summary>
        /// Return whether this area can be detected by other, monitoring, areas.
        /// </summary>
        public bool is_monitorable()
        {
            return NativeCalls.godot_icall_0_14(method_bind_25, Object.GetPtr(this));
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_enable_monitoring");

        /// <summary>
        /// Set whether this area can detect bodies/areas entering/exiting it.
        /// </summary>
        public void set_enable_monitoring(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_26, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_monitoring_enabled");

        /// <summary>
        /// Return whether this area detects bodies/areas entering/exiting it.
        /// </summary>
        public bool is_monitoring_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_27, Object.GetPtr(this));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_overlapping_bodies");

        /// <summary>
        /// Return a list of the bodies ([PhysicsBody]) that are totally or partially inside this area.
        /// </summary>
        public List<object> get_overlapping_bodies()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_28, Object.GetPtr(this));
            return new List<object>(ret);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_overlapping_areas");

        /// <summary>
        /// Return a list of the areas that are totally or partially inside this area.
        /// </summary>
        public List<object> get_overlapping_areas()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_29, Object.GetPtr(this));
            return new List<object>(ret);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "overlaps_body");

        /// <summary>
        /// Return whether the body passed is totally or partially inside this area.
        /// </summary>
        public bool overlaps_body(Object body)
        {
            return NativeCalls.godot_icall_1_79(method_bind_30, Object.GetPtr(this), Object.GetPtr(body));
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "overlaps_area");

        /// <summary>
        /// Return whether the area passed is totally or partially inside this area.
        /// </summary>
        public bool overlaps_area(Object area)
        {
            return NativeCalls.godot_icall_1_79(method_bind_31, Object.GetPtr(this), Object.GetPtr(area));
        }
    }
}
