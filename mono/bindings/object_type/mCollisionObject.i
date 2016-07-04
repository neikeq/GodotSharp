/* mCollisionObject.i */
%module mCollisionObject

%nodefaultctor CollisionObject;

%typemap(csbody_derived) CollisionObject %{

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

%typemap(cscode) CollisionObject %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) CollisionObject %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CollisionObject;

class CollisionObject : public Spatial {
public:

%extend {

void _input_event(Object* camera, const InputEvent& event, const Vector3& click_pos, const Vector3& click_normal, int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject", "_input_event");
  const void* __args[5] = { camera, &event, &click_pos, &click_normal, &shape_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_shape(Shape* shape, const Transform& transform = Transform()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject", "add_shape");
  const void* __args[2] = { shape, &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_shape_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject", "get_shape_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_shape(int shape_idx, Shape* shape) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject", "set_shape");
  const void* __args[2] = { &shape_idx, shape };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_shape_transform(int shape_idx, const Transform& transform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject", "set_shape_transform");
  const void* __args[2] = { &shape_idx, &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_shape_as_trigger(int shape_idx, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject", "set_shape_as_trigger");
  const void* __args[2] = { &shape_idx, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_shape_set_as_trigger(int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject", "is_shape_set_as_trigger");
  const void* __args[1] = { &shape_idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Ref<Shape> get_shape(int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject", "get_shape");
  const void* __args[1] = { &shape_idx };
  Ref<Shape> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Transform get_shape_transform(int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject", "get_shape_transform");
  const void* __args[1] = { &shape_idx };
  Transform ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void remove_shape(int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject", "remove_shape");
  const void* __args[1] = { &shape_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear_shapes() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject", "clear_shapes");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_ray_pickable(bool ray_pickable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject", "set_ray_pickable");
  const void* __args[1] = { &ray_pickable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_ray_pickable() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject", "is_ray_pickable");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_capture_input_on_drag(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject", "set_capture_input_on_drag");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_capture_input_on_drag() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject", "get_capture_input_on_drag");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID get_rid() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject", "get_rid");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
