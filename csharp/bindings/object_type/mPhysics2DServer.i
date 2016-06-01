/* mPhysics2DServer.i */
%module mPhysics2DServer

%csmethodmodifiers Physics2DServer::Physics2DServer "private"
%csmethodmodifiers Physics2DServer::SingletonGetInstance "private"
%nodefaultctor Physics2DServer;

%typemap(csbody_derived) Physics2DServer %{
  private static $csclassname instance;
  public static readonly int SHAPE_LINE = 0;
  public static readonly int SHAPE_SEGMENT = 2;
  public static readonly int SHAPE_CIRCLE = 3;
  public static readonly int SHAPE_RECTANGLE = 4;
  public static readonly int SHAPE_CAPSULE = 5;
  public static readonly int SHAPE_CONVEX_POLYGON = 6;
  public static readonly int SHAPE_CONCAVE_POLYGON = 7;
  public static readonly int SHAPE_CUSTOM = 8;
  public static readonly int AREA_PARAM_GRAVITY = 0;
  public static readonly int AREA_PARAM_GRAVITY_VECTOR = 1;
  public static readonly int AREA_PARAM_GRAVITY_IS_POINT = 2;
  public static readonly int AREA_PARAM_GRAVITY_DISTANCE_SCALE = 3;
  public static readonly int AREA_PARAM_GRAVITY_POINT_ATTENUATION = 4;
  public static readonly int AREA_PARAM_LINEAR_DAMP = 5;
  public static readonly int AREA_PARAM_ANGULAR_DAMP = 6;
  public static readonly int AREA_PARAM_PRIORITY = 7;
  public static readonly int AREA_SPACE_OVERRIDE_DISABLED = 0;
  public static readonly int AREA_SPACE_OVERRIDE_COMBINE = 1;
  public static readonly int AREA_SPACE_OVERRIDE_COMBINE_REPLACE = 2;
  public static readonly int AREA_SPACE_OVERRIDE_REPLACE = 3;
  public static readonly int AREA_SPACE_OVERRIDE_REPLACE_COMBINE = 4;
  public static readonly int BODY_MODE_STATIC = 0;
  public static readonly int BODY_MODE_KINEMATIC = 1;
  public static readonly int BODY_MODE_RIGID = 2;
  public static readonly int BODY_MODE_CHARACTER = 3;
  public static readonly int BODY_PARAM_BOUNCE = 0;
  public static readonly int BODY_PARAM_FRICTION = 1;
  public static readonly int BODY_PARAM_MASS = 2;
  public static readonly int BODY_PARAM_INERTIA = 3;
  public static readonly int BODY_PARAM_GRAVITY_SCALE = 4;
  public static readonly int BODY_PARAM_LINEAR_DAMP = 5;
  public static readonly int BODY_PARAM_ANGULAR_DAMP = 6;
  public static readonly int BODY_PARAM_MAX = 7;
  public static readonly int BODY_STATE_TRANSFORM = 0;
  public static readonly int BODY_STATE_LINEAR_VELOCITY = 1;
  public static readonly int BODY_STATE_ANGULAR_VELOCITY = 2;
  public static readonly int BODY_STATE_SLEEPING = 3;
  public static readonly int BODY_STATE_CAN_SLEEP = 4;
  public static readonly int JOINT_PIN = 0;
  public static readonly int JOINT_GROOVE = 1;
  public static readonly int JOINT_DAMPED_SPRING = 2;
  public static readonly int DAMPED_STRING_REST_LENGTH = 0;
  public static readonly int DAMPED_STRING_STIFFNESS = 1;
  public static readonly int DAMPED_STRING_DAMPING = 2;
  public static readonly int CCD_MODE_DISABLED = 0;
  public static readonly int CCD_MODE_CAST_RAY = 1;
  public static readonly int CCD_MODE_CAST_SHAPE = 2;
  public static readonly int AREA_BODY_ADDED = 0;
  public static readonly int AREA_BODY_REMOVED = 1;
  public static readonly int INFO_ACTIVE_OBJECTS = 0;
  public static readonly int INFO_COLLISION_PAIRS = 1;
  public static readonly int INFO_ISLAND_COUNT = 2;

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

%typemap(cscode) Physics2DServer %{
  public static $csclassname Instance {
    get {
      if (instance == null) {
        instance = SingletonGetInstance();
      }
      return instance;
    }
  }

  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Physics2DServer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor Physics2DServer;

class Physics2DServer : public Object {
public:
  %extend {
    RID shape_create(int type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("shape_create", type);
    }
  }
  %extend {
    void shape_set_data(const RID& shape, const Variant& data) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("shape_set_data", shape, data);
    }
  }
  %extend {
    int shape_get_type(const RID& shape) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("shape_get_type", shape);
    }
  }
  %extend {
    void shape_get_data(const RID& shape) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("shape_get_data", shape);
    }
  }
  %extend {
    RID space_create() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("space_create");
    }
  }
  %extend {
    void space_set_active(const RID& space, bool active) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("space_set_active", space, active);
    }
  }
  %extend {
    bool space_is_active(const RID& space) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("space_is_active", space);
    }
  }
  %extend {
    void space_set_param(const RID& space, int param, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("space_set_param", space, param, value);
    }
  }
  %extend {
    float space_get_param(const RID& space, int param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("space_get_param", space, param);
    }
  }
  %extend {
    Physics2DDirectSpaceState* space_get_direct_state(const RID& space) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("space_get_direct_state", space).operator Object *()->cast_to<Physics2DDirectSpaceState>();
    }
  }
  %extend {
    RID area_create() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("area_create");
    }
  }
  %extend {
    void area_set_space(const RID& area, const RID& space) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_set_space", area, space);
    }
  }
  %extend {
    RID area_get_space(const RID& area) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("area_get_space", area);
    }
  }
  %extend {
    void area_set_space_override_mode(const RID& area, int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_set_space_override_mode", area, mode);
    }
  }
  %extend {
    int area_get_space_override_mode(const RID& area) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("area_get_space_override_mode", area);
    }
  }
  %extend {
    void area_add_shape(const RID& area, const RID& shape, const Matrix32& transform = Matrix32()) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_add_shape", area, shape, transform);
    }
  }
  %extend {
    void area_set_shape(const RID& area, int shape_idx, const RID& shape) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_set_shape", area, shape_idx, shape);
    }
  }
  %extend {
    void area_set_shape_transform(const RID& area, int shape_idx, const Matrix32& transform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_set_shape_transform", area, shape_idx, transform);
    }
  }
  %extend {
    int area_get_shape_count(const RID& area) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("area_get_shape_count", area);
    }
  }
  %extend {
    RID area_get_shape(const RID& area, int shape_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("area_get_shape", area, shape_idx);
    }
  }
  %extend {
    Matrix32 area_get_shape_transform(const RID& area, int shape_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("area_get_shape_transform", area, shape_idx);
    }
  }
  %extend {
    void area_remove_shape(const RID& area, int shape_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_remove_shape", area, shape_idx);
    }
  }
  %extend {
    void area_clear_shapes(const RID& area) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_clear_shapes", area);
    }
  }
  %extend {
    void area_set_layer_mask(const RID& area, int mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_set_layer_mask", area, mask);
    }
  }
  %extend {
    void area_set_collision_mask(const RID& area, int mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_set_collision_mask", area, mask);
    }
  }
  %extend {
    void area_set_param(const RID& area, int param, const Variant& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_set_param", area, param, value);
    }
  }
  %extend {
    void area_set_transform(const RID& area, const Matrix32& transform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_set_transform", area, transform);
    }
  }
  %extend {
    void area_get_param(const RID& area, int param) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_get_param", area, param);
    }
  }
  %extend {
    Matrix32 area_get_transform(const RID& area) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("area_get_transform", area);
    }
  }
  %extend {
    void area_attach_object_instance_ID(const RID& area, int id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_attach_object_instance_ID", area, id);
    }
  }
  %extend {
    int area_get_object_instance_ID(const RID& area) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("area_get_object_instance_ID", area);
    }
  }
  %extend {
    void area_set_monitor_callback(const RID& area, Object* receiver, const String& method) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_set_monitor_callback", area, receiver, method);
    }
  }
  %extend {
    RID body_create(int mode = 2, bool init_sleeping = false) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_create", mode, init_sleeping);
    }
  }
  %extend {
    void body_set_space(const RID& body, const RID& space) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_space", body, space);
    }
  }
  %extend {
    RID body_get_space(const RID& body) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_get_space", body);
    }
  }
  %extend {
    void body_set_mode(const RID& body, int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_mode", body, mode);
    }
  }
  %extend {
    int body_get_mode(const RID& body) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_get_mode", body);
    }
  }
  %extend {
    void body_add_shape(const RID& body, const RID& shape, const Matrix32& transform = Matrix32()) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_add_shape", body, shape, transform);
    }
  }
  %extend {
    void body_set_shape(const RID& body, int shape_idx, const RID& shape) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_shape", body, shape_idx, shape);
    }
  }
  %extend {
    void body_set_shape_transform(const RID& body, int shape_idx, const Matrix32& transform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_shape_transform", body, shape_idx, transform);
    }
  }
  %extend {
    void body_set_shape_metadata(const RID& body, int shape_idx, const Variant& metadata) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_shape_metadata", body, shape_idx, metadata);
    }
  }
  %extend {
    int body_get_shape_count(const RID& body) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_get_shape_count", body);
    }
  }
  %extend {
    RID body_get_shape(const RID& body, int shape_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_get_shape", body, shape_idx);
    }
  }
  %extend {
    Matrix32 body_get_shape_transform(const RID& body, int shape_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_get_shape_transform", body, shape_idx);
    }
  }
  %extend {
    void body_get_shape_metadata(const RID& body, int shape_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_get_shape_metadata", body, shape_idx);
    }
  }
  %extend {
    void body_remove_shape(const RID& body, int shape_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_remove_shape", body, shape_idx);
    }
  }
  %extend {
    void body_clear_shapes(const RID& body) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_clear_shapes", body);
    }
  }
  %extend {
    void body_set_shape_as_trigger(const RID& body, int shape_idx, bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_shape_as_trigger", body, shape_idx, enable);
    }
  }
  %extend {
    bool body_is_shape_set_as_trigger(const RID& body, int shape_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_is_shape_set_as_trigger", body, shape_idx);
    }
  }
  %extend {
    void body_attach_object_instance_ID(const RID& body, int id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_attach_object_instance_ID", body, id);
    }
  }
  %extend {
    int body_get_object_instance_ID(const RID& body) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_get_object_instance_ID", body);
    }
  }
  %extend {
    void body_set_continuous_collision_detection_mode(const RID& body, int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_continuous_collision_detection_mode", body, mode);
    }
  }
  %extend {
    int body_get_continuous_collision_detection_mode(const RID& body) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_get_continuous_collision_detection_mode", body);
    }
  }
  %extend {
    void body_set_layer_mask(const RID& body, int mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_layer_mask", body, mask);
    }
  }
  %extend {
    int body_get_layer_mask(const RID& body) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_get_layer_mask", body);
    }
  }
  %extend {
    void body_set_collision_mask(const RID& body, int mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_collision_mask", body, mask);
    }
  }
  %extend {
    int body_get_collision_mask(const RID& body) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_get_collision_mask", body);
    }
  }
  %extend {
    void body_set_param(const RID& body, int param, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_param", body, param, value);
    }
  }
  %extend {
    float body_get_param(const RID& body, int param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_get_param", body, param);
    }
  }
  %extend {
    void body_set_state(const RID& body, int state, const Variant& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_state", body, state, value);
    }
  }
  %extend {
    void body_get_state(const RID& body, int state) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_get_state", body, state);
    }
  }
  %extend {
    void body_apply_impulse(const RID& body, const Vector2& pos, const Vector2& impulse) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_apply_impulse", body, pos, impulse);
    }
  }
  %extend {
    void body_add_force(const RID& body, const Vector2& offset, const Vector2& force) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_add_force", body, offset, force);
    }
  }
  %extend {
    void body_set_axis_velocity(const RID& body, const Vector2& axis_velocity) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_axis_velocity", body, axis_velocity);
    }
  }
  %extend {
    void body_add_collision_exception(const RID& body, const RID& excepted_body) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_add_collision_exception", body, excepted_body);
    }
  }
  %extend {
    void body_remove_collision_exception(const RID& body, const RID& excepted_body) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_remove_collision_exception", body, excepted_body);
    }
  }
  %extend {
    void body_set_max_contacts_reported(const RID& body, int amount) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_max_contacts_reported", body, amount);
    }
  }
  %extend {
    int body_get_max_contacts_reported(const RID& body) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_get_max_contacts_reported", body);
    }
  }
  %extend {
    void body_set_one_way_collision_direction(const RID& body, const Vector2& normal) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_one_way_collision_direction", body, normal);
    }
  }
  %extend {
    Vector2 body_get_one_way_collision_direction(const RID& body) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_get_one_way_collision_direction", body);
    }
  }
  %extend {
    void body_set_one_way_collision_max_depth(const RID& body, float depth) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_one_way_collision_max_depth", body, depth);
    }
  }
  %extend {
    float body_get_one_way_collision_max_depth(const RID& body) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_get_one_way_collision_max_depth", body);
    }
  }
  %extend {
    void body_set_omit_force_integration(const RID& body, bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_omit_force_integration", body, enable);
    }
  }
  %extend {
    bool body_is_omitting_force_integration(const RID& body) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_is_omitting_force_integration", body);
    }
  }
  %extend {
    void body_set_force_integration_callback(const RID& body, Object* receiver, const String& method, const Variant& userdata = Variant()) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_force_integration_callback", body, receiver, method, userdata);
    }
  }
  %extend {
    bool body_test_motion(const RID& body, const Vector2& motion, float margin = 0.08, Ref<Physics2DTestMotionResult> result = Ref<Physics2DTestMotionResult>()) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_test_motion", body, motion, margin, result);
    }
  }
  %extend {
    void joint_set_param(const RID& joint, int param, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("joint_set_param", joint, param, value);
    }
  }
  %extend {
    float joint_get_param(const RID& joint, int param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("joint_get_param", joint, param);
    }
  }
  %extend {
    RID pin_joint_create(const Vector2& anchor, const RID& body_a, const RID& body_b = RID()) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("pin_joint_create", anchor, body_a, body_b);
    }
  }
  %extend {
    RID groove_joint_create(const Vector2& groove1_a, const Vector2& groove2_a, const Vector2& anchor_b, const RID& body_a = RID(), const RID& body_b = RID()) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("groove_joint_create", groove1_a, groove2_a, anchor_b, body_a, body_b);
    }
  }
  %extend {
    RID damped_spring_joint_create(const Vector2& anchor_a, const Vector2& anchor_b, const RID& body_a, const RID& body_b = RID()) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("damped_spring_joint_create", anchor_a, anchor_b, body_a, body_b);
    }
  }
  %extend {
    void damped_string_joint_set_param(const RID& joint, int param, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("damped_string_joint_set_param", joint, param, value);
    }
  }
  %extend {
    float damped_string_joint_get_param(const RID& joint, int param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("damped_string_joint_get_param", joint, param);
    }
  }
  %extend {
    int joint_get_type(const RID& joint) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("joint_get_type", joint);
    }
  }
  %extend {
    void free_rid(const RID& rid) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("free_rid", rid);
    }
  }
  %extend {
    void set_active(bool active) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_active", active);
    }
  }
  %extend {
    int get_process_info(int process_info) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_process_info", process_info);
    }
  }
  %extend {
    static Physics2DServer* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("Physics2DServer")->cast_to<Physics2DServer>(); }
  }

};
