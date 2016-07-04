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
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "shape_create");
  const void* __args[1] = { &type };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void shape_set_data(const RID& shape, const Variant& data) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "shape_set_data");
  const void* __args[2] = { &shape, &data };
  __method_bind->ptrcall($self, __args, NULL);
}

int shape_get_type(const RID& shape) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "shape_get_type");
  const void* __args[1] = { &shape };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void shape_get_data(const RID& shape) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "shape_get_data");
  const void* __args[1] = { &shape };
  __method_bind->ptrcall($self, __args, NULL);
}

RID space_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "space_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void space_set_active(const RID& space, bool active) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "space_set_active");
  const void* __args[2] = { &space, &active };
  __method_bind->ptrcall($self, __args, NULL);
}

bool space_is_active(const RID& space) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "space_is_active");
  const void* __args[1] = { &space };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void space_set_param(const RID& space, int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "space_set_param");
  const void* __args[3] = { &space, &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float space_get_param(const RID& space, int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "space_get_param");
  const void* __args[2] = { &space, &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

PhysicsDirectSpaceState* space_get_direct_state(const RID& space) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "space_get_direct_state");
  const void* __args[1] = { &space };
  PhysicsDirectSpaceState* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID area_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void area_set_space(const RID& area, const RID& space) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_set_space");
  const void* __args[2] = { &area, &space };
  __method_bind->ptrcall($self, __args, NULL);
}

RID area_get_space(const RID& area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_get_space");
  const void* __args[1] = { &area };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void area_set_space_override_mode(const RID& area, int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_set_space_override_mode");
  const void* __args[2] = { &area, &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int area_get_space_override_mode(const RID& area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_get_space_override_mode");
  const void* __args[1] = { &area };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void area_add_shape(const RID& area, const RID& shape, const Transform& transform = Transform()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_add_shape");
  const void* __args[3] = { &area, &shape, &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

void area_set_shape(const RID& area, int shape_idx, const RID& shape) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_set_shape");
  const void* __args[3] = { &area, &shape_idx, &shape };
  __method_bind->ptrcall($self, __args, NULL);
}

void area_set_shape_transform(const RID& area, int shape_idx, const Transform& transform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_set_shape_transform");
  const void* __args[3] = { &area, &shape_idx, &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

int area_get_shape_count(const RID& area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_get_shape_count");
  const void* __args[1] = { &area };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID area_get_shape(const RID& area, int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_get_shape");
  const void* __args[2] = { &area, &shape_idx };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Transform area_get_shape_transform(const RID& area, int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_get_shape_transform");
  const void* __args[2] = { &area, &shape_idx };
  Transform ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void area_remove_shape(const RID& area, int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_remove_shape");
  const void* __args[2] = { &area, &shape_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void area_clear_shapes(const RID& area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_clear_shapes");
  const void* __args[1] = { &area };
  __method_bind->ptrcall($self, __args, NULL);
}

void area_set_layer_mask(const RID& area, int mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_set_layer_mask");
  const void* __args[2] = { &area, &mask };
  __method_bind->ptrcall($self, __args, NULL);
}

void area_set_collision_mask(const RID& area, int mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_set_collision_mask");
  const void* __args[2] = { &area, &mask };
  __method_bind->ptrcall($self, __args, NULL);
}

void area_set_param(const RID& area, int param, const Variant& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_set_param");
  const void* __args[3] = { &area, &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void area_set_transform(const RID& area, const Transform& transform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_set_transform");
  const void* __args[2] = { &area, &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

void area_get_param(const RID& area, int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_get_param");
  const void* __args[2] = { &area, &param };
  __method_bind->ptrcall($self, __args, NULL);
}

Transform area_get_transform(const RID& area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_get_transform");
  const void* __args[1] = { &area };
  Transform ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void area_attach_object_instance_ID(const RID& area, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_attach_object_instance_ID");
  const void* __args[2] = { &area, &id };
  __method_bind->ptrcall($self, __args, NULL);
}

int area_get_object_instance_ID(const RID& area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_get_object_instance_ID");
  const void* __args[1] = { &area };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void area_set_monitor_callback(const RID& area, Object* receiver, const String& method) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_set_monitor_callback");
  const void* __args[3] = { &area, receiver, &method };
  __method_bind->ptrcall($self, __args, NULL);
}

void area_set_ray_pickable(const RID& area, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_set_ray_pickable");
  const void* __args[2] = { &area, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool area_is_ray_pickable(const RID& area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "area_is_ray_pickable");
  const void* __args[1] = { &area };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID body_create(int mode = 2, bool init_sleeping = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_create");
  const void* __args[2] = { &mode, &init_sleeping };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_space(const RID& body, const RID& space) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_set_space");
  const void* __args[2] = { &body, &space };
  __method_bind->ptrcall($self, __args, NULL);
}

RID body_get_space(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_get_space");
  const void* __args[1] = { &body };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_mode(const RID& body, int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_set_mode");
  const void* __args[2] = { &body, &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int body_get_mode(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_get_mode");
  const void* __args[1] = { &body };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_layer_mask(const RID& body, int mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_set_layer_mask");
  const void* __args[2] = { &body, &mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int body_get_layer_mask(const RID& body, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_get_layer_mask");
  const void* __args[2] = { &body, &arg1_ };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_collision_mask(const RID& body, int mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_set_collision_mask");
  const void* __args[2] = { &body, &mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int body_get_collision_mask(const RID& body, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_get_collision_mask");
  const void* __args[2] = { &body, &arg1_ };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_add_shape(const RID& body, const RID& shape, const Transform& transform = Transform()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_add_shape");
  const void* __args[3] = { &body, &shape, &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_set_shape(const RID& body, int shape_idx, const RID& shape) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_set_shape");
  const void* __args[3] = { &body, &shape_idx, &shape };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_set_shape_transform(const RID& body, int shape_idx, const Transform& transform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_set_shape_transform");
  const void* __args[3] = { &body, &shape_idx, &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

int body_get_shape_count(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_get_shape_count");
  const void* __args[1] = { &body };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID body_get_shape(const RID& body, int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_get_shape");
  const void* __args[2] = { &body, &shape_idx };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Transform body_get_shape_transform(const RID& body, int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_get_shape_transform");
  const void* __args[2] = { &body, &shape_idx };
  Transform ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_remove_shape(const RID& body, int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_remove_shape");
  const void* __args[2] = { &body, &shape_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_clear_shapes(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_clear_shapes");
  const void* __args[1] = { &body };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_attach_object_instance_ID(const RID& body, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_attach_object_instance_ID");
  const void* __args[2] = { &body, &id };
  __method_bind->ptrcall($self, __args, NULL);
}

int body_get_object_instance_ID(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_get_object_instance_ID");
  const void* __args[1] = { &body };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_enable_continuous_collision_detection(const RID& body, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_set_enable_continuous_collision_detection");
  const void* __args[2] = { &body, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool body_is_continuous_collision_detection_enabled(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_is_continuous_collision_detection_enabled");
  const void* __args[1] = { &body };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_param(const RID& body, int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_set_param");
  const void* __args[3] = { &body, &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float body_get_param(const RID& body, int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_get_param");
  const void* __args[2] = { &body, &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_state(const RID& body, int state, const Variant& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_set_state");
  const void* __args[3] = { &body, &state, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_get_state(const RID& body, int state) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_get_state");
  const void* __args[2] = { &body, &state };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_apply_impulse(const RID& body, const Vector3& pos, const Vector3& impulse) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_apply_impulse");
  const void* __args[3] = { &body, &pos, &impulse };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_set_axis_velocity(const RID& body, const Vector3& axis_velocity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_set_axis_velocity");
  const void* __args[2] = { &body, &axis_velocity };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_set_axis_lock(const RID& body, int axis) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_set_axis_lock");
  const void* __args[2] = { &body, &axis };
  __method_bind->ptrcall($self, __args, NULL);
}

int body_get_axis_lock(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_get_axis_lock");
  const void* __args[1] = { &body };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_add_collision_exception(const RID& body, const RID& excepted_body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_add_collision_exception");
  const void* __args[2] = { &body, &excepted_body };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_remove_collision_exception(const RID& body, const RID& excepted_body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_remove_collision_exception");
  const void* __args[2] = { &body, &excepted_body };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_set_max_contacts_reported(const RID& body, int amount) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_set_max_contacts_reported");
  const void* __args[2] = { &body, &amount };
  __method_bind->ptrcall($self, __args, NULL);
}

int body_get_max_contacts_reported(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_get_max_contacts_reported");
  const void* __args[1] = { &body };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_omit_force_integration(const RID& body, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_set_omit_force_integration");
  const void* __args[2] = { &body, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool body_is_omitting_force_integration(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_is_omitting_force_integration");
  const void* __args[1] = { &body };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_force_integration_callback(const RID& body, Object* receiver, const String& method, const Variant& userdata = Variant()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_set_force_integration_callback");
  const void* __args[4] = { &body, receiver, &method, &userdata };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_set_ray_pickable(const RID& body, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_set_ray_pickable");
  const void* __args[2] = { &body, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool body_is_ray_pickable(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "body_is_ray_pickable");
  const void* __args[1] = { &body };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID joint_create_pin(const RID& body_A, const Vector3& local_A, const RID& body_B, const Vector3& local_B) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "joint_create_pin");
  const void* __args[4] = { &body_A, &local_A, &body_B, &local_B };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void pin_joint_set_param(const RID& joint, int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "pin_joint_set_param");
  const void* __args[3] = { &joint, &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float pin_joint_get_param(const RID& joint, int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "pin_joint_get_param");
  const void* __args[2] = { &joint, &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void pin_joint_set_local_A(const RID& joint, const Vector3& local_A) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "pin_joint_set_local_A");
  const void* __args[2] = { &joint, &local_A };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 pin_joint_get_local_A(const RID& joint) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "pin_joint_get_local_A");
  const void* __args[1] = { &joint };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void pin_joint_set_local_B(const RID& joint, const Vector3& local_B) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "pin_joint_set_local_B");
  const void* __args[2] = { &joint, &local_B };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 pin_joint_get_local_B(const RID& joint) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "pin_joint_get_local_B");
  const void* __args[1] = { &joint };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID joint_create_hinge(const RID& body_A, const Transform& hinge_A, const RID& body_B, const Transform& hinge_B) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "joint_create_hinge");
  const void* __args[4] = { &body_A, &hinge_A, &body_B, &hinge_B };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void hinge_joint_set_param(const RID& joint, int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "hinge_joint_set_param");
  const void* __args[3] = { &joint, &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float hinge_joint_get_param(const RID& joint, int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "hinge_joint_get_param");
  const void* __args[2] = { &joint, &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void hinge_joint_set_flag(const RID& joint, int flag, bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "hinge_joint_set_flag");
  const void* __args[3] = { &joint, &flag, &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool hinge_joint_get_flag(const RID& joint, int flag) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "hinge_joint_get_flag");
  const void* __args[2] = { &joint, &flag };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID joint_create_slider(const RID& body_A, const Transform& local_ref_A, const RID& body_B, const Transform& local_ref_B) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "joint_create_slider");
  const void* __args[4] = { &body_A, &local_ref_A, &body_B, &local_ref_B };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void slider_joint_set_param(const RID& joint, int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "slider_joint_set_param");
  const void* __args[3] = { &joint, &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float slider_joint_get_param(const RID& joint, int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "slider_joint_get_param");
  const void* __args[2] = { &joint, &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID joint_create_cone_twist(const RID& body_A, const Transform& local_ref_A, const RID& body_B, const Transform& local_ref_B) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "joint_create_cone_twist");
  const void* __args[4] = { &body_A, &local_ref_A, &body_B, &local_ref_B };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void cone_twist_joint_set_param(const RID& joint, int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "cone_twist_joint_set_param");
  const void* __args[3] = { &joint, &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float cone_twist_joint_get_param(const RID& joint, int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "cone_twist_joint_get_param");
  const void* __args[2] = { &joint, &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int joint_get_type(const RID& joint) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "joint_get_type");
  const void* __args[1] = { &joint };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void joint_set_solver_priority(const RID& joint, int priority) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "joint_set_solver_priority");
  const void* __args[2] = { &joint, &priority };
  __method_bind->ptrcall($self, __args, NULL);
}

int joint_get_solver_priority(const RID& joint) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "joint_get_solver_priority");
  const void* __args[1] = { &joint };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID joint_create_generic_6dof(const RID& body_A, const Transform& local_ref_A, const RID& body_B, const Transform& local_ref_B) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "joint_create_generic_6dof");
  const void* __args[4] = { &body_A, &local_ref_A, &body_B, &local_ref_B };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void generic_6dof_joint_set_param(const RID& joint, int axis, int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "generic_6dof_joint_set_param");
  const void* __args[4] = { &joint, &axis, &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float generic_6dof_joint_get_param(const RID& joint, int axis, int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "generic_6dof_joint_get_param");
  const void* __args[3] = { &joint, &axis, &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void generic_6dof_joint_set_flag(const RID& joint, int axis, int flag, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "generic_6dof_joint_set_flag");
  const void* __args[4] = { &joint, &axis, &flag, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool generic_6dof_joint_get_flag(const RID& joint, int axis, int flag) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "generic_6dof_joint_get_flag");
  const void* __args[3] = { &joint, &axis, &flag };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void free_rid(const RID& rid) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "free_rid");
  const void* __args[1] = { &rid };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_active(bool active) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "set_active");
  const void* __args[1] = { &active };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_process_info(int process_info) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsServer", "get_process_info");
  const void* __args[1] = { &process_info };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

static PhysicsServer* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("PhysicsServer")->cast_to<PhysicsServer>(); }

}


};
