/* mVehicleBody.i */
%module mVehicleBody

%typemap(out) VehicleBody "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) VehicleBody* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


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
  %extend {
    void set_mass(float mass) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_mass", mass);
    }
  }
  %extend {
    float get_mass() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_mass");
    }
  }
  %extend {
    void set_friction(float friction) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_friction", friction);
    }
  }
  %extend {
    float get_friction() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_friction");
    }
  }
  %extend {
    void set_engine_force(float engine_force) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_engine_force", engine_force);
    }
  }
  %extend {
    float get_engine_force() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_engine_force");
    }
  }
  %extend {
    void set_brake(float brake) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_brake", brake);
    }
  }
  %extend {
    float get_brake() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_brake");
    }
  }
  %extend {
    void set_steering(float steering) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_steering", steering);
    }
  }
  %extend {
    float get_steering() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_steering");
    }
  }
  %extend {
    Vector3 get_linear_velocity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_linear_velocity");
    }
  }
  VehicleBody();

};
