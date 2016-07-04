/* mDampedSpringJoint2D.i */
%module mDampedSpringJoint2D


%typemap(csbody_derived) DampedSpringJoint2D %{

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

%typemap(cscode) DampedSpringJoint2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) DampedSpringJoint2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor DampedSpringJoint2D;

class DampedSpringJoint2D : public Joint2D {
public:
  DampedSpringJoint2D();

%extend {

void set_length(float length) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("DampedSpringJoint2D", "set_length");
  const void* __args[1] = { &length };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_length() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("DampedSpringJoint2D", "get_length");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_rest_length(float rest_length) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("DampedSpringJoint2D", "set_rest_length");
  const void* __args[1] = { &rest_length };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_rest_length() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("DampedSpringJoint2D", "get_rest_length");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_stiffness(float stiffness) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("DampedSpringJoint2D", "set_stiffness");
  const void* __args[1] = { &stiffness };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_stiffness() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("DampedSpringJoint2D", "get_stiffness");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_damping(float damping) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("DampedSpringJoint2D", "set_damping");
  const void* __args[1] = { &damping };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_damping() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("DampedSpringJoint2D", "get_damping");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
