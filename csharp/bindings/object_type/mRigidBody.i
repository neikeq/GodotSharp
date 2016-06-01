/* mRigidBody.i */
%module mRigidBody


%typemap(csbody_derived) RigidBody %{
  public static readonly int MODE_STATIC = 1;
  public static readonly int MODE_KINEMATIC = 3;
  public static readonly int MODE_RIGID = 0;
  public static readonly int MODE_CHARACTER = 2;

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

%typemap(cscode) RigidBody %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) RigidBody %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor RigidBody;

class RigidBody : public PhysicsBody {
public:
  %extend {
    void _integrate_forces(PhysicsDirectBodyState* state) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_integrate_forces", state);
    }
  }
  %extend {
    void set_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_mode", mode);
    }
  }
  %extend {
    int get_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_mode");
    }
  }
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
    void set_weight(float weight) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_weight", weight);
    }
  }
  %extend {
    float get_weight() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_weight");
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
    void set_bounce(float bounce) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bounce", bounce);
    }
  }
  %extend {
    float get_bounce() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bounce");
    }
  }
  %extend {
    void set_linear_velocity(const Vector3& linear_velocity) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_linear_velocity", linear_velocity);
    }
  }
  %extend {
    Vector3 get_linear_velocity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_linear_velocity");
    }
  }
  %extend {
    void set_angular_velocity(const Vector3& angular_velocity) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_angular_velocity", angular_velocity);
    }
  }
  %extend {
    Vector3 get_angular_velocity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_angular_velocity");
    }
  }
  %extend {
    void set_gravity_scale(float gravity_scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_gravity_scale", gravity_scale);
    }
  }
  %extend {
    float get_gravity_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_gravity_scale");
    }
  }
  %extend {
    void set_linear_damp(float linear_damp) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_linear_damp", linear_damp);
    }
  }
  %extend {
    float get_linear_damp() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_linear_damp");
    }
  }
  %extend {
    void set_angular_damp(float angular_damp) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_angular_damp", angular_damp);
    }
  }
  %extend {
    float get_angular_damp() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_angular_damp");
    }
  }
  %extend {
    void set_max_contacts_reported(int amount) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_max_contacts_reported", amount);
    }
  }
  %extend {
    int get_max_contacts_reported() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_max_contacts_reported");
    }
  }
  %extend {
    void set_use_custom_integrator(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_use_custom_integrator", enable);
    }
  }
  %extend {
    bool is_using_custom_integrator() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_using_custom_integrator");
    }
  }
  %extend {
    void set_contact_monitor(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_contact_monitor", enabled);
    }
  }
  %extend {
    bool is_contact_monitor_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_contact_monitor_enabled");
    }
  }
  %extend {
    void set_use_continuous_collision_detection(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_use_continuous_collision_detection", enable);
    }
  }
  %extend {
    bool is_using_continuous_collision_detection() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_using_continuous_collision_detection");
    }
  }
  %extend {
    void set_axis_velocity(const Vector3& axis_velocity) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_axis_velocity", axis_velocity);
    }
  }
  %extend {
    void apply_impulse(const Vector3& pos, const Vector3& impulse) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("apply_impulse", pos, impulse);
    }
  }
  %extend {
    void set_sleeping(bool sleeping) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_sleeping", sleeping);
    }
  }
  %extend {
    bool is_sleeping() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_sleeping");
    }
  }
  %extend {
    void set_can_sleep(bool able_to_sleep) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_can_sleep", able_to_sleep);
    }
  }
  %extend {
    bool is_able_to_sleep() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_able_to_sleep");
    }
  }
  %extend {
    void set_axis_lock(int axis_lock) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_axis_lock", axis_lock);
    }
  }
  %extend {
    int get_axis_lock() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_axis_lock");
    }
  }
  %extend {
    Array get_colliding_bodies() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_colliding_bodies");
    }
  }
  RigidBody();

};
