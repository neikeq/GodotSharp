/* mCamera2D.i */
%module mCamera2D


%typemap(csbody_derived) Camera2D %{
  public static readonly int ANCHOR_MODE_DRAG_CENTER = 1;
  public static readonly int ANCHOR_MODE_FIXED_TOP_LEFT = 0;

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

%typemap(cscode) Camera2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Camera2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Camera2D;

class Camera2D : public Node2D {
public:
  Camera2D();

%extend {

void set_offset(const Vector2& offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "set_offset");
  const void* __args[1] = { &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "get_offset");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_anchor_mode(int anchor_mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "set_anchor_mode");
  const void* __args[1] = { &anchor_mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_anchor_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "get_anchor_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_rotating(bool rotating) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "set_rotating");
  const void* __args[1] = { &rotating };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_rotating() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "is_rotating");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void make_current() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "make_current");
  __method_bind->ptrcall($self, NULL, NULL);
}

void clear_current() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "clear_current");
  __method_bind->ptrcall($self, NULL, NULL);
}

bool is_current() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "is_current");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_limit(int margin, int limit) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "set_limit");
  const void* __args[2] = { &margin, &limit };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_limit(int margin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "get_limit");
  const void* __args[1] = { &margin };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_v_drag_enabled(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "set_v_drag_enabled");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_v_drag_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "is_v_drag_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_h_drag_enabled(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "set_h_drag_enabled");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_h_drag_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "is_h_drag_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_v_offset(float ofs) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "set_v_offset");
  const void* __args[1] = { &ofs };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_v_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "get_v_offset");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_h_offset(float ofs) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "set_h_offset");
  const void* __args[1] = { &ofs };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_h_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "get_h_offset");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_drag_margin(int margin, float drag_margin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "set_drag_margin");
  const void* __args[2] = { &margin, &drag_margin };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_drag_margin(int margin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "get_drag_margin");
  const void* __args[1] = { &margin };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 get_camera_pos() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "get_camera_pos");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_camera_screen_center() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "get_camera_screen_center");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_zoom(const Vector2& zoom) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "set_zoom");
  const void* __args[1] = { &zoom };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_zoom() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "get_zoom");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_follow_smoothing(float follow_smoothing) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "set_follow_smoothing");
  const void* __args[1] = { &follow_smoothing };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_follow_smoothing() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "get_follow_smoothing");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_enable_follow_smoothing(bool follow_smoothing) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "set_enable_follow_smoothing");
  const void* __args[1] = { &follow_smoothing };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_follow_smoothing_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "is_follow_smoothing_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void force_update_scroll() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Camera2D", "force_update_scroll");
  __method_bind->ptrcall($self, NULL, NULL);
}

}


};
