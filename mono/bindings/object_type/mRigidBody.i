/* mRigidBody.i */
%module mRigidBody


%typemap(csbody_derived) RigidBody %{
  public static readonly int MODE_STATIC = 1;
  public static readonly int MODE_KINEMATIC = 3;
  public static readonly int MODE_RIGID = 0;
  public static readonly int MODE_CHARACTER = 2;

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

%typemap(cscode) RigidBody %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) RigidBody %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor RigidBody;

class RigidBody : public PhysicsBody {
public:
  RigidBody();

%extend {

void _integrate_forces(PhysicsDirectBodyState* state) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "_integrate_forces");
  const void* __args[1] = { state };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "set_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "get_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_mass(float mass) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "set_mass");
  const void* __args[1] = { &mass };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_mass() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "get_mass");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_weight(float weight) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "set_weight");
  const void* __args[1] = { &weight };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_weight() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "get_weight");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_friction(float friction) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "set_friction");
  const void* __args[1] = { &friction };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_friction() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "get_friction");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_bounce(float bounce) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "set_bounce");
  const void* __args[1] = { &bounce };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_bounce() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "get_bounce");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_linear_velocity(const Vector3& linear_velocity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "set_linear_velocity");
  const void* __args[1] = { &linear_velocity };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_linear_velocity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "get_linear_velocity");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_angular_velocity(const Vector3& angular_velocity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "set_angular_velocity");
  const void* __args[1] = { &angular_velocity };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_angular_velocity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "get_angular_velocity");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_gravity_scale(float gravity_scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "set_gravity_scale");
  const void* __args[1] = { &gravity_scale };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_gravity_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "get_gravity_scale");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_linear_damp(float linear_damp) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "set_linear_damp");
  const void* __args[1] = { &linear_damp };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_linear_damp() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "get_linear_damp");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_angular_damp(float angular_damp) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "set_angular_damp");
  const void* __args[1] = { &angular_damp };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_angular_damp() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "get_angular_damp");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_max_contacts_reported(int amount) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "set_max_contacts_reported");
  const void* __args[1] = { &amount };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_max_contacts_reported() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "get_max_contacts_reported");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_use_custom_integrator(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "set_use_custom_integrator");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_using_custom_integrator() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "is_using_custom_integrator");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_contact_monitor(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "set_contact_monitor");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_contact_monitor_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "is_contact_monitor_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_use_continuous_collision_detection(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "set_use_continuous_collision_detection");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_using_continuous_collision_detection() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "is_using_continuous_collision_detection");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_axis_velocity(const Vector3& axis_velocity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "set_axis_velocity");
  const void* __args[1] = { &axis_velocity };
  __method_bind->ptrcall($self, __args, NULL);
}

void apply_impulse(const Vector3& pos, const Vector3& impulse) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "apply_impulse");
  const void* __args[2] = { &pos, &impulse };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_sleeping(bool sleeping) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "set_sleeping");
  const void* __args[1] = { &sleeping };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_sleeping() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "is_sleeping");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_can_sleep(bool able_to_sleep) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "set_can_sleep");
  const void* __args[1] = { &able_to_sleep };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_able_to_sleep() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "is_able_to_sleep");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_axis_lock(int axis_lock) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "set_axis_lock");
  const void* __args[1] = { &axis_lock };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_axis_lock() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "get_axis_lock");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Array get_colliding_bodies() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RigidBody", "get_colliding_bodies");
  Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
