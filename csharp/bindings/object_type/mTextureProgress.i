/* mTextureProgress.i */
%module mTextureProgress


%typemap(csbody_derived) TextureProgress %{
  public static readonly int FILL_LEFT_TO_RIGHT = 0;
  public static readonly int FILL_RIGHT_TO_LEFT = 1;
  public static readonly int FILL_TOP_TO_BOTTOM = 2;
  public static readonly int FILL_BOTTOM_TO_TOP = 3;
  public static readonly int FILL_CLOCKWISE = 4;
  public static readonly int FILL_COUNTER_CLOCKWISE = 5;

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

%typemap(cscode) TextureProgress %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) TextureProgress %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor TextureProgress;

class TextureProgress : public Range {
public:
  TextureProgress();

%extend {

void set_under_texture(Object* tex) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureProgress", "set_under_texture");
  const void* __args[1] = { tex };
  __method_bind->ptrcall($self, __args, NULL);
}

Object* get_under_texture() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureProgress", "get_under_texture");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_progress_texture(Object* tex) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureProgress", "set_progress_texture");
  const void* __args[1] = { tex };
  __method_bind->ptrcall($self, __args, NULL);
}

Object* get_progress_texture() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureProgress", "get_progress_texture");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_over_texture(Object* tex) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureProgress", "set_over_texture");
  const void* __args[1] = { tex };
  __method_bind->ptrcall($self, __args, NULL);
}

Object* get_over_texture() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureProgress", "get_over_texture");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_fill_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureProgress", "set_fill_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_fill_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureProgress", "get_fill_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_radial_initial_angle(float mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureProgress", "set_radial_initial_angle");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_radial_initial_angle() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureProgress", "get_radial_initial_angle");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_radial_center_offset(const Vector2& mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureProgress", "set_radial_center_offset");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_radial_center_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureProgress", "get_radial_center_offset");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_fill_degrees(float mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureProgress", "set_fill_degrees");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_fill_degrees() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureProgress", "get_fill_degrees");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
