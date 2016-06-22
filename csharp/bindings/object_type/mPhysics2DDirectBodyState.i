/* mPhysics2DDirectBodyState.i */
%module mPhysics2DDirectBodyState

%nodefaultctor Physics2DDirectBodyState;
%typemap(out) Physics2DDirectBodyState "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Physics2DDirectBodyState* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) Physics2DDirectBodyState %{

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

%typemap(cscode) Physics2DDirectBodyState %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Physics2DDirectBodyState %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Physics2DDirectBodyState;

class Physics2DDirectBodyState : public Object {
public:
  %extend {
    Vector2 get_total_gravity() {
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
    float get_inverse_inertia() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_inverse_inertia");
    }
  }
  %extend {
    void set_linear_velocity(const Vector2& velocity) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_linear_velocity", velocity);
    }
  }
  %extend {
    Vector2 get_linear_velocity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_linear_velocity");
    }
  }
  %extend {
    void set_angular_velocity(float velocity) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_angular_velocity", velocity);
    }
  }
  %extend {
    float get_angular_velocity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_angular_velocity");
    }
  }
  %extend {
    void set_transform(const Matrix32& transform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_transform", transform);
    }
  }
  %extend {
    Matrix32 get_transform() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_transform");
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
    Vector2 get_contact_local_pos(int contact_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_contact_local_pos", contact_idx);
    }
  }
  %extend {
    Vector2 get_contact_local_normal(int contact_idx) {
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
    Vector2 get_contact_collider_pos(int contact_idx) {
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
    Variant get_contact_collider_shape_metadata(int contact_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_contact_collider_shape_metadata", contact_idx);
    }
  }
  %extend {
    Vector2 get_contact_collider_velocity_at_pos(int contact_idx) {
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
    Physics2DDirectSpaceState* get_space_state() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_space_state").operator Object *()->cast_to<Physics2DDirectSpaceState>();
    }
  }

};
