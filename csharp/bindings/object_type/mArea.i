/* mArea.i */
%module mArea


%typemap(csbody_derived) Area %{

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

%typemap(cscode) Area %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Area %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Area;

class Area : public CollisionObject {
public:
  Area();

%extend {

void set_space_override_mode(int enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "set_space_override_mode");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_space_override_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "get_space_override_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_gravity_is_point(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "set_gravity_is_point");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_gravity_a_point() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "is_gravity_a_point");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_gravity_distance_scale(float distance_scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "set_gravity_distance_scale");
  const void* __args[1] = { &distance_scale };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_gravity_distance_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "get_gravity_distance_scale");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_gravity_vector(const Vector3& vector) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "set_gravity_vector");
  const void* __args[1] = { &vector };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_gravity_vector() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "get_gravity_vector");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_gravity(float gravity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "set_gravity");
  const void* __args[1] = { &gravity };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_gravity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "get_gravity");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_angular_damp(float angular_damp) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "set_angular_damp");
  const void* __args[1] = { &angular_damp };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_angular_damp() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "get_angular_damp");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_linear_damp(float linear_damp) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "set_linear_damp");
  const void* __args[1] = { &linear_damp };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_linear_damp() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "get_linear_damp");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_priority(float priority) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "set_priority");
  const void* __args[1] = { &priority };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_priority() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "get_priority");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_collision_mask(int collision_mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "set_collision_mask");
  const void* __args[1] = { &collision_mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_collision_mask() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "get_collision_mask");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_layer_mask(int layer_mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "set_layer_mask");
  const void* __args[1] = { &layer_mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_layer_mask() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "get_layer_mask");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_collision_mask_bit(int bit, bool value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "set_collision_mask_bit");
  const void* __args[2] = { &bit, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_collision_mask_bit(int bit) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "get_collision_mask_bit");
  const void* __args[1] = { &bit };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_layer_mask_bit(int bit, bool value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "set_layer_mask_bit");
  const void* __args[2] = { &bit, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_layer_mask_bit(int bit) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "get_layer_mask_bit");
  const void* __args[1] = { &bit };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_monitorable(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "set_monitorable");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_monitorable() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "is_monitorable");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_enable_monitoring(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "set_enable_monitoring");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_monitoring_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "is_monitoring_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Array get_overlapping_bodies() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "get_overlapping_bodies");
  Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Array get_overlapping_areas() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "get_overlapping_areas");
  Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool overlaps_body(Object* body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "overlaps_body");
  const void* __args[1] = { body };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool overlaps_area(Object* area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Area", "overlaps_area");
  const void* __args[1] = { area };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

}


};
