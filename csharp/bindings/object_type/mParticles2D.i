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
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Particles2D;

class Particles2D : public Node2D {
public:
  Particles2D();

%extend {

void set_emitting(bool active) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_emitting");
  const void* __args[1] = { &active };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_emitting() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "is_emitting");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_amount(int amount) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_amount");
  const void* __args[1] = { &amount };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_amount() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_amount");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_lifetime(float lifetime) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_lifetime");
  const void* __args[1] = { &lifetime };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_lifetime() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_lifetime");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_time_scale(float time_scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_time_scale");
  const void* __args[1] = { &time_scale };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_time_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_time_scale");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_pre_process_time(float time) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_pre_process_time");
  const void* __args[1] = { &time };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_pre_process_time() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_pre_process_time");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_emit_timeout(float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_emit_timeout");
  const void* __args[1] = { &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_emit_timeout() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_emit_timeout");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_param(int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_param");
  const void* __args[2] = { &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_param(int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_param");
  const void* __args[1] = { &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_randomness(int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_randomness");
  const void* __args[2] = { &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_randomness(int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_randomness");
  const void* __args[1] = { &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Ref<Texture> set_texture(Object* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_texture");
  const void* __args[1] = { texture };
  Ref<Texture> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Ref<Texture> get_texture() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_texture");
  Ref<Texture> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_color(const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_color");
  const void* __args[1] = { &color };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_color() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_color");
  Color ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Ref<ColorRamp> set_color_ramp(Object* color_ramp) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_color_ramp");
  const void* __args[1] = { color_ramp };
  Ref<ColorRamp> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Ref<ColorRamp> get_color_ramp() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_color_ramp");
  Ref<ColorRamp> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_emissor_offset(const Vector2& offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_emissor_offset");
  const void* __args[1] = { &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_emissor_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_emissor_offset");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_flip_h(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_flip_h");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_flipped_h() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "is_flipped_h");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_flip_v(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_flip_v");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_flipped_v() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "is_flipped_v");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_h_frames(int enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_h_frames");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_h_frames() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_h_frames");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_v_frames(int enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_v_frames");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_v_frames() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_v_frames");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_emission_half_extents(const Vector2& extents) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_emission_half_extents");
  const void* __args[1] = { &extents };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_emission_half_extents() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_emission_half_extents");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_color_phases(int phases) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_color_phases");
  const void* __args[1] = { &phases };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_color_phases() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_color_phases");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_color_phase_color(int phase, const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_color_phase_color");
  const void* __args[2] = { &phase, &color };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_color_phase_color(int phase) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_color_phase_color");
  const void* __args[1] = { &phase };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_color_phase_pos(int phase, float pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_color_phase_pos");
  const void* __args[2] = { &phase, &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_color_phase_pos(int phase) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_color_phase_pos");
  const void* __args[1] = { &phase };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void pre_process(float time) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "pre_process");
  const void* __args[1] = { &time };
  __method_bind->ptrcall($self, __args, NULL);
}

void reset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "reset");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_use_local_space(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_use_local_space");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_using_local_space() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "is_using_local_space");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_initial_velocity(const Vector2& velocity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_initial_velocity");
  const void* __args[1] = { &velocity };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_initial_velocity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_initial_velocity");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_explosiveness(float amount) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_explosiveness");
  const void* __args[1] = { &amount };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_explosiveness() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_explosiveness");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_emission_points(const Vector2Array& points) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "set_emission_points");
  const void* __args[1] = { &points };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2Array get_emission_points() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles2D", "get_emission_points");
  Vector2Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
