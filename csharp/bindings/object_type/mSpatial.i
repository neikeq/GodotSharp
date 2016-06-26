/* mSpatial.i */
%module mSpatial


%typemap(csbody_derived) Spatial %{
  public static readonly int NOTIFICATION_TRANSFORM_CHANGED = 29;
  public static readonly int NOTIFICATION_ENTER_WORLD = 41;
  public static readonly int NOTIFICATION_EXIT_WORLD = 42;
  public static readonly int NOTIFICATION_VISIBILITY_CHANGED = 43;

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

%typemap(cscode) Spatial %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Spatial %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Spatial;

class Spatial : public Node {
public:
  Spatial();

%extend {

void set_transform(const Transform& local) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "set_transform");
  const void* __args[1] = { &local };
  __method_bind->ptrcall($self, __args, NULL);
}

Transform get_transform() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "get_transform");
  Transform ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_translation(const Vector3& translation) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "set_translation");
  const void* __args[1] = { &translation };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_translation() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "get_translation");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_rotation(const Vector3& rotation_rad) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "set_rotation");
  const void* __args[1] = { &rotation_rad };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_rotation() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "get_rotation");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_rotation_deg(const Vector3& rotation_deg) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "set_rotation_deg");
  const void* __args[1] = { &rotation_deg };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_rotation_deg() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "get_rotation_deg");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_scale(const Vector3& scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "set_scale");
  const void* __args[1] = { &scale };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "get_scale");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_global_transform(const Transform& global) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "set_global_transform");
  const void* __args[1] = { &global };
  __method_bind->ptrcall($self, __args, NULL);
}

Transform get_global_transform() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "get_global_transform");
  Transform ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Object* get_parent_spatial() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "get_parent_spatial");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_ignore_transform_notification(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "set_ignore_transform_notification");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_as_toplevel(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "set_as_toplevel");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_set_as_toplevel() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "is_set_as_toplevel");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Ref<World> get_world() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "get_world");
  Ref<World> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void update_gizmo() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "update_gizmo");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_gizmo(SpatialGizmo* gizmo) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "set_gizmo");
  const void* __args[1] = { gizmo };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<SpatialGizmo> get_gizmo() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "get_gizmo");
  Ref<SpatialGizmo> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void show() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "show");
  __method_bind->ptrcall($self, NULL, NULL);
}

void hide() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "hide");
  __method_bind->ptrcall($self, NULL, NULL);
}

bool is_visible() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "is_visible");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_hidden() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "is_hidden");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_hidden(bool hidden) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "set_hidden");
  const void* __args[1] = { &hidden };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_notify_local_transform(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "set_notify_local_transform");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_local_transform_notification_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "is_local_transform_notification_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void rotate(const Vector3& normal, float radians) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "rotate");
  const void* __args[2] = { &normal, &radians };
  __method_bind->ptrcall($self, __args, NULL);
}

void global_rotate(const Vector3& normal, float radians) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "global_rotate");
  const void* __args[2] = { &normal, &radians };
  __method_bind->ptrcall($self, __args, NULL);
}

void rotate_x(float radians) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "rotate_x");
  const void* __args[1] = { &radians };
  __method_bind->ptrcall($self, __args, NULL);
}

void rotate_y(float radians) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "rotate_y");
  const void* __args[1] = { &radians };
  __method_bind->ptrcall($self, __args, NULL);
}

void rotate_z(float radians) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "rotate_z");
  const void* __args[1] = { &radians };
  __method_bind->ptrcall($self, __args, NULL);
}

void translate(const Vector3& offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "translate");
  const void* __args[1] = { &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

void global_translate(const Vector3& offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "global_translate");
  const void* __args[1] = { &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

void orthonormalize() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "orthonormalize");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_identity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "set_identity");
  __method_bind->ptrcall($self, NULL, NULL);
}

void look_at(const Vector3& target, const Vector3& up) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "look_at");
  const void* __args[2] = { &target, &up };
  __method_bind->ptrcall($self, __args, NULL);
}

void look_at_from_pos(const Vector3& pos, const Vector3& target, const Vector3& up) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Spatial", "look_at_from_pos");
  const void* __args[3] = { &pos, &target, &up };
  __method_bind->ptrcall($self, __args, NULL);
}

}


};
