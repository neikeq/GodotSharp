/* mPhysics2DDirectBodyState.i */
%module mPhysics2DDirectBodyState

%nodefaultctor Physics2DDirectBodyState;

%typemap(csbody_derived) Physics2DDirectBodyState %{

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

%typemap(cscode) Physics2DDirectBodyState %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Physics2DDirectBodyState %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Physics2DDirectBodyState;

class Physics2DDirectBodyState : public Object {
public:

%extend {

Vector2 get_total_gravity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_total_gravity");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_total_linear_damp() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_total_linear_damp");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_total_angular_damp() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_total_angular_damp");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_inverse_mass() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_inverse_mass");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_inverse_inertia() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_inverse_inertia");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_linear_velocity(const Vector2& velocity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "set_linear_velocity");
  const void* __args[1] = { &velocity };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_linear_velocity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_linear_velocity");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_angular_velocity(float velocity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "set_angular_velocity");
  const void* __args[1] = { &velocity };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_angular_velocity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_angular_velocity");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_transform(const Matrix32& transform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "set_transform");
  const void* __args[1] = { &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

Matrix32 get_transform() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_transform");
  Matrix32 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_sleep_state(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "set_sleep_state");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_sleeping() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "is_sleeping");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_contact_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_contact_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_contact_local_pos(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_contact_local_pos");
  const void* __args[1] = { &contact_idx };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 get_contact_local_normal(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_contact_local_normal");
  const void* __args[1] = { &contact_idx };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_contact_local_shape(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_contact_local_shape");
  const void* __args[1] = { &contact_idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID get_contact_collider(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_contact_collider");
  const void* __args[1] = { &contact_idx };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 get_contact_collider_pos(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_contact_collider_pos");
  const void* __args[1] = { &contact_idx };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_contact_collider_id(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_contact_collider_id");
  const void* __args[1] = { &contact_idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Object* get_contact_collider_object(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_contact_collider_object");
  const void* __args[1] = { &contact_idx };
  Object* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_contact_collider_shape(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_contact_collider_shape");
  const void* __args[1] = { &contact_idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Variant get_contact_collider_shape_metadata(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_contact_collider_shape_metadata");
  const void* __args[1] = { &contact_idx };
  Variant ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 get_contact_collider_velocity_at_pos(int contact_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_contact_collider_velocity_at_pos");
  const void* __args[1] = { &contact_idx };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float get_step() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_step");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void integrate_forces() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "integrate_forces");
  __method_bind->ptrcall($self, NULL, NULL);
}

Physics2DDirectSpaceState* get_space_state() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectBodyState", "get_space_state");
  Physics2DDirectSpaceState* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
