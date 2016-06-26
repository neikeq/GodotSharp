/* mCamera.i */
%module mCamera


%typemap(csbody_derived) Camera %{
  public static readonly int PROJECTION_PERSPECTIVE = 0;
  public static readonly int PROJECTION_ORTHOGONAL = 1;
  public static readonly int KEEP_WIDTH = 0;
  public static readonly int KEEP_HEIGHT = 1;

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

%typemap(cscode) Camera %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Camera %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Camera;

class Camera : public Spatial {
public:
  Camera();

%extend {

Vector3 project_ray_normal(const Vector2& screen_point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "project_ray_normal");
  const void* __args[1] = { &screen_point };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector3 project_local_ray_normal(const Vector2& screen_point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "project_local_ray_normal");
  const void* __args[1] = { &screen_point };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector3 project_ray_origin(const Vector2& screen_point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "project_ray_origin");
  const void* __args[1] = { &screen_point };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 unproject_position(const Vector3& world_point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "unproject_position");
  const void* __args[1] = { &world_point };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_position_behind(const Vector3& world_point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "is_position_behind");
  const void* __args[1] = { &world_point };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector3 project_position(const Vector2& screen_point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "project_position");
  const void* __args[1] = { &screen_point };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_perspective(float fov, float z_near, float z_far) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "set_perspective");
  const void* __args[3] = { &fov, &z_near, &z_far };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_orthogonal(float size, float z_near, float z_far) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "set_orthogonal");
  const void* __args[3] = { &size, &z_near, &z_far };
  __method_bind->ptrcall($self, __args, NULL);
}

void make_current() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "make_current");
  __method_bind->ptrcall($self, NULL, NULL);
}

void clear_current() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "clear_current");
  __method_bind->ptrcall($self, NULL, NULL);
}

bool is_current() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "is_current");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Transform get_camera_transform() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "get_camera_transform");
  Transform ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_fov() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "get_fov");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "get_size");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_zfar() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "get_zfar");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_znear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "get_znear");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_projection() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "get_projection");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_visible_layers(int mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "set_visible_layers");
  const void* __args[1] = { &mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_visible_layers() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "get_visible_layers");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_environment(Environment* env) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "set_environment");
  const void* __args[1] = { env };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Environment> get_environment() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "get_environment");
  Ref<Environment> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_keep_aspect_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "set_keep_aspect_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_keep_aspect_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera", "get_keep_aspect_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
