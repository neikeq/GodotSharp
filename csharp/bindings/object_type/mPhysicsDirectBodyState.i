/* mPhysicsDirectBodyState.i */
%module mPhysicsDirectBodyState

%nodefaultctor PhysicsDirectBodyState;

%typemap(csbody_derived) PhysicsDirectBodyState %{

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

%typemap(cscode) PhysicsDirectBodyState %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) PhysicsDirectBodyState %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor PhysicsDirectBodyState;

class PhysicsDirectBodyState : public Object {
public:
  %extend {
    Vector3 get_total_gravity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_total_gravity");
    }
  }
  %extend {
    float get_total_linear_damp() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_total_linear_damp");
    }
  }
  %extend {
    float get_total_angular_damp() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_total_angular_damp");
    }
  }
  %extend {
    float get_inverse_mass() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_inverse_mass");
    }
  }
  %extend {
    Vector3 get_inverse_inertia() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_inverse_inertia");
    }
  }
  %extend {
    void set_linear_velocity(const Vector3& velocity) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_linear_velocity", velocity);
    }
  }
  %extend {
    Vector3 get_linear_velocity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_linear_velocity");
    }
  }
  %extend {
    void set_angular_velocity(const Vector3& velocity) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_angular_velocity", velocity);
    }
  }
  %extend {
    Vector3 get_angular_velocity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_angular_velocity");
    }
  }
  %extend {
    void set_transform(const Transform& transform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_transform", transform);
    }
  }
  %extend {
    Transform get_transform() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_transform");
    }
  }
  %extend {
    void add_force(const Vector3& force, const Vector3& pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_force", force, pos);
    }
  }
  %extend {
    void apply_impulse(const Vector3& pos, const Vector3& j) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("apply_impulse", pos, j);
    }
  }
  %extend {
    void set_sleep_state(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_sleep_state", enabled);
    }
  }
  %extend {
    bool is_sleeping() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_sleeping");
    }
  }
  %extend {
    int get_contact_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_contact_count");
    }
  }
  %extend {
    Vector3 get_contact_local_pos(int contact_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_contact_local_pos", contact_idx);
    }
  }
  %extend {
    Vector3 get_contact_local_normal(int contact_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_contact_local_normal", contact_idx);
    }
  }
  %extend {
    int get_contact_local_shape(int contact_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_contact_local_shape", contact_idx);
    }
  }
  %extend {
    RID get_contact_collider(int contact_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_contact_collider", contact_idx);
    }
  }
  %extend {
    Vector3 get_contact_collider_pos(int contact_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_contact_collider_pos", contact_idx);
    }
  }
  %extend {
    int get_contact_collider_id(int contact_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_contact_collider_id", contact_idx);
    }
  }
  %extend {
    Object* get_contact_collider_object(int contact_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_contact_collider_object", contact_idx).operator Object *();
    }
  }
  %extend {
    int get_contact_collider_shape(int contact_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_contact_collider_shape", contact_idx);
    }
  }
  %extend {
    Vector3 get_contact_collider_velocity_at_pos(int contact_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_contact_collider_velocity_at_pos", contact_idx);
    }
  }
  %extend {
    float get_step() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_step");
    }
  }
  %extend {
    void integrate_forces() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("integrate_forces");
    }
  }
  %extend {
    PhysicsDirectSpaceState* get_space_state() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_space_state").operator Object *()->cast_to<PhysicsDirectSpaceState>();
    }
  }

};
