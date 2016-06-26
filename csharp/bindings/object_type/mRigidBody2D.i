/* mRigidBody2D.i */
%module mRigidBody2D


%typemap(csbody_derived) RigidBody2D %{
  public static readonly int MODE_STATIC = 1;
  public static readonly int MODE_KINEMATIC = 3;
  public static readonly int MODE_RIGID = 0;
  public static readonly int MODE_CHARACTER = 2;
  public static readonly int CCD_MODE_DISABLED = 0;
  public static readonly int CCD_MODE_CAST_RAY = 1;
  public static readonly int CCD_MODE_CAST_SHAPE = 2;

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

%typemap(cscode) RigidBody2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) RigidBody2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor RigidBody2D;

class RigidBody2D : public PhysicsBody2D {
public:
  RigidBody2D();

%extend {

void _integrate_forces(Physics2DDirectBodyState* state) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "_integrate_forces");
  const void* __args[1] = { state };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "get_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_mass(float mass) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_mass");
  const void* __args[1] = { &mass };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_mass() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "get_mass");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_inertia() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "get_inertia");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_inertia(float inertia) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_inertia");
  const void* __args[1] = { &inertia };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_weight(float weight) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_weight");
  const void* __args[1] = { &weight };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_weight() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "get_weight");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_friction(float friction) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_friction");
  const void* __args[1] = { &friction };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_friction() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "get_friction");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_bounce(float bounce) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_bounce");
  const void* __args[1] = { &bounce };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_bounce() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "get_bounce");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_gravity_scale(float gravity_scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_gravity_scale");
  const void* __args[1] = { &gravity_scale };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_gravity_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "get_gravity_scale");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_linear_damp(float linear_damp) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_linear_damp");
  const void* __args[1] = { &linear_damp };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_linear_damp() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "get_linear_damp");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_angular_damp(float angular_damp) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_angular_damp");
  const void* __args[1] = { &angular_damp };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_angular_damp() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "get_angular_damp");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_linear_velocity(const Vector2& linear_velocity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_linear_velocity");
  const void* __args[1] = { &linear_velocity };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_linear_velocity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "get_linear_velocity");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_angular_velocity(float angular_velocity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_angular_velocity");
  const void* __args[1] = { &angular_velocity };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_angular_velocity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "get_angular_velocity");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_max_contacts_reported(int amount) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_max_contacts_reported");
  const void* __args[1] = { &amount };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_max_contacts_reported() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "get_max_contacts_reported");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_use_custom_integrator(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_use_custom_integrator");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_using_custom_integrator() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "is_using_custom_integrator");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_contact_monitor(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_contact_monitor");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_contact_monitor_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "is_contact_monitor_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_continuous_collision_detection_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_continuous_collision_detection_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_continuous_collision_detection_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "get_continuous_collision_detection_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_axis_velocity(const Vector2& axis_velocity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_axis_velocity");
  const void* __args[1] = { &axis_velocity };
  __method_bind->ptrcall($self, __args, NULL);
}

void apply_impulse(const Vector2& offset, const Vector2& impulse) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "apply_impulse");
  const void* __args[2] = { &offset, &impulse };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_applied_force(const Vector2& force) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_applied_force");
  const void* __args[1] = { &force };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_applied_force() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "get_applied_force");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_applied_torque(float torque) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_applied_torque");
  const void* __args[1] = { &torque };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_applied_torque() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "get_applied_torque");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_force(const Vector2& offset, const Vector2& force) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "add_force");
  const void* __args[2] = { &offset, &force };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_sleeping(bool sleeping) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_sleeping");
  const void* __args[1] = { &sleeping };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_sleeping() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "is_sleeping");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_can_sleep(bool able_to_sleep) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "set_can_sleep");
  const void* __args[1] = { &able_to_sleep };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_able_to_sleep() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "is_able_to_sleep");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool test_motion(const Vector2& motion, float margin = 0.08, Physics2DTestMotionResult* result = NULL) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "test_motion");
  const void* __args[3] = { &motion, &margin, result };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array get_colliding_bodies() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody2D", "get_colliding_bodies");
  Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
