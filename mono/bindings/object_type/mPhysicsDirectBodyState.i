/* mPhysicsDirectBodyState.i */
%module mPhysicsDirectBodyState

%nodefaultctor PhysicsDirectBodyState;

%typemap(csbody_derived) PhysicsDirectBodyState %{

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

%typemap(cscode) PhysicsDirectBodyState %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) PhysicsDirectBodyState %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PhysicsDirectBodyState;

class PhysicsDirectBodyState : public Object {
public:

%extend {

Vector3 get_total_gravity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_total_gravity");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_total_linear_damp() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_total_linear_damp");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_total_angular_damp() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_total_angular_damp");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_inverse_mass() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_inverse_mass");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector3 get_inverse_inertia() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_inverse_inertia");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_linear_velocity(const Vector3& velocity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "set_linear_velocity");
  const void* __args[1] = { &velocity };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_linear_velocity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_linear_velocity");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_angular_velocity(const Vector3& velocity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "set_angular_velocity");
  const void* __args[1] = { &velocity };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_angular_velocity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_angular_velocity");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_transform(const Transform& transform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "set_transform");
  const void* __args[1] = { &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

Transform get_transform() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_transform");
  Transform ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_force(const Vector3& force, const Vector3& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "add_force");
  const void* __args[2] = { &force, &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

void apply_impulse(const Vector3& pos, const Vector3& j) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "apply_impulse");
  const void* __args[2] = { &pos, &j };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_sleep_state(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "set_sleep_state");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_sleeping() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "is_sleeping");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_contact_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_contact_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector3 get_contact_local_pos(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_contact_local_pos");
  const void* __args[1] = { &contact_idx };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector3 get_contact_local_normal(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_contact_local_normal");
  const void* __args[1] = { &contact_idx };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_contact_local_shape(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_contact_local_shape");
  const void* __args[1] = { &contact_idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID get_contact_collider(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_contact_collider");
  const void* __args[1] = { &contact_idx };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector3 get_contact_collider_pos(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_contact_collider_pos");
  const void* __args[1] = { &contact_idx };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_contact_collider_id(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_contact_collider_id");
  const void* __args[1] = { &contact_idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Object* get_contact_collider_object(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_contact_collider_object");
  const void* __args[1] = { &contact_idx };
  Object* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_contact_collider_shape(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_contact_collider_shape");
  const void* __args[1] = { &contact_idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector3 get_contact_collider_velocity_at_pos(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_contact_collider_velocity_at_pos");
  const void* __args[1] = { &contact_idx };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float get_step() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_step");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void integrate_forces() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "integrate_forces");
  __method_bind->ptrcall($self, NULL, NULL);
}

PhysicsDirectSpaceState* get_space_state() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsDirectBodyState", "get_space_state");
  PhysicsDirectSpaceState* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
