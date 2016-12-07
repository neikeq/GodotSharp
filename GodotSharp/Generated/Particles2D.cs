using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Particles2D is a particle system 2D [Node] that is used to simulate several types of particle effects, such as explosions, rain, snow, fireflies, or other magical-like shinny sparkles. Particles are drawn using impostors, and given their dynamic behavior, the user must provide a visibility AABB (although helpers to create one automatically exist).
    /// </summary>
    public class Particles2D : Node2D
    {
        /// <summary>
        /// Direction in degrees at which the particles will be launched, Notice that when the direction is set to 0 the particles will be launched to the negative
        /// </summary>
        public const int PARAM_DIRECTION = 0;
        public const int PARAM_SPREAD = 1;
        /// <summary>
        /// Velocity at which the particles will be launched.
        /// </summary>
        public const int PARAM_LINEAR_VELOCITY = 2;
        /// <summary>
        /// The speed at which particles will spin around its own center.
        /// </summary>
        public const int PARAM_SPIN_VELOCITY = 3;
        /// <summary>
        /// Velocity at which the particles will orbit around the emitter center
        /// </summary>
        public const int PARAM_ORBIT_VELOCITY = 4;
        /// <summary>
        /// Direction in degrees at which the particles will be attracted
        /// </summary>
        public const int PARAM_GRAVITY_DIRECTION = 5;
        /// <summary>
        /// Strength of the gravitation attraction for each particle
        /// </summary>
        public const int PARAM_GRAVITY_STRENGTH = 6;
        public const int PARAM_RADIAL_ACCEL = 7;
        public const int PARAM_TANGENTIAL_ACCEL = 8;
        /// <summary>
        /// Amount of damping for each particle
        /// </summary>
        public const int PARAM_DAMPING = 9;
        /// <summary>
        /// Initial angle in radians at which each particle will be spawned
        /// </summary>
        public const int PARAM_INITIAL_ANGLE = 10;
        /// <summary>
        /// Initial size of each particle
        /// </summary>
        public const int PARAM_INITIAL_SIZE = 11;
        /// <summary>
        /// Final size of each particle, the particle size will interpolate to this value during its lifetime.
        /// </summary>
        public const int PARAM_FINAL_SIZE = 12;
        public const int PARAM_HUE_VARIATION = 13;
        public const int PARAM_ANIM_SPEED_SCALE = 14;
        public const int PARAM_ANIM_INITIAL_POS = 15;
        public const int PARAM_MAX = 16;
        public const int MAX_COLOR_PHASES = 4;

        private const string nativeName = "Particles2D";

        public Particles2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Particles2D_Ctor(this);
        }

        internal Particles2D(bool memoryOwn) : base(memoryOwn) {}

        ~Particles2D()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_emitting");

        /// <summary>
        /// If this is set to true then the particle emitter will emit particles, if its false it will not.
        /// </summary>
        public void set_emitting(bool active)
        {
            NativeCalls.godot_icall_1_13(method_bind_0, Object.GetPtr(this), active);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_emitting");

        /// <summary>
        /// Returns whether this emitter is currently emitting or not
        /// </summary>
        public bool is_emitting()
        {
            return NativeCalls.godot_icall_0_14(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_amount");

        /// <summary>
        /// Sets the amount of particles spawned at each emission
        /// </summary>
        public void set_amount(int amount)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), amount);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_amount");

        /// <summary>
        /// Returns the amount of particles spawned at each emission
        /// </summary>
        public int get_amount()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_lifetime");

        /// <summary>
        /// Sets the amount of seconds that each particle will be visible.
        /// </summary>
        public void set_lifetime(float lifetime)
        {
            NativeCalls.godot_icall_1_45(method_bind_4, Object.GetPtr(this), lifetime);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_lifetime");

        /// <summary>
        /// Gets the amount of seconds that each particle will be visible.
        /// </summary>
        public float get_lifetime()
        {
            return NativeCalls.godot_icall_0_46(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_time_scale");

        /// <summary>
        /// Sets the increment or decrement for the particle lifetime. for example: if the time scale is set to 2, the particles will die and move twice as fast.
        /// </summary>
        public void set_time_scale(float time_scale)
        {
            NativeCalls.godot_icall_1_45(method_bind_6, Object.GetPtr(this), time_scale);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_time_scale");

        /// <summary>
        /// Returns the emitter time scale
        /// </summary>
        public float get_time_scale()
        {
            return NativeCalls.godot_icall_0_46(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_pre_process_time");

        public void set_pre_process_time(float time)
        {
            NativeCalls.godot_icall_1_45(method_bind_8, Object.GetPtr(this), time);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pre_process_time");

        public float get_pre_process_time()
        {
            return NativeCalls.godot_icall_0_46(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_emit_timeout");

        /// <summary>
        /// Sets the amount of seconds during which the emitter will spawn particles, after the specified seconds the emitter state will be set to non emitting, so calling [method is_emitting] will return false. If the timeout is 0 the emitter will spawn forever.
        /// </summary>
        public void set_emit_timeout(float @value)
        {
            NativeCalls.godot_icall_1_45(method_bind_10, Object.GetPtr(this), @value);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_emit_timeout");

        /// <summary>
        /// Returns the amount of seconds during which the emitter will spawn particles
        /// </summary>
        public float get_emit_timeout()
        {
            return NativeCalls.godot_icall_0_46(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_param");

        /// <summary>
        /// Sets the value of the specified emitter parameter (see the constants secction for the list of parameters)
        /// </summary>
        public void set_param(int param, float @value)
        {
            NativeCalls.godot_icall_2_36(method_bind_12, Object.GetPtr(this), param, @value);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_param");

        /// <summary>
        /// Returns the value of the specified emitter parameter
        /// </summary>
        public float get_param(int param)
        {
            return NativeCalls.godot_icall_1_3(method_bind_13, Object.GetPtr(this), param);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_randomness");

        /// <summary>
        /// Sets the randomness value of the specified emitter parameter (see the constants secction for the list of parameters), 0 means no randomness, so every particle will have the parameters specified, 1 means that the parameter will be choosen at random, the closer the randomness value gets to 0 the more conservative the variation of the parameter will be.
        /// </summary>
        public void set_randomness(int param, float @value)
        {
            NativeCalls.godot_icall_2_36(method_bind_14, Object.GetPtr(this), param, @value);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_randomness");

        /// <summary>
        /// Returns the randomness value of the specified emitter parameter
        /// </summary>
        public float get_randomness(int param)
        {
            return NativeCalls.godot_icall_1_3(method_bind_15, Object.GetPtr(this), param);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_texture");

        /// <summary>
        /// Sets the texture for each particle
        /// </summary>
        public Texture set_texture(Object texture)
        {
            return NativeCalls.godot_icall_1_337(method_bind_16, Object.GetPtr(this), Object.GetPtr(texture));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_texture");

        /// <summary>
        /// Returns the texture for emitted particles
        /// </summary>
        public Texture get_texture()
        {
            return NativeCalls.godot_icall_0_80(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_color");

        /// <summary>
        /// Set the tint color for each particle.
        /// </summary>
        public void set_color(Color color)
        {
            NativeCalls.godot_icall_1_25(method_bind_18, Object.GetPtr(this), ref color);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_color");

        /// <summary>
        /// Returns the tint color for each particle.
        /// </summary>
        public Color get_color()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_19, Object.GetPtr(this));
            return (Color)ret;
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_color_ramp");

        /// <summary>
        /// Sets the [ColorRamp] used to tint each particle. Particle will be tinted according to their lifetimes.
        /// </summary>
        public ColorRamp set_color_ramp(Object color_ramp)
        {
            return NativeCalls.godot_icall_1_338(method_bind_20, Object.GetPtr(this), Object.GetPtr(color_ramp));
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_color_ramp");

        /// <summary>
        /// Returns the [ColorRamp] used to tint each particle
        /// </summary>
        public ColorRamp get_color_ramp()
        {
            return NativeCalls.godot_icall_0_339(method_bind_21, Object.GetPtr(this));
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_emissor_offset");

        /// <summary>
        /// Sets the particle spawn origin position relative to the emitter center. for example if this value is set to (50, 50), the particle will spawn 50 units to the right and  50 units to the bottom of the emitter center.
        /// </summary>
        public void set_emissor_offset(Vector2 offset)
        {
            NativeCalls.godot_icall_1_23(method_bind_22, Object.GetPtr(this), ref offset);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_emissor_offset");

        /// <summary>
        /// Returns the particle spawn origin position relative to the emitter.
        /// </summary>
        public Vector2 get_emissor_offset()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_23, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_flip_h");

        public void set_flip_h(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_24, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_flipped_h");

        public bool is_flipped_h()
        {
            return NativeCalls.godot_icall_0_14(method_bind_25, Object.GetPtr(this));
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_flip_v");

        public void set_flip_v(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_26, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_flipped_v");

        public bool is_flipped_v()
        {
            return NativeCalls.godot_icall_0_14(method_bind_27, Object.GetPtr(this));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_h_frames");

        public void set_h_frames(int enable)
        {
            NativeCalls.godot_icall_1_4(method_bind_28, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_h_frames");

        public int get_h_frames()
        {
            return NativeCalls.godot_icall_0_0(method_bind_29, Object.GetPtr(this));
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_v_frames");

        public void set_v_frames(int enable)
        {
            NativeCalls.godot_icall_1_4(method_bind_30, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_v_frames");

        public int get_v_frames()
        {
            return NativeCalls.godot_icall_0_0(method_bind_31, Object.GetPtr(this));
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_emission_half_extents");

        /// <summary>
        /// Sets the half extents of the emission box, particles will be spawned at random inside this box.
        /// </summary>
        public void set_emission_half_extents(Vector2 extents)
        {
            NativeCalls.godot_icall_1_23(method_bind_32, Object.GetPtr(this), ref extents);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_emission_half_extents");

        /// <summary>
        /// Returns the half extents of the emission box.
        /// </summary>
        public Vector2 get_emission_half_extents()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_33, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_color_phases");

        public void set_color_phases(int phases)
        {
            NativeCalls.godot_icall_1_4(method_bind_34, Object.GetPtr(this), phases);
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_color_phases");

        public int get_color_phases()
        {
            return NativeCalls.godot_icall_0_0(method_bind_35, Object.GetPtr(this));
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_color_phase_color");

        public void set_color_phase_color(int phase, Color color)
        {
            NativeCalls.godot_icall_2_160(method_bind_36, Object.GetPtr(this), phase, ref color);
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_color_phase_color");

        public Color get_color_phase_color(int phase)
        {
            object ret = NativeCalls.godot_icall_1_161(method_bind_37, Object.GetPtr(this), phase);
            return (Color)ret;
        }

        private IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_color_phase_pos");

        public void set_color_phase_pos(int phase, float pos)
        {
            NativeCalls.godot_icall_2_36(method_bind_38, Object.GetPtr(this), phase, pos);
        }

        private IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_color_phase_pos");

        public float get_color_phase_pos(int phase)
        {
            return NativeCalls.godot_icall_1_3(method_bind_39, Object.GetPtr(this), phase);
        }

        private IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "pre_process");

        public void pre_process(float time)
        {
            NativeCalls.godot_icall_1_45(method_bind_40, Object.GetPtr(this), time);
        }

        private IntPtr method_bind_41 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "reset");

        public void reset()
        {
            NativeCalls.godot_icall_0_7(method_bind_41, Object.GetPtr(this));
        }

        private IntPtr method_bind_42 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_use_local_space");

        public void set_use_local_space(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_42, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_43 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_using_local_space");

        public bool is_using_local_space()
        {
            return NativeCalls.godot_icall_0_14(method_bind_43, Object.GetPtr(this));
        }

        private IntPtr method_bind_44 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_initial_velocity");

        public void set_initial_velocity(Vector2 velocity)
        {
            NativeCalls.godot_icall_1_23(method_bind_44, Object.GetPtr(this), ref velocity);
        }

        private IntPtr method_bind_45 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_initial_velocity");

        public Vector2 get_initial_velocity()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_45, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_46 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_explosiveness");

        public void set_explosiveness(float amount)
        {
            NativeCalls.godot_icall_1_45(method_bind_46, Object.GetPtr(this), amount);
        }

        private IntPtr method_bind_47 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_explosiveness");

        public float get_explosiveness()
        {
            return NativeCalls.godot_icall_0_46(method_bind_47, Object.GetPtr(this));
        }

        private IntPtr method_bind_48 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_emission_points");

        public void set_emission_points(List<Vector2> points)
        {
            NativeCalls.godot_icall_1_156(method_bind_48, Object.GetPtr(this), points.ToArray());
        }

        private IntPtr method_bind_49 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_emission_points");

        public List<Vector2> get_emission_points()
        {
            Vector2[] ret = NativeCalls.godot_icall_0_157(method_bind_49, Object.GetPtr(this));
            return new List<Vector2>(ret);
        }
    }
}
