/* mParallaxBackground.i */
%module mParallaxBackground


%typemap(csbody_derived) ParallaxBackground %{

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

%typemap(cscode) ParallaxBackground %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ParallaxBackground %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ParallaxBackground;

class ParallaxBackground : public CanvasLayer {
public:
  ParallaxBackground();

%extend {

void set_scroll_offset(const Vector2& ofs) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParallaxBackground", "set_scroll_offset");
  const void* __args[1] = { &ofs };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_scroll_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParallaxBackground", "get_scroll_offset");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_scroll_base_offset(const Vector2& ofs) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParallaxBackground", "set_scroll_base_offset");
  const void* __args[1] = { &ofs };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_scroll_base_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParallaxBackground", "get_scroll_base_offset");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_scroll_base_scale(const Vector2& scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParallaxBackground", "set_scroll_base_scale");
  const void* __args[1] = { &scale };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_scroll_base_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParallaxBackground", "get_scroll_base_scale");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_limit_begin(const Vector2& ofs) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParallaxBackground", "set_limit_begin");
  const void* __args[1] = { &ofs };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_limit_begin() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParallaxBackground", "get_limit_begin");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_limit_end(const Vector2& ofs) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParallaxBackground", "set_limit_end");
  const void* __args[1] = { &ofs };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_limit_end() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParallaxBackground", "get_limit_end");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_ignore_camera_zoom(bool ignore) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParallaxBackground", "set_ignore_camera_zoom");
  const void* __args[1] = { &ignore };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_ignore_camera_zoom() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParallaxBackground", "is_ignore_camera_zoom");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
