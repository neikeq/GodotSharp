/* mVehicleWheel.i */
%module mVehicleWheel


%typemap(csbody_derived) VehicleWheel %{

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

%typemap(cscode) VehicleWheel %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) VehicleWheel %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor VehicleWheel;

class VehicleWheel : public Spatial {
public:
  VehicleWheel();

%extend {

void set_radius(float length) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "set_radius");
  const void* __args[1] = { &length };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_radius() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "get_radius");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_suspension_rest_length(float length) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "set_suspension_rest_length");
  const void* __args[1] = { &length };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_suspension_rest_length() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "get_suspension_rest_length");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_suspension_travel(float length) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "set_suspension_travel");
  const void* __args[1] = { &length };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_suspension_travel() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "get_suspension_travel");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_suspension_stiffness(float length) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "set_suspension_stiffness");
  const void* __args[1] = { &length };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_suspension_stiffness() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "get_suspension_stiffness");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_suspension_max_force(float length) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "set_suspension_max_force");
  const void* __args[1] = { &length };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_suspension_max_force() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "get_suspension_max_force");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_damping_compression(float length) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "set_damping_compression");
  const void* __args[1] = { &length };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_damping_compression() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "get_damping_compression");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_damping_relaxation(float length) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "set_damping_relaxation");
  const void* __args[1] = { &length };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_damping_relaxation() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "get_damping_relaxation");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_use_as_traction(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "set_use_as_traction");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_used_as_traction() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "is_used_as_traction");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_use_as_steering(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "set_use_as_steering");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_used_as_steering() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "is_used_as_steering");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_friction_slip(float length) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "set_friction_slip");
  const void* __args[1] = { &length };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_friction_slip() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleWheel", "get_friction_slip");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
