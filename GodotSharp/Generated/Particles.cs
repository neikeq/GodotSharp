using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Particles is a particle system 3D [Node] that is used to simulate several types of particle effects, such as explosions, rain, snow, fireflies, or other magical-like shinny sparkles. Particles are drawn using impostors, and given their dynamic behavior, the user must provide a visibility AABB (although helpers to create one automatically exist).
    /// </summary>
    public class Particles : GeometryInstance
    {
        public const int VAR_LIFETIME = 0;
        public const int VAR_SPREAD = 1;
        public const int VAR_GRAVITY = 2;
        public const int VAR_LINEAR_VELOCITY = 3;
        public const int VAR_ANGULAR_VELOCITY = 4;
        public const int VAR_LINEAR_ACCELERATION = 5;
        public const int VAR_DRAG = 6;
        public const int VAR_TANGENTIAL_ACCELERATION = 7;
        public const int VAR_INITIAL_SIZE = 9;
        public const int VAR_FINAL_SIZE = 10;
        public const int VAR_INITIAL_ANGLE = 11;
        public const int VAR_HEIGHT = 12;
        public const int VAR_HEIGHT_SPEED_SCALE = 13;
        public const int VAR_MAX = 14;

        private const string nativeName = "Particles";

        public Particles() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Particles_Ctor(this);
        }

        internal Particles(bool memoryOwn) : base(memoryOwn) {}

        ~Particles()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_amount");

        /// <summary>
        /// Set total amount of particles in the system.
        /// </summary>
        public void set_amount(int amount)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), amount);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_amount");

        /// <summary>
        /// Return the total amount of particles in the system.
        /// </summary>
        public int get_amount()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_emitting");

        /// <summary>
        /// Set the "emitting" property state. When emitting, the particle system generates new particles at constant rate.
        /// </summary>
        public void set_emitting(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_2, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_emitting");

        /// <summary>
        /// Return the "emitting" property state (see [method set_emitting]).
        /// </summary>
        public bool is_emitting()
        {
            return NativeCalls.godot_icall_0_14(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_visibility_aabb");

        /// <summary>
        /// Set the visibility AABB for the particle system, since the default one will not work properly most of the time.
        /// </summary>
        public void set_visibility_aabb(AABB aabb)
        {
            NativeCalls.godot_icall_1_279(method_bind_4, Object.GetPtr(this), ref aabb);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_visibility_aabb");

        /// <summary>
        /// Return the current visibility AABB.
        /// </summary>
        public AABB get_visibility_aabb()
        {
            object ret = NativeCalls.godot_icall_0_280(method_bind_5, Object.GetPtr(this));
            return (AABB)ret;
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_emission_half_extents");

        /// <summary>
        /// Set the half extents for the emission box.
        /// </summary>
        public void set_emission_half_extents(Vector3 half_extents)
        {
            NativeCalls.godot_icall_1_76(method_bind_6, Object.GetPtr(this), ref half_extents);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_emission_half_extents");

        /// <summary>
        /// Return the half extents for the emission box.
        /// </summary>
        public Vector3 get_emission_half_extents()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_7, Object.GetPtr(this));
            return (Vector3)ret;
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_emission_base_velocity");

        public void set_emission_base_velocity(Vector3 base_velocity)
        {
            NativeCalls.godot_icall_1_76(method_bind_8, Object.GetPtr(this), ref base_velocity);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_emission_base_velocity");

        public Vector3 get_emission_base_velocity()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_9, Object.GetPtr(this));
            return (Vector3)ret;
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_emission_points");

        public void set_emission_points(List<Vector3> points)
        {
            NativeCalls.godot_icall_1_167(method_bind_10, Object.GetPtr(this), points.ToArray());
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_emission_points");

        public List<Vector3> get_emission_points()
        {
            Vector3[] ret = NativeCalls.godot_icall_0_168(method_bind_11, Object.GetPtr(this));
            return new List<Vector3>(ret);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_gravity_normal");

        /// <summary>
        /// Set the normal vector towards where gravity is pulling (by default, negative Y).
        /// </summary>
        public void set_gravity_normal(Vector3 normal)
        {
            NativeCalls.godot_icall_1_76(method_bind_12, Object.GetPtr(this), ref normal);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_gravity_normal");

        /// <summary>
        /// Return the normal vector towards where gravity is pulling (by default, negative Y).
        /// </summary>
        public Vector3 get_gravity_normal()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_13, Object.GetPtr(this));
            return (Vector3)ret;
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_variable");

        /// <summary>
        /// Set a specific variable for the particle system (see VAR_* enum).
        /// </summary>
        public void set_variable(int variable, float @value)
        {
            NativeCalls.godot_icall_2_36(method_bind_14, Object.GetPtr(this), variable, @value);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_variable");

        /// <summary>
        /// Return a specific variable for the particle system (see VAR_* enum).
        /// </summary>
        public float get_variable(int variable)
        {
            return NativeCalls.godot_icall_1_3(method_bind_15, Object.GetPtr(this), variable);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_randomness");

        /// <summary>
        /// Set the randomness for a specific variable of the particle system. Randomness produces small changes from the default each time a particle is emitted.
        /// </summary>
        public void set_randomness(int variable, float randomness)
        {
            NativeCalls.godot_icall_2_36(method_bind_16, Object.GetPtr(this), variable, randomness);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_randomness");

        /// <summary>
        /// Return the randomness for a specific variable of the particle system. Randomness produces small changes from the default each time a particle is emitted.
        /// </summary>
        public float get_randomness(int variable)
        {
            return NativeCalls.godot_icall_1_3(method_bind_17, Object.GetPtr(this), variable);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_color_phase_pos");

        /// <summary>
        /// Set the position of a color phase (0 to 1).
        /// </summary>
        public void set_color_phase_pos(int phase, float pos)
        {
            NativeCalls.godot_icall_2_36(method_bind_18, Object.GetPtr(this), phase, pos);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_color_phase_pos");

        /// <summary>
        /// Return the position of a color phase (0 to 1).
        /// </summary>
        public float get_color_phase_pos(int phase)
        {
            return NativeCalls.godot_icall_1_3(method_bind_19, Object.GetPtr(this), phase);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_color_phase_color");

        /// <summary>
        /// Set the color of a color phase.
        /// </summary>
        public void set_color_phase_color(int phase, Color color)
        {
            NativeCalls.godot_icall_2_160(method_bind_20, Object.GetPtr(this), phase, ref color);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_color_phase_color");

        /// <summary>
        /// Return the color of a color phase.
        /// </summary>
        public Color get_color_phase_color(int phase)
        {
            object ret = NativeCalls.godot_icall_1_161(method_bind_21, Object.GetPtr(this), phase);
            return (Color)ret;
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_material");

        /// <summary>
        /// Set the material used to draw particles.
        /// </summary>
        public void set_material(Material material)
        {
            NativeCalls.godot_icall_1_21(method_bind_22, Object.GetPtr(this), Object.GetPtr(material));
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_material");

        /// <summary>
        /// Return the material used to draw particles.
        /// </summary>
        public Material get_material()
        {
            return NativeCalls.godot_icall_0_336(method_bind_23, Object.GetPtr(this));
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_emit_timeout");

        public void set_emit_timeout(float timeout)
        {
            NativeCalls.godot_icall_1_45(method_bind_24, Object.GetPtr(this), timeout);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_emit_timeout");

        public float get_emit_timeout()
        {
            return NativeCalls.godot_icall_0_46(method_bind_25, Object.GetPtr(this));
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_height_from_velocity");

        public void set_height_from_velocity(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_26, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_height_from_velocity");

        public bool has_height_from_velocity()
        {
            return NativeCalls.godot_icall_0_14(method_bind_27, Object.GetPtr(this));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_use_local_coordinates");

        public void set_use_local_coordinates(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_28, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_using_local_coordinates");

        public bool is_using_local_coordinates()
        {
            return NativeCalls.godot_icall_0_14(method_bind_29, Object.GetPtr(this));
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_color_phases");

        public void set_color_phases(int count)
        {
            NativeCalls.godot_icall_1_4(method_bind_30, Object.GetPtr(this), count);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_color_phases");

        public int get_color_phases()
        {
            return NativeCalls.godot_icall_0_0(method_bind_31, Object.GetPtr(this));
        }
    }
}
