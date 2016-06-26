/* mStaticBody.i */
%module mStaticBody


%typemap(csbody_derived) StaticBody %{

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

%typemap(cscode) StaticBody %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) StaticBody %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor StaticBody;

class StaticBody : public PhysicsBody {
public:
  StaticBody();

%extend {

void set_constant_linear_velocity(const Vector3& vel) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StaticBody", "set_constant_linear_velocity");
  const void* __args[1] = { &vel };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_constant_angular_velocity(const Vector3& vel) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StaticBody", "set_constant_angular_velocity");
  const void* __args[1] = { &vel };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_constant_linear_velocity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StaticBody", "get_constant_linear_velocity");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector3 get_constant_angular_velocity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StaticBody", "get_constant_angular_velocity");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_friction(float friction) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StaticBody", "set_friction");
  const void* __args[1] = { &friction };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_friction() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StaticBody", "get_friction");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_bounce(float bounce) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StaticBody", "set_bounce");
  const void* __args[1] = { &bounce };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_bounce() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StaticBody", "get_bounce");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
