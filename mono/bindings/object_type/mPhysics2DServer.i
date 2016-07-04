/* mPhysics2DServer.i */
%module mPhysics2DServer

%csmethodmodifiers Physics2DServer::Physics2DServer "private"
%csmethodmodifiers Physics2DServer::SingletonGetInstance "private"
%nodefaultctor Physics2DServer;

%typemap(csbody_derived) Physics2DServer %{
  private static $csclassname instance;
  public static readonly int SPACE_PARAM_CONTACT_RECYCLE_RADIUS = 0;
  public static readonly int SPACE_PARAM_CONTACT_MAX_SEPARATION = 1;
  public static readonly int SPACE_PARAM_BODY_MAX_ALLOWED_PENETRATION = 2;
  public static readonly int SPACE_PARAM_BODY_LINEAR_VELOCITY_SLEEP_TRESHOLD = 3;
  public static readonly int SPACE_PARAM_BODY_ANGULAR_VELOCITY_SLEEP_TRESHOLD = 4;
  public static readonly int SPACE_PARAM_BODY_TIME_TO_SLEEP = 5;
  public static readonly int SPACE_PARAM_CONSTRAINT_DEFAULT_BIAS = 6;
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
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Physics2DServer;

class Physics2DServer : public Object {
public:

%extend {

RID shape_create(int type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "shape_create");
  const void* __args[1] = { &type };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void shape_set_data(const RID& shape, const Variant& data) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "shape_set_data");
  const void* __args[2] = { &shape, &data };
  __method_bind->ptrcall($self, __args, NULL);
}

int shape_get_type(const RID& shape) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "shape_get_type");
  const void* __args[1] = { &shape };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void shape_get_data(const RID& shape) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "shape_get_data");
  const void* __args[1] = { &shape };
  __method_bind->ptrcall($self, __args, NULL);
}

RID space_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "space_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void space_set_active(const RID& space, bool active) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "space_set_active");
  const void* __args[2] = { &space, &active };
  __method_bind->ptrcall($self, __args, NULL);
}

bool space_is_active(const RID& space) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "space_is_active");
  const void* __args[1] = { &space };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void space_set_param(const RID& space, int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "space_set_param");
  const void* __args[3] = { &space, &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float space_get_param(const RID& space, int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "space_get_param");
  const void* __args[2] = { &space, &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Physics2DDirectSpaceState* space_get_direct_state(const RID& space) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "space_get_direct_state");
  const void* __args[1] = { &space };
  Physics2DDirectSpaceState* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID area_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void area_set_space(const RID& area, const RID& space) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_set_space");
  const void* __args[2] = { &area, &space };
  __method_bind->ptrcall($self, __args, NULL);
}

RID area_get_space(const RID& area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_get_space");
  const void* __args[1] = { &area };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void area_set_space_override_mode(const RID& area, int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_set_space_override_mode");
  const void* __args[2] = { &area, &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int area_get_space_override_mode(const RID& area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_get_space_override_mode");
  const void* __args[1] = { &area };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void area_add_shape(const RID& area, const RID& shape, const Matrix32& transform = Matrix32()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_add_shape");
  const void* __args[3] = { &area, &shape, &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

void area_set_shape(const RID& area, int shape_idx, const RID& shape) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_set_shape");
  const void* __args[3] = { &area, &shape_idx, &shape };
  __method_bind->ptrcall($self, __args, NULL);
}

void area_set_shape_transform(const RID& area, int shape_idx, const Matrix32& transform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_set_shape_transform");
  const void* __args[3] = { &area, &shape_idx, &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

int area_get_shape_count(const RID& area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_get_shape_count");
  const void* __args[1] = { &area };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID area_get_shape(const RID& area, int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_get_shape");
  const void* __args[2] = { &area, &shape_idx };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Matrix32 area_get_shape_transform(const RID& area, int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_get_shape_transform");
  const void* __args[2] = { &area, &shape_idx };
  Matrix32 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void area_remove_shape(const RID& area, int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_remove_shape");
  const void* __args[2] = { &area, &shape_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void area_clear_shapes(const RID& area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_clear_shapes");
  const void* __args[1] = { &area };
  __method_bind->ptrcall($self, __args, NULL);
}

void area_set_layer_mask(const RID& area, int mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_set_layer_mask");
  const void* __args[2] = { &area, &mask };
  __method_bind->ptrcall($self, __args, NULL);
}

void area_set_collision_mask(const RID& area, int mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_set_collision_mask");
  const void* __args[2] = { &area, &mask };
  __method_bind->ptrcall($self, __args, NULL);
}

void area_set_param(const RID& area, int param, const Variant& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_set_param");
  const void* __args[3] = { &area, &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void area_set_transform(const RID& area, const Matrix32& transform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_set_transform");
  const void* __args[2] = { &area, &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

void area_get_param(const RID& area, int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_get_param");
  const void* __args[2] = { &area, &param };
  __method_bind->ptrcall($self, __args, NULL);
}

Matrix32 area_get_transform(const RID& area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_get_transform");
  const void* __args[1] = { &area };
  Matrix32 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void area_attach_object_instance_ID(const RID& area, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_attach_object_instance_ID");
  const void* __args[2] = { &area, &id };
  __method_bind->ptrcall($self, __args, NULL);
}

int area_get_object_instance_ID(const RID& area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_get_object_instance_ID");
  const void* __args[1] = { &area };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void area_set_monitor_callback(const RID& area, Object* receiver, const String& method) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "area_set_monitor_callback");
  const void* __args[3] = { &area, receiver, &method };
  __method_bind->ptrcall($self, __args, NULL);
}

RID body_create(int mode = 2, bool init_sleeping = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_create");
  const void* __args[2] = { &mode, &init_sleeping };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_space(const RID& body, const RID& space) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_set_space");
  const void* __args[2] = { &body, &space };
  __method_bind->ptrcall($self, __args, NULL);
}

RID body_get_space(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_get_space");
  const void* __args[1] = { &body };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_mode(const RID& body, int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_set_mode");
  const void* __args[2] = { &body, &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int body_get_mode(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_get_mode");
  const void* __args[1] = { &body };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_add_shape(const RID& body, const RID& shape, const Matrix32& transform = Matrix32()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_add_shape");
  const void* __args[3] = { &body, &shape, &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_set_shape(const RID& body, int shape_idx, const RID& shape) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_set_shape");
  const void* __args[3] = { &body, &shape_idx, &shape };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_set_shape_transform(const RID& body, int shape_idx, const Matrix32& transform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_set_shape_transform");
  const void* __args[3] = { &body, &shape_idx, &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_set_shape_metadata(const RID& body, int shape_idx, const Variant& metadata) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_set_shape_metadata");
  const void* __args[3] = { &body, &shape_idx, &metadata };
  __method_bind->ptrcall($self, __args, NULL);
}

int body_get_shape_count(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_get_shape_count");
  const void* __args[1] = { &body };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID body_get_shape(const RID& body, int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_get_shape");
  const void* __args[2] = { &body, &shape_idx };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Matrix32 body_get_shape_transform(const RID& body, int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_get_shape_transform");
  const void* __args[2] = { &body, &shape_idx };
  Matrix32 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_get_shape_metadata(const RID& body, int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_get_shape_metadata");
  const void* __args[2] = { &body, &shape_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_remove_shape(const RID& body, int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_remove_shape");
  const void* __args[2] = { &body, &shape_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_clear_shapes(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_clear_shapes");
  const void* __args[1] = { &body };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_set_shape_as_trigger(const RID& body, int shape_idx, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_set_shape_as_trigger");
  const void* __args[3] = { &body, &shape_idx, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool body_is_shape_set_as_trigger(const RID& body, int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_is_shape_set_as_trigger");
  const void* __args[2] = { &body, &shape_idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_attach_object_instance_ID(const RID& body, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_attach_object_instance_ID");
  const void* __args[2] = { &body, &id };
  __method_bind->ptrcall($self, __args, NULL);
}

int body_get_object_instance_ID(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_get_object_instance_ID");
  const void* __args[1] = { &body };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_continuous_collision_detection_mode(const RID& body, int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_set_continuous_collision_detection_mode");
  const void* __args[2] = { &body, &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int body_get_continuous_collision_detection_mode(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_get_continuous_collision_detection_mode");
  const void* __args[1] = { &body };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_layer_mask(const RID& body, int mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_set_layer_mask");
  const void* __args[2] = { &body, &mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int body_get_layer_mask(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_get_layer_mask");
  const void* __args[1] = { &body };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_collision_mask(const RID& body, int mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_set_collision_mask");
  const void* __args[2] = { &body, &mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int body_get_collision_mask(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_get_collision_mask");
  const void* __args[1] = { &body };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_param(const RID& body, int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_set_param");
  const void* __args[3] = { &body, &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float body_get_param(const RID& body, int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_get_param");
  const void* __args[2] = { &body, &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_state(const RID& body, int state, const Variant& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_set_state");
  const void* __args[3] = { &body, &state, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_get_state(const RID& body, int state) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_get_state");
  const void* __args[2] = { &body, &state };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_apply_impulse(const RID& body, const Vector2& pos, const Vector2& impulse) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_apply_impulse");
  const void* __args[3] = { &body, &pos, &impulse };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_add_force(const RID& body, const Vector2& offset, const Vector2& force) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_add_force");
  const void* __args[3] = { &body, &offset, &force };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_set_axis_velocity(const RID& body, const Vector2& axis_velocity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_set_axis_velocity");
  const void* __args[2] = { &body, &axis_velocity };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_add_collision_exception(const RID& body, const RID& excepted_body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_add_collision_exception");
  const void* __args[2] = { &body, &excepted_body };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_remove_collision_exception(const RID& body, const RID& excepted_body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_remove_collision_exception");
  const void* __args[2] = { &body, &excepted_body };
  __method_bind->ptrcall($self, __args, NULL);
}

void body_set_max_contacts_reported(const RID& body, int amount) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_set_max_contacts_reported");
  const void* __args[2] = { &body, &amount };
  __method_bind->ptrcall($self, __args, NULL);
}

int body_get_max_contacts_reported(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_get_max_contacts_reported");
  const void* __args[1] = { &body };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_one_way_collision_direction(const RID& body, const Vector2& normal) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_set_one_way_collision_direction");
  const void* __args[2] = { &body, &normal };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 body_get_one_way_collision_direction(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_get_one_way_collision_direction");
  const void* __args[1] = { &body };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_one_way_collision_max_depth(const RID& body, float depth) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_set_one_way_collision_max_depth");
  const void* __args[2] = { &body, &depth };
  __method_bind->ptrcall($self, __args, NULL);
}

float body_get_one_way_collision_max_depth(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_get_one_way_collision_max_depth");
  const void* __args[1] = { &body };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_omit_force_integration(const RID& body, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_set_omit_force_integration");
  const void* __args[2] = { &body, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool body_is_omitting_force_integration(const RID& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_is_omitting_force_integration");
  const void* __args[1] = { &body };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void body_set_force_integration_callback(const RID& body, Object* receiver, const String& method, const Variant& userdata = Variant()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_set_force_integration_callback");
  const void* __args[4] = { &body, receiver, &method, &userdata };
  __method_bind->ptrcall($self, __args, NULL);
}

bool body_test_motion(const RID& body, const Vector2& motion, float margin = 0.08, Physics2DTestMotionResult* result = NULL) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "body_test_motion");
  const void* __args[4] = { &body, &motion, &margin, result };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void joint_set_param(const RID& joint, int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "joint_set_param");
  const void* __args[3] = { &joint, &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float joint_get_param(const RID& joint, int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "joint_get_param");
  const void* __args[2] = { &joint, &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID pin_joint_create(const Vector2& anchor, const RID& body_a, const RID& body_b = RID()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "pin_joint_create");
  const void* __args[3] = { &anchor, &body_a, &body_b };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID groove_joint_create(const Vector2& groove1_a, const Vector2& groove2_a, const Vector2& anchor_b, const RID& body_a = RID(), const RID& body_b = RID()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "groove_joint_create");
  const void* __args[5] = { &groove1_a, &groove2_a, &anchor_b, &body_a, &body_b };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID damped_spring_joint_create(const Vector2& anchor_a, const Vector2& anchor_b, const RID& body_a, const RID& body_b = RID()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "damped_spring_joint_create");
  const void* __args[4] = { &anchor_a, &anchor_b, &body_a, &body_b };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void damped_string_joint_set_param(const RID& joint, int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "damped_string_joint_set_param");
  const void* __args[3] = { &joint, &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float damped_string_joint_get_param(const RID& joint, int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "damped_string_joint_get_param");
  const void* __args[2] = { &joint, &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int joint_get_type(const RID& joint) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "joint_get_type");
  const void* __args[1] = { &joint };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void free_rid(const RID& rid) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "free_rid");
  const void* __args[1] = { &rid };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_active(bool active) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "set_active");
  const void* __args[1] = { &active };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_process_info(int process_info) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DServer", "get_process_info");
  const void* __args[1] = { &process_info };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

static Physics2DServer* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("Physics2DServer")->cast_to<Physics2DServer>(); }

}


};
