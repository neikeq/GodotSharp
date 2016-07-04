/* mGrooveJoint2D.i */
%module mGrooveJoint2D


%typemap(csbody_derived) GrooveJoint2D %{

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

%typemap(cscode) GrooveJoint2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) GrooveJoint2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor GrooveJoint2D;

class GrooveJoint2D : public Joint2D {
public:
  GrooveJoint2D();

%extend {

void set_length(float length) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GrooveJoint2D", "set_length");
  const void* __args[1] = { &length };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_length() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GrooveJoint2D", "get_length");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_initial_offset(float offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GrooveJoint2D", "set_initial_offset");
  const void* __args[1] = { &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_initial_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GrooveJoint2D", "get_initial_offset");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
