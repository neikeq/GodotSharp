/* mParticles.i */
%module mParticles


%typemap(csbody_derived) Particles %{
  public static readonly int VAR_LIFETIME = 0;
  public static readonly int VAR_SPREAD = 1;
  public static readonly int VAR_GRAVITY = 2;
  public static readonly int VAR_LINEAR_VELOCITY = 3;
  public static readonly int VAR_ANGULAR_VELOCITY = 4;
  public static readonly int VAR_LINEAR_ACCELERATION = 5;
  public static readonly int VAR_DRAG = 6;
  public static readonly int VAR_TANGENTIAL_ACCELERATION = 7;
  public static readonly int VAR_INITIAL_SIZE = 9;
  public static readonly int VAR_FINAL_SIZE = 10;
  public static readonly int VAR_INITIAL_ANGLE = 11;
  public static readonly int VAR_HEIGHT = 12;
  public static readonly int VAR_HEIGHT_SPEED_SCALE = 13;
  public static readonly int VAR_MAX = 14;

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

%typemap(cscode) Particles %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Particles %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Particles;

class Particles : public GeometryInstance {
public:
  Particles();

%extend {

void set_amount(int amount) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "set_amount");
  const void* __args[1] = { &amount };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_amount() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "get_amount");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_emitting(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "set_emitting");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_emitting() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "is_emitting");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_visibility_aabb(const AABB& aabb) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "set_visibility_aabb");
  const void* __args[1] = { &aabb };
  __method_bind->ptrcall($self, __args, NULL);
}

AABB get_visibility_aabb() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "get_visibility_aabb");
  AABB ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_emission_half_extents(const Vector3& half_extents) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "set_emission_half_extents");
  const void* __args[1] = { &half_extents };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_emission_half_extents() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "get_emission_half_extents");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_emission_base_velocity(const Vector3& base_velocity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "set_emission_base_velocity");
  const void* __args[1] = { &base_velocity };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_emission_base_velocity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "get_emission_base_velocity");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_emission_points(const Vector3Array& points) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "set_emission_points");
  const void* __args[1] = { &points };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3Array get_emission_points() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "get_emission_points");
  Vector3Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_gravity_normal(const Vector3& normal) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "set_gravity_normal");
  const void* __args[1] = { &normal };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_gravity_normal() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "get_gravity_normal");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_variable(int variable, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "set_variable");
  const void* __args[2] = { &variable, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_variable(int variable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "get_variable");
  const void* __args[1] = { &variable };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_randomness(int variable, float randomness) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "set_randomness");
  const void* __args[2] = { &variable, &randomness };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_randomness(int variable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "get_randomness");
  const void* __args[1] = { &variable };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_color_phase_pos(int phase, float pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "set_color_phase_pos");
  const void* __args[2] = { &phase, &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_color_phase_pos(int phase) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "get_color_phase_pos");
  const void* __args[1] = { &phase };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_color_phase_color(int phase, const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "set_color_phase_color");
  const void* __args[2] = { &phase, &color };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_color_phase_color(int phase) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "get_color_phase_color");
  const void* __args[1] = { &phase };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_material(Material* material) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "set_material");
  const void* __args[1] = { material };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Material> get_material() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "get_material");
  Ref<Material> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_emit_timeout(float timeout) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "set_emit_timeout");
  const void* __args[1] = { &timeout };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_emit_timeout() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "get_emit_timeout");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_height_from_velocity(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "set_height_from_velocity");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_height_from_velocity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "has_height_from_velocity");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_use_local_coordinates(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "set_use_local_coordinates");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_using_local_coordinates() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "is_using_local_coordinates");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_color_phases(int count) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "set_color_phases");
  const void* __args[1] = { &count };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_color_phases() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Particles", "get_color_phases");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
