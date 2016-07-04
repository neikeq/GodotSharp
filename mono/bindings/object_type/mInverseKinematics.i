/* mInverseKinematics.i */
%module mInverseKinematics


%typemap(csbody_derived) InverseKinematics %{

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

%typemap(cscode) InverseKinematics %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) InverseKinematics %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor InverseKinematics;

class InverseKinematics : public Spatial {
public:
  InverseKinematics();

%extend {

void set_bone_name(const String& ik_bone) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InverseKinematics", "set_bone_name");
  const void* __args[1] = { &ik_bone };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_bone_name() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InverseKinematics", "get_bone_name");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_iterations(int iterations) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InverseKinematics", "set_iterations");
  const void* __args[1] = { &iterations };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_iterations() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InverseKinematics", "get_iterations");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_chain_size(int chain_size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InverseKinematics", "set_chain_size");
  const void* __args[1] = { &chain_size };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_chain_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InverseKinematics", "get_chain_size");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_precision(float precision) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InverseKinematics", "set_precision");
  const void* __args[1] = { &precision };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_precision() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InverseKinematics", "get_precision");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_speed(float speed) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InverseKinematics", "set_speed");
  const void* __args[1] = { &speed };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_speed() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InverseKinematics", "get_speed");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
