/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class Particles2D : Node2D {
  public static readonly int PARAM_DIRECTION = 0;
  public static readonly int PARAM_SPREAD = 1;
  public static readonly int PARAM_LINEAR_VELOCITY = 2;
  public static readonly int PARAM_SPIN_VELOCITY = 3;
  public static readonly int PARAM_ORBIT_VELOCITY = 4;
  public static readonly int PARAM_GRAVITY_DIRECTION = 5;
  public static readonly int PARAM_GRAVITY_STRENGTH = 6;
  public static readonly int PARAM_RADIAL_ACCEL = 7;
  public static readonly int PARAM_TANGENTIAL_ACCEL = 8;
  public static readonly int PARAM_DAMPING = 9;
  public static readonly int PARAM_INITIAL_ANGLE = 10;
  public static readonly int PARAM_INITIAL_SIZE = 11;
  public static readonly int PARAM_FINAL_SIZE = 12;
  public static readonly int PARAM_HUE_VARIATION = 13;
  public static readonly int PARAM_ANIM_SPEED_SCALE = 14;
  public static readonly int PARAM_ANIM_INITIAL_POS = 15;
  public static readonly int PARAM_MAX = 16;
  public static readonly int MAX_COLOR_PHASES = 4;

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal Particles2D(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.Particles2D_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected Particles2D(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.Particles2D_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(Particles2D obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          throw new global::System.MethodAccessException("C++ destructor does not have public access");
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public void set_emitting(bool active) {
    GodotEnginePINVOKE.Particles2D_set_emitting(swigCPtr, active);
  }

  public bool is_emitting() {
    bool ret = GodotEnginePINVOKE.Particles2D_is_emitting(swigCPtr);
    return ret;
  }

  public void set_amount(int amount) {
    GodotEnginePINVOKE.Particles2D_set_amount(swigCPtr, amount);
  }

  public int get_amount() {
    int ret = GodotEnginePINVOKE.Particles2D_get_amount(swigCPtr);
    return ret;
  }

  public void set_lifetime(float lifetime) {
    GodotEnginePINVOKE.Particles2D_set_lifetime(swigCPtr, lifetime);
  }

  public float get_lifetime() {
    float ret = GodotEnginePINVOKE.Particles2D_get_lifetime(swigCPtr);
    return ret;
  }

  public void set_time_scale(float time_scale) {
    GodotEnginePINVOKE.Particles2D_set_time_scale(swigCPtr, time_scale);
  }

  public float get_time_scale() {
    float ret = GodotEnginePINVOKE.Particles2D_get_time_scale(swigCPtr);
    return ret;
  }

  public void set_pre_process_time(float time) {
    GodotEnginePINVOKE.Particles2D_set_pre_process_time(swigCPtr, time);
  }

  public float get_pre_process_time() {
    float ret = GodotEnginePINVOKE.Particles2D_get_pre_process_time(swigCPtr);
    return ret;
  }

  public void set_emit_timeout(float value) {
    GodotEnginePINVOKE.Particles2D_set_emit_timeout(swigCPtr, value);
  }

  public float get_emit_timeout() {
    float ret = GodotEnginePINVOKE.Particles2D_get_emit_timeout(swigCPtr);
    return ret;
  }

  public void set_param(int param, float value) {
    GodotEnginePINVOKE.Particles2D_set_param(swigCPtr, param, value);
  }

  public float get_param(int param) {
    float ret = GodotEnginePINVOKE.Particles2D_get_param(swigCPtr, param);
    return ret;
  }

  public void set_randomness(int param, float value) {
    GodotEnginePINVOKE.Particles2D_set_randomness(swigCPtr, param, value);
  }

  public float get_randomness(int param) {
    float ret = GodotEnginePINVOKE.Particles2D_get_randomness(swigCPtr, param);
    return ret;
  }

  public SWIGTYPE_p_RefT_Texture_t set_texture(Object texture) {
    SWIGTYPE_p_RefT_Texture_t ret = new SWIGTYPE_p_RefT_Texture_t(GodotEnginePINVOKE.Particles2D_set_texture(swigCPtr, Object.getCPtr(texture)), true);
    return ret;
  }

  public SWIGTYPE_p_RefT_Texture_t get_texture() {
    SWIGTYPE_p_RefT_Texture_t ret = new SWIGTYPE_p_RefT_Texture_t(GodotEnginePINVOKE.Particles2D_get_texture(swigCPtr), true);
    return ret;
  }

  public void set_color(SWIGTYPE_p_Color color) {
    GodotEnginePINVOKE.Particles2D_set_color(swigCPtr, SWIGTYPE_p_Color.getCPtr(color));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Color get_color() {
    SWIGTYPE_p_Color ret = new SWIGTYPE_p_Color(GodotEnginePINVOKE.Particles2D_get_color(swigCPtr), true);
    return ret;
  }

  public SWIGTYPE_p_RefT_ColorRamp_t set_color_ramp(Object color_ramp) {
    SWIGTYPE_p_RefT_ColorRamp_t ret = new SWIGTYPE_p_RefT_ColorRamp_t(GodotEnginePINVOKE.Particles2D_set_color_ramp(swigCPtr, Object.getCPtr(color_ramp)), true);
    return ret;
  }

  public SWIGTYPE_p_RefT_ColorRamp_t get_color_ramp() {
    SWIGTYPE_p_RefT_ColorRamp_t ret = new SWIGTYPE_p_RefT_ColorRamp_t(GodotEnginePINVOKE.Particles2D_get_color_ramp(swigCPtr), true);
    return ret;
  }

  public void set_emissor_offset(Vector2 offset) {
    GodotEnginePINVOKE.Particles2D_set_emissor_offset(swigCPtr, Vector2.getCPtr(offset));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 get_emissor_offset() {
    Vector2 ret = new Vector2(GodotEnginePINVOKE.Particles2D_get_emissor_offset(swigCPtr), true);
    return ret;
  }

  public void set_flip_h(bool enable) {
    GodotEnginePINVOKE.Particles2D_set_flip_h(swigCPtr, enable);
  }

  public bool is_flipped_h() {
    bool ret = GodotEnginePINVOKE.Particles2D_is_flipped_h(swigCPtr);
    return ret;
  }

  public void set_flip_v(bool enable) {
    GodotEnginePINVOKE.Particles2D_set_flip_v(swigCPtr, enable);
  }

  public bool is_flipped_v() {
    bool ret = GodotEnginePINVOKE.Particles2D_is_flipped_v(swigCPtr);
    return ret;
  }

  public void set_h_frames(int enable) {
    GodotEnginePINVOKE.Particles2D_set_h_frames(swigCPtr, enable);
  }

  public int get_h_frames() {
    int ret = GodotEnginePINVOKE.Particles2D_get_h_frames(swigCPtr);
    return ret;
  }

  public void set_v_frames(int enable) {
    GodotEnginePINVOKE.Particles2D_set_v_frames(swigCPtr, enable);
  }

  public int get_v_frames() {
    int ret = GodotEnginePINVOKE.Particles2D_get_v_frames(swigCPtr);
    return ret;
  }

  public void set_emission_half_extents(Vector2 extents) {
    GodotEnginePINVOKE.Particles2D_set_emission_half_extents(swigCPtr, Vector2.getCPtr(extents));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 get_emission_half_extents() {
    Vector2 ret = new Vector2(GodotEnginePINVOKE.Particles2D_get_emission_half_extents(swigCPtr), true);
    return ret;
  }

  public void set_color_phases(int phases) {
    GodotEnginePINVOKE.Particles2D_set_color_phases(swigCPtr, phases);
  }

  public int get_color_phases() {
    int ret = GodotEnginePINVOKE.Particles2D_get_color_phases(swigCPtr);
    return ret;
  }

  public void set_color_phase_color(int phase, SWIGTYPE_p_Color color) {
    GodotEnginePINVOKE.Particles2D_set_color_phase_color(swigCPtr, phase, SWIGTYPE_p_Color.getCPtr(color));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Color get_color_phase_color(int phase) {
    SWIGTYPE_p_Color ret = new SWIGTYPE_p_Color(GodotEnginePINVOKE.Particles2D_get_color_phase_color(swigCPtr, phase), true);
    return ret;
  }

  public void set_color_phase_pos(int phase, float pos) {
    GodotEnginePINVOKE.Particles2D_set_color_phase_pos(swigCPtr, phase, pos);
  }

  public float get_color_phase_pos(int phase) {
    float ret = GodotEnginePINVOKE.Particles2D_get_color_phase_pos(swigCPtr, phase);
    return ret;
  }

  public void pre_process(float time) {
    GodotEnginePINVOKE.Particles2D_pre_process(swigCPtr, time);
  }

  public void reset() {
    GodotEnginePINVOKE.Particles2D_reset(swigCPtr);
  }

  public void set_use_local_space(bool enable) {
    GodotEnginePINVOKE.Particles2D_set_use_local_space(swigCPtr, enable);
  }

  public bool is_using_local_space() {
    bool ret = GodotEnginePINVOKE.Particles2D_is_using_local_space(swigCPtr);
    return ret;
  }

  public void set_initial_velocity(Vector2 velocity) {
    GodotEnginePINVOKE.Particles2D_set_initial_velocity(swigCPtr, Vector2.getCPtr(velocity));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 get_initial_velocity() {
    Vector2 ret = new Vector2(GodotEnginePINVOKE.Particles2D_get_initial_velocity(swigCPtr), true);
    return ret;
  }

  public void set_explosiveness(float amount) {
    GodotEnginePINVOKE.Particles2D_set_explosiveness(swigCPtr, amount);
  }

  public float get_explosiveness() {
    float ret = GodotEnginePINVOKE.Particles2D_get_explosiveness(swigCPtr);
    return ret;
  }

  public void set_emission_points(SWIGTYPE_p_Vector2Array points) {
    GodotEnginePINVOKE.Particles2D_set_emission_points(swigCPtr, SWIGTYPE_p_Vector2Array.getCPtr(points));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Vector2Array get_emission_points() {
    SWIGTYPE_p_Vector2Array ret = new SWIGTYPE_p_Vector2Array(GodotEnginePINVOKE.Particles2D_get_emission_points(swigCPtr), true);
    return ret;
  }

  public Particles2D() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_Particles2D());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}
