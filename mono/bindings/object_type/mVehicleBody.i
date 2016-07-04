/* mVehicleBody.i */
%module mVehicleBody


%typemap(csbody_derived) VehicleBody %{

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

%typemap(cscode) VehicleBody %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) VehicleBody %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor VehicleBody;

class VehicleBody : public PhysicsBody {
public:
  VehicleBody();

%extend {

void set_mass(float mass) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleBody", "set_mass");
  const void* __args[1] = { &mass };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_mass() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleBody", "get_mass");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_friction(float friction) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleBody", "set_friction");
  const void* __args[1] = { &friction };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_friction() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleBody", "get_friction");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_engine_force(float engine_force) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleBody", "set_engine_force");
  const void* __args[1] = { &engine_force };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_engine_force() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleBody", "get_engine_force");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_brake(float brake) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleBody", "set_brake");
  const void* __args[1] = { &brake };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_brake() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleBody", "get_brake");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_steering(float steering) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleBody", "set_steering");
  const void* __args[1] = { &steering };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_steering() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleBody", "get_steering");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector3 get_linear_velocity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VehicleBody", "get_linear_velocity");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
