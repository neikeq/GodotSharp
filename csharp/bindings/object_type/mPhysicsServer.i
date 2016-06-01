/* mPhysicsServer.i */
%module mPhysicsServer

%csmethodmodifiers PhysicsServer::PhysicsServer "private"
%csmethodmodifiers PhysicsServer::SingletonGetInstance "private"
%nodefaultctor PhysicsServer;

%typemap(csbody_derived) PhysicsServer %{
  private static $csclassname instance;
  public static readonly int JOINT_PIN = 0;
  public static readonly int JOINT_HINGE = 1;
  public static readonly int JOINT_SLIDER = 2;
  public static readonly int JOINT_CONE_TWIST = 3;
  public static readonly int JOINT_6DOF = 4;
  public static readonly int PIN_JOINT_BIAS = 0;
  public static readonly int PIN_JOINT_DAMPING = 1;
  public static readonly int PIN_JOINT_IMPULSE_CLAMP = 2;
  public static readonly int HINGE_JOINT_BIAS = 0;
  public static readonly int HINGE_JOINT_LIMIT_UPPER = 1;
  public static readonly int HINGE_JOINT_LIMIT_LOWER = 2;
  public static readonly int HINGE_JOINT_LIMIT_BIAS = 3;
  public static readonly int HINGE_JOINT_LIMIT_SOFTNESS = 4;
  public static readonly int HINGE_JOINT_LIMIT_RELAXATION = 5;
  public static readonly int HINGE_JOINT_MOTOR_TARGET_VELOCITY = 6;
  public static readonly int HINGE_JOINT_MOTOR_MAX_IMPULSE = 7;
  public static readonly int HINGE_JOINT_FLAG_USE_LIMIT = 0;
  public static readonly int HINGE_JOINT_FLAG_ENABLE_MOTOR = 1;
  public static readonly int SLIDER_JOINT_LINEAR_LIMIT_UPPER = 0;
  public static readonly int SLIDER_JOINT_LINEAR_LIMIT_LOWER = 1;
  public static readonly int SLIDER_JOINT_LINEAR_LIMIT_SOFTNESS = 2;
  public static readonly int SLIDER_JOINT_LINEAR_LIMIT_RESTITUTION = 3;
  public static readonly int SLIDER_JOINT_LINEAR_LIMIT_DAMPING = 4;
  public static readonly int SLIDER_JOINT_LINEAR_MOTION_SOFTNESS = 5;
  public static readonly int SLIDER_JOINT_LINEAR_MOTION_RESTITUTION = 6;
  public static readonly int SLIDER_JOINT_LINEAR_MOTION_DAMPING = 7;
  public static readonly int SLIDER_JOINT_LINEAR_ORTHOGONAL_SOFTNESS = 8;
  public static readonly int SLIDER_JOINT_LINEAR_ORTHOGONAL_RESTITUTION = 9;
  public static readonly int SLIDER_JOINT_LINEAR_ORTHOGONAL_DAMPING = 10;
  public static readonly int SLIDER_JOINT_ANGULAR_LIMIT_UPPER = 11;
  public static readonly int SLIDER_JOINT_ANGULAR_LIMIT_LOWER = 12;
  public static readonly int SLIDER_JOINT_ANGULAR_LIMIT_SOFTNESS = 13;
  public static readonly int SLIDER_JOINT_ANGULAR_LIMIT_RESTITUTION = 14;
  public static readonly int SLIDER_JOINT_ANGULAR_LIMIT_DAMPING = 15;
  public static readonly int SLIDER_JOINT_ANGULAR_MOTION_SOFTNESS = 16;
  public static readonly int SLIDER_JOINT_ANGULAR_MOTION_RESTITUTION = 17;
  public static readonly int SLIDER_JOINT_ANGULAR_MOTION_DAMPING = 18;
  public static readonly int SLIDER_JOINT_ANGULAR_ORTHOGONAL_SOFTNESS = 19;
  public static readonly int SLIDER_JOINT_ANGULAR_ORTHOGONAL_RESTITUTION = 20;
  public static readonly int SLIDER_JOINT_ANGULAR_ORTHOGONAL_DAMPING = 21;
  public static readonly int SLIDER_JOINT_MAX = 22;
  public static readonly int CONE_TWIST_JOINT_SWING_SPAN = 0;
  public static readonly int CONE_TWIST_JOINT_TWIST_SPAN = 1;
  public static readonly int CONE_TWIST_JOINT_BIAS = 2;
  public static readonly int CONE_TWIST_JOINT_SOFTNESS = 3;
  public static readonly int CONE_TWIST_JOINT_RELAXATION = 4;
  public static readonly int G6DOF_JOINT_LINEAR_LOWER_LIMIT = 0;
  public static readonly int G6DOF_JOINT_LINEAR_UPPER_LIMIT = 1;
  public static readonly int G6DOF_JOINT_LINEAR_LIMIT_SOFTNESS = 2;
  public static readonly int G6DOF_JOINT_LINEAR_RESTITUTION = 3;
  public static readonly int G6DOF_JOINT_LINEAR_DAMPING = 4;
  public static readonly int G6DOF_JOINT_ANGULAR_LOWER_LIMIT = 5;
  public static readonly int G6DOF_JOINT_ANGULAR_UPPER_LIMIT = 6;
  public static readonly int G6DOF_JOINT_ANGULAR_LIMIT_SOFTNESS = 7;
  public static readonly int G6DOF_JOINT_ANGULAR_DAMPING = 8;
  public static readonly int G6DOF_JOINT_ANGULAR_RESTITUTION = 9;
  public static readonly int G6DOF_JOINT_ANGULAR_FORCE_LIMIT = 10;
  public static readonly int G6DOF_JOINT_ANGULAR_ERP = 11;
  public static readonly int G6DOF_JOINT_ANGULAR_MOTOR_TARGET_VELOCITY = 12;
  public static readonly int G6DOF_JOINT_ANGULAR_MOTOR_FORCE_LIMIT = 13;
  public static readonly int G6DOF_JOINT_FLAG_ENABLE_LINEAR_LIMIT = 0;
  public static readonly int G6DOF_JOINT_FLAG_ENABLE_ANGULAR_LIMIT = 1;
  public static readonly int G6DOF_JOINT_FLAG_ENABLE_MOTOR = 2;
  public static readonly int SHAPE_PLANE = 0;
  public static readonly int SHAPE_RAY = 1;
  public static readonly int SHAPE_SPHERE = 2;
  public static readonly int SHAPE_BOX = 3;
  public static readonly int SHAPE_CAPSULE = 4;
  public static readonly int SHAPE_CONVEX_POLYGON = 5;
  public static readonly int SHAPE_CONCAVE_POLYGON = 6;
  public static readonly int SHAPE_HEIGHTMAP = 7;
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
  public static readonly int BODY_PARAM_GRAVITY_SCALE = 3;
  public static readonly int BODY_PARAM_ANGULAR_DAMP = 5;
  public static readonly int BODY_PARAM_LINEAR_DAMP = 4;
  public static readonly int BODY_PARAM_MAX = 6;
  public static readonly int BODY_STATE_TRANSFORM = 0;
  public static readonly int BODY_STATE_LINEAR_VELOCITY = 1;
  public static readonly int BODY_STATE_ANGULAR_VELOCITY = 2;
  public static readonly int BODY_STATE_SLEEPING = 3;
  public static readonly int BODY_STATE_CAN_SLEEP = 4;
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

%typemap(cscode) PhysicsServer %{
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

%typemap(csconstruct, excode=SWIGEXCODE) PhysicsServer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PhysicsServer;

class PhysicsServer : public Object {
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
    PhysicsDirectSpaceState* space_get_direct_state(const RID& space) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("space_get_direct_state", space).operator Object *()->cast_to<PhysicsDirectSpaceState>();
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
    void area_add_shape(const RID& area, const RID& shape, const Transform& transform = Transform()) {
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
    void area_set_shape_transform(const RID& area, int shape_idx, const Transform& transform) {
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
    Transform area_get_shape_transform(const RID& area, int shape_idx) {
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
    void area_set_transform(const RID& area, const Transform& transform) {
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
    Transform area_get_transform(const RID& area) {
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
    void area_set_ray_pickable(const RID& area, bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_set_ray_pickable", area, enable);
    }
  }
  %extend {
    bool area_is_ray_pickable(const RID& area) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("area_is_ray_pickable", area);
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
    void body_set_layer_mask(const RID& body, int mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_layer_mask", body, mask);
    }
  }
  %extend {
    int body_get_layer_mask(const RID& body, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_get_layer_mask", body, arg1_);
    }
  }
  %extend {
    void body_set_collision_mask(const RID& body, int mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_collision_mask", body, mask);
    }
  }
  %extend {
    int body_get_collision_mask(const RID& body, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_get_collision_mask", body, arg1_);
    }
  }
  %extend {
    void body_add_shape(const RID& body, const RID& shape, const Transform& transform = Transform()) {
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
    void body_set_shape_transform(const RID& body, int shape_idx, const Transform& transform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_shape_transform", body, shape_idx, transform);
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
    Transform body_get_shape_transform(const RID& body, int shape_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_get_shape_transform", body, shape_idx);
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
    void body_set_enable_continuous_collision_detection(const RID& body, bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_enable_continuous_collision_detection", body, enable);
    }
  }
  %extend {
    bool body_is_continuous_collision_detection_enabled(const RID& body) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_is_continuous_collision_detection_enabled", body);
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
    void body_apply_impulse(const RID& body, const Vector3& pos, const Vector3& impulse) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_apply_impulse", body, pos, impulse);
    }
  }
  %extend {
    void body_set_axis_velocity(const RID& body, const Vector3& axis_velocity) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_axis_velocity", body, axis_velocity);
    }
  }
  %extend {
    void body_set_axis_lock(const RID& body, int axis) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_axis_lock", body, axis);
    }
  }
  %extend {
    int body_get_axis_lock(const RID& body) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_get_axis_lock", body);
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
    void body_set_ray_pickable(const RID& body, bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("body_set_ray_pickable", body, enable);
    }
  }
  %extend {
    bool body_is_ray_pickable(const RID& body) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("body_is_ray_pickable", body);
    }
  }
  %extend {
    RID joint_create_pin(const RID& body_A, const Vector3& local_A, const RID& body_B, const Vector3& local_B) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("joint_create_pin", body_A, local_A, body_B, local_B);
    }
  }
  %extend {
    void pin_joint_set_param(const RID& joint, int param, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("pin_joint_set_param", joint, param, value);
    }
  }
  %extend {
    float pin_joint_get_param(const RID& joint, int param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("pin_joint_get_param", joint, param);
    }
  }
  %extend {
    void pin_joint_set_local_A(const RID& joint, const Vector3& local_A) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("pin_joint_set_local_A", joint, local_A);
    }
  }
  %extend {
    Vector3 pin_joint_get_local_A(const RID& joint) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("pin_joint_get_local_A", joint);
    }
  }
  %extend {
    void pin_joint_set_local_B(const RID& joint, const Vector3& local_B) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("pin_joint_set_local_B", joint, local_B);
    }
  }
  %extend {
    Vector3 pin_joint_get_local_B(const RID& joint) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("pin_joint_get_local_B", joint);
    }
  }
  %extend {
    RID joint_create_hinge(const RID& body_A, const Transform& hinge_A, const RID& body_B, const Transform& hinge_B) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("joint_create_hinge", body_A, hinge_A, body_B, hinge_B);
    }
  }
  %extend {
    void hinge_joint_set_param(const RID& joint, int param, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("hinge_joint_set_param", joint, param, value);
    }
  }
  %extend {
    float hinge_joint_get_param(const RID& joint, int param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("hinge_joint_get_param", joint, param);
    }
  }
  %extend {
    void hinge_joint_set_flag(const RID& joint, int flag, bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("hinge_joint_set_flag", joint, flag, enabled);
    }
  }
  %extend {
    bool hinge_joint_get_flag(const RID& joint, int flag) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("hinge_joint_get_flag", joint, flag);
    }
  }
  %extend {
    RID joint_create_slider(const RID& body_A, const Transform& local_ref_A, const RID& body_B, const Transform& local_ref_B) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("joint_create_slider", body_A, local_ref_A, body_B, local_ref_B);
    }
  }
  %extend {
    void slider_joint_set_param(const RID& joint, int param, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("slider_joint_set_param", joint, param, value);
    }
  }
  %extend {
    float slider_joint_get_param(const RID& joint, int param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("slider_joint_get_param", joint, param);
    }
  }
  %extend {
    RID joint_create_cone_twist(const RID& body_A, const Transform& local_ref_A, const RID& body_B, const Transform& local_ref_B) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("joint_create_cone_twist", body_A, local_ref_A, body_B, local_ref_B);
    }
  }
  %extend {
    void cone_twist_joint_set_param(const RID& joint, int param, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("cone_twist_joint_set_param", joint, param, value);
    }
  }
  %extend {
    float cone_twist_joint_get_param(const RID& joint, int param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("cone_twist_joint_get_param", joint, param);
    }
  }
  %extend {
    int joint_get_type(const RID& joint) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("joint_get_type", joint);
    }
  }
  %extend {
    void joint_set_solver_priority(const RID& joint, int priority) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("joint_set_solver_priority", joint, priority);
    }
  }
  %extend {
    int joint_get_solver_priority(const RID& joint) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("joint_get_solver_priority", joint);
    }
  }
  %extend {
    RID joint_create_generic_6dof(const RID& body_A, const Transform& local_ref_A, const RID& body_B, const Transform& local_ref_B) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("joint_create_generic_6dof", body_A, local_ref_A, body_B, local_ref_B);
    }
  }
  %extend {
    void generic_6dof_joint_set_param(const RID& joint, int axis, int param, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("generic_6dof_joint_set_param", joint, axis, param, value);
    }
  }
  %extend {
    float generic_6dof_joint_get_param(const RID& joint, int axis, int param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("generic_6dof_joint_get_param", joint, axis, param);
    }
  }
  %extend {
    void generic_6dof_joint_set_flag(const RID& joint, int axis, int flag, bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("generic_6dof_joint_set_flag", joint, axis, flag, enable);
    }
  }
  %extend {
    bool generic_6dof_joint_get_flag(const RID& joint, int axis, int flag) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("generic_6dof_joint_get_flag", joint, axis, flag);
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
    static PhysicsServer* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("PhysicsServer")->cast_to<PhysicsServer>(); }
  }

};
