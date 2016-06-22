/* mParticles.i */
%module mParticles

%typemap(out) Particles "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Particles* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) Particles %{
  public static readonly int VAR_LIFETIME = 0;
  public static readonly int VAR_SPREAD = 1;
  public static readonly int VAR_GRAVITY = 2;
  public static readonly int VAR_LINEAR_VELOCITY = 3;
  public static readonly int VAR_ANGULAR_VELOCITY = 4;
  public static readonly int VAR_LINEAR_ACCELERATION = 5;
  public static readonly int VAR_DRAG = 6;
  public static readonly int VAR_TANGENTIAL_ACCELERATION = 7;
  public static readonly int VAR_INITIAL_SIZE = 9;
  public static readonly int VAR_FINAL_SIZE = 10;
  public static readonly int VAR_INITIAL_ANGLE = 11;
  public static readonly int VAR_HEIGHT = 12;
  public static readonly int VAR_HEIGHT_SPEED_SCALE = 13;
  public static readonly int VAR_MAX = 14;

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

%typemap(cscode) Particles %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Particles %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Particles;

class Particles : public GeometryInstance {
public:
  %extend {
    void set_amount(int amount) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_amount", amount);
    }
  }
  %extend {
    int get_amount() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_amount");
    }
  }
  %extend {
    void set_emitting(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_emitting", enabled);
    }
  }
  %extend {
    bool is_emitting() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_emitting");
    }
  }
  %extend {
    void set_visibility_aabb(const AABB& aabb) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_visibility_aabb", aabb);
    }
  }
  %extend {
    AABB get_visibility_aabb() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_visibility_aabb");
    }
  }
  %extend {
    void set_emission_half_extents(const Vector3& half_extents) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_emission_half_extents", half_extents);
    }
  }
  %extend {
    Vector3 get_emission_half_extents() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_emission_half_extents");
    }
  }
  %extend {
    void set_emission_base_velocity(const Vector3& base_velocity) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_emission_base_velocity", base_velocity);
    }
  }
  %extend {
    Vector3 get_emission_base_velocity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_emission_base_velocity");
    }
  }
  %extend {
    void set_emission_points(const Vector3Array& points) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_emission_points", points);
    }
  }
  %extend {
    Vector3Array get_emission_points() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_emission_points");
    }
  }
  %extend {
    void set_gravity_normal(const Vector3& normal) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_gravity_normal", normal);
    }
  }
  %extend {
    Vector3 get_gravity_normal() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_gravity_normal");
    }
  }
  %extend {
    void set_variable(int variable, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_variable", variable, value);
    }
  }
  %extend {
    float get_variable(int variable) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_variable", variable);
    }
  }
  %extend {
    void set_randomness(int variable, float randomness) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_randomness", variable, randomness);
    }
  }
  %extend {
    float get_randomness(int variable) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_randomness", variable);
    }
  }
  %extend {
    void set_color_phase_pos(int phase, float pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_color_phase_pos", phase, pos);
    }
  }
  %extend {
    float get_color_phase_pos(int phase) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_color_phase_pos", phase);
    }
  }
  %extend {
    void set_color_phase_color(int phase, const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_color_phase_color", phase, color);
    }
  }
  %extend {
    Color get_color_phase_color(int phase) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_color_phase_color", phase);
    }
  }
  %extend {
    void set_material(Ref<Material> material) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_material", material);
    }
  }
  %extend {
    Ref<Material> get_material() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_material").operator Object *()->cast_to<Material>();
    }
  }
  %extend {
    void set_emit_timeout(float timeout) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_emit_timeout", timeout);
    }
  }
  %extend {
    float get_emit_timeout() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_emit_timeout");
    }
  }
  %extend {
    void set_height_from_velocity(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_height_from_velocity", enable);
    }
  }
  %extend {
    bool has_height_from_velocity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_height_from_velocity");
    }
  }
  %extend {
    void set_use_local_coordinates(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_use_local_coordinates", enable);
    }
  }
  %extend {
    bool is_using_local_coordinates() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_using_local_coordinates");
    }
  }
  %extend {
    void set_color_phases(int count) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_color_phases", count);
    }
  }
  %extend {
    int get_color_phases() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_color_phases");
    }
  }
  Particles();

};
