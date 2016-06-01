/* mParticles2D.i */
%module mParticles2D


%typemap(csbody_derived) Particles2D %{
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
  
  internal $csclassname(global::System.IntPtr cPtr, bool cMemoryOwn) : base($imclassname.$csclazznameSWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected $csclassname(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init($imclassname.$csclazznameSWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr($csclassname obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }
%}

%typemap(cscode) Particles2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Particles2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor Particles2D;

class Particles2D : public Node2D {
public:
  %extend {
    void set_emitting(bool active) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_emitting", active);
    }
  }
  %extend {
    bool is_emitting() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_emitting");
    }
  }
  %extend {
    void set_amount(int amount) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_amount", amount);
    }
  }
  %extend {
    int get_amount() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_amount");
    }
  }
  %extend {
    void set_lifetime(float lifetime) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_lifetime", lifetime);
    }
  }
  %extend {
    float get_lifetime() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_lifetime");
    }
  }
  %extend {
    void set_time_scale(float time_scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_time_scale", time_scale);
    }
  }
  %extend {
    float get_time_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_time_scale");
    }
  }
  %extend {
    void set_pre_process_time(float time) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_pre_process_time", time);
    }
  }
  %extend {
    float get_pre_process_time() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pre_process_time");
    }
  }
  %extend {
    void set_emit_timeout(float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_emit_timeout", value);
    }
  }
  %extend {
    float get_emit_timeout() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_emit_timeout");
    }
  }
  %extend {
    void set_param(int param, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_param", param, value);
    }
  }
  %extend {
    float get_param(int param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_param", param);
    }
  }
  %extend {
    void set_randomness(int param, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_randomness", param, value);
    }
  }
  %extend {
    float get_randomness(int param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_randomness", param);
    }
  }
  %extend {
    Ref<Texture> set_texture(Object* texture) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("set_texture", texture).operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    Ref<Texture> get_texture() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_texture").operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    void set_color(const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_color", color);
    }
  }
  %extend {
    Color get_color() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_color");
    }
  }
  %extend {
    Ref<ColorRamp> set_color_ramp(Object* color_ramp) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("set_color_ramp", color_ramp).operator Object *()->cast_to<ColorRamp>();
    }
  }
  %extend {
    Ref<ColorRamp> get_color_ramp() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_color_ramp").operator Object *()->cast_to<ColorRamp>();
    }
  }
  %extend {
    void set_emissor_offset(const Vector2& offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_emissor_offset", offset);
    }
  }
  %extend {
    Vector2 get_emissor_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_emissor_offset");
    }
  }
  %extend {
    void set_flip_h(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_flip_h", enable);
    }
  }
  %extend {
    bool is_flipped_h() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_flipped_h");
    }
  }
  %extend {
    void set_flip_v(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_flip_v", enable);
    }
  }
  %extend {
    bool is_flipped_v() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_flipped_v");
    }
  }
  %extend {
    void set_h_frames(int enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_h_frames", enable);
    }
  }
  %extend {
    int get_h_frames() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_h_frames");
    }
  }
  %extend {
    void set_v_frames(int enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_v_frames", enable);
    }
  }
  %extend {
    int get_v_frames() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_v_frames");
    }
  }
  %extend {
    void set_emission_half_extents(const Vector2& extents) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_emission_half_extents", extents);
    }
  }
  %extend {
    Vector2 get_emission_half_extents() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_emission_half_extents");
    }
  }
  %extend {
    void set_color_phases(int phases) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_color_phases", phases);
    }
  }
  %extend {
    int get_color_phases() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_color_phases");
    }
  }
  %extend {
    void set_color_phase_color(int phase, const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_color_phase_color", phase, color);
    }
  }
  %extend {
    Color get_color_phase_color(int phase) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_color_phase_color", phase);
    }
  }
  %extend {
    void set_color_phase_pos(int phase, float pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_color_phase_pos", phase, pos);
    }
  }
  %extend {
    float get_color_phase_pos(int phase) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_color_phase_pos", phase);
    }
  }
  %extend {
    void pre_process(float time) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("pre_process", time);
    }
  }
  %extend {
    void reset() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("reset");
    }
  }
  %extend {
    void set_use_local_space(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_use_local_space", enable);
    }
  }
  %extend {
    bool is_using_local_space() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_using_local_space");
    }
  }
  %extend {
    void set_initial_velocity(const Vector2& velocity) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_initial_velocity", velocity);
    }
  }
  %extend {
    Vector2 get_initial_velocity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_initial_velocity");
    }
  }
  %extend {
    void set_explosiveness(float amount) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_explosiveness", amount);
    }
  }
  %extend {
    float get_explosiveness() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_explosiveness");
    }
  }
  %extend {
    void set_emission_points(const Vector2Array& points) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_emission_points", points);
    }
  }
  %extend {
    Vector2Array get_emission_points() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_emission_points");
    }
  }
  Particles2D();

};
