/* mInterpolatedCamera.i */
%module mInterpolatedCamera


%typemap(csbody_derived) InterpolatedCamera %{

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

%typemap(cscode) InterpolatedCamera %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) InterpolatedCamera %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor InterpolatedCamera;

class InterpolatedCamera : public Camera {
public:
  InterpolatedCamera();

%extend {

void set_target_path(const NodePath& target_path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InterpolatedCamera", "set_target_path");
  const void* __args[1] = { &target_path };
  __method_bind->ptrcall($self, __args, NULL);
}

NodePath get_target_path() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InterpolatedCamera", "get_target_path");
  NodePath ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_target(Camera* target) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InterpolatedCamera", "set_target");
  const void* __args[1] = { target };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_speed(float speed) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InterpolatedCamera", "set_speed");
  const void* __args[1] = { &speed };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_speed() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InterpolatedCamera", "get_speed");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_interpolation_enabled(bool target_path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InterpolatedCamera", "set_interpolation_enabled");
  const void* __args[1] = { &target_path };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_interpolation_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InterpolatedCamera", "is_interpolation_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
