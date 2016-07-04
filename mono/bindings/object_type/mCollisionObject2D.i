/* mCollisionObject2D.i */
%module mCollisionObject2D

%nodefaultctor CollisionObject2D;

%typemap(csbody_derived) CollisionObject2D %{

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

%typemap(cscode) CollisionObject2D %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) CollisionObject2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CollisionObject2D;

class CollisionObject2D : public Node2D {
public:

%extend {

void _input_event(Object* viewport, const InputEvent& event, int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject2D", "_input_event");
  const void* __args[3] = { viewport, &event, &shape_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_shape(Shape2D* shape, const Matrix32& transform = Matrix32()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject2D", "add_shape");
  const void* __args[2] = { shape, &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_shape_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject2D", "get_shape_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_shape(int shape_idx, Shape* shape) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject2D", "set_shape");
  const void* __args[2] = { &shape_idx, shape };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_shape_transform(int shape_idx, const Matrix32& transform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject2D", "set_shape_transform");
  const void* __args[2] = { &shape_idx, &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_shape_as_trigger(int shape_idx, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject2D", "set_shape_as_trigger");
  const void* __args[2] = { &shape_idx, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Shape2D> get_shape(int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject2D", "get_shape");
  const void* __args[1] = { &shape_idx };
  Ref<Shape2D> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Matrix32 get_shape_transform(int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject2D", "get_shape_transform");
  const void* __args[1] = { &shape_idx };
  Matrix32 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_shape_set_as_trigger(int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject2D", "is_shape_set_as_trigger");
  const void* __args[1] = { &shape_idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void remove_shape(int shape_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject2D", "remove_shape");
  const void* __args[1] = { &shape_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear_shapes() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject2D", "clear_shapes");
  __method_bind->ptrcall($self, NULL, NULL);
}

RID get_rid() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject2D", "get_rid");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_pickable(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject2D", "set_pickable");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_pickable() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionObject2D", "is_pickable");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
