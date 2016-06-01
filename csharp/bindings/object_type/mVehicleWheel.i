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
  %extend {
    void set_radius(float length) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_radius", length);
    }
  }
  %extend {
    float get_radius() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_radius");
    }
  }
  %extend {
    void set_suspension_rest_length(float length) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_suspension_rest_length", length);
    }
  }
  %extend {
    float get_suspension_rest_length() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_suspension_rest_length");
    }
  }
  %extend {
    void set_suspension_travel(float length) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_suspension_travel", length);
    }
  }
  %extend {
    float get_suspension_travel() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_suspension_travel");
    }
  }
  %extend {
    void set_suspension_stiffness(float length) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_suspension_stiffness", length);
    }
  }
  %extend {
    float get_suspension_stiffness() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_suspension_stiffness");
    }
  }
  %extend {
    void set_suspension_max_force(float length) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_suspension_max_force", length);
    }
  }
  %extend {
    float get_suspension_max_force() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_suspension_max_force");
    }
  }
  %extend {
    void set_damping_compression(float length) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_damping_compression", length);
    }
  }
  %extend {
    float get_damping_compression() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_damping_compression");
    }
  }
  %extend {
    void set_damping_relaxation(float length) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_damping_relaxation", length);
    }
  }
  %extend {
    float get_damping_relaxation() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_damping_relaxation");
    }
  }
  %extend {
    void set_use_as_traction(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_use_as_traction", enable);
    }
  }
  %extend {
    bool is_used_as_traction() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_used_as_traction");
    }
  }
  %extend {
    void set_use_as_steering(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_use_as_steering", enable);
    }
  }
  %extend {
    bool is_used_as_steering() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_used_as_steering");
    }
  }
  %extend {
    void set_friction_slip(float length) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_friction_slip", length);
    }
  }
  %extend {
    float get_friction_slip() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_friction_slip");
    }
  }
  VehicleWheel();

};
