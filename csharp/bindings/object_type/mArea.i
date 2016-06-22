/* mArea.i */
%module mArea

%typemap(out) Area "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Area* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) Area %{

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

%typemap(cscode) Area %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Area %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Area;

class Area : public CollisionObject {
public:
  %extend {
    void set_space_override_mode(int enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_space_override_mode", enable);
    }
  }
  %extend {
    int get_space_override_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_space_override_mode");
    }
  }
  %extend {
    void set_gravity_is_point(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_gravity_is_point", enable);
    }
  }
  %extend {
    bool is_gravity_a_point() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_gravity_a_point");
    }
  }
  %extend {
    void set_gravity_distance_scale(float distance_scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_gravity_distance_scale", distance_scale);
    }
  }
  %extend {
    float get_gravity_distance_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_gravity_distance_scale");
    }
  }
  %extend {
    void set_gravity_vector(const Vector3& vector) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_gravity_vector", vector);
    }
  }
  %extend {
    Vector3 get_gravity_vector() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_gravity_vector");
    }
  }
  %extend {
    void set_gravity(float gravity) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_gravity", gravity);
    }
  }
  %extend {
    float get_gravity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_gravity");
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
    void set_priority(float priority) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_priority", priority);
    }
  }
  %extend {
    float get_priority() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_priority");
    }
  }
  %extend {
    void set_collision_mask(int collision_mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_collision_mask", collision_mask);
    }
  }
  %extend {
    int get_collision_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_mask");
    }
  }
  %extend {
    void set_layer_mask(int layer_mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_layer_mask", layer_mask);
    }
  }
  %extend {
    int get_layer_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_layer_mask");
    }
  }
  %extend {
    void set_collision_mask_bit(int bit, bool value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_collision_mask_bit", bit, value);
    }
  }
  %extend {
    bool get_collision_mask_bit(int bit) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_mask_bit", bit);
    }
  }
  %extend {
    void set_layer_mask_bit(int bit, bool value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_layer_mask_bit", bit, value);
    }
  }
  %extend {
    bool get_layer_mask_bit(int bit) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_layer_mask_bit", bit);
    }
  }
  %extend {
    void set_monitorable(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_monitorable", enable);
    }
  }
  %extend {
    bool is_monitorable() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_monitorable");
    }
  }
  %extend {
    void set_enable_monitoring(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_enable_monitoring", enable);
    }
  }
  %extend {
    bool is_monitoring_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_monitoring_enabled");
    }
  }
  %extend {
    Array get_overlapping_bodies() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_overlapping_bodies");
    }
  }
  %extend {
    Array get_overlapping_areas() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_overlapping_areas");
    }
  }
  %extend {
    bool overlaps_body(Object* body) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("overlaps_body", body);
    }
  }
  %extend {
    bool overlaps_area(Object* area) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("overlaps_area", area);
    }
  }
  Area();

};
