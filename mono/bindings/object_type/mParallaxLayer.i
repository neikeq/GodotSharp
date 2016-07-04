/* mParallaxLayer.i */
%module mParallaxLayer


%typemap(csbody_derived) ParallaxLayer %{

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

%typemap(cscode) ParallaxLayer %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ParallaxLayer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ParallaxLayer;

class ParallaxLayer : public Node2D {
public:
  ParallaxLayer();

%extend {

void set_motion_scale(const Vector2& scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParallaxLayer", "set_motion_scale");
  const void* __args[1] = { &scale };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_motion_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParallaxLayer", "get_motion_scale");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_mirroring(const Vector2& mirror) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParallaxLayer", "set_mirroring");
  const void* __args[1] = { &mirror };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_mirroring() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParallaxLayer", "get_mirroring");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
