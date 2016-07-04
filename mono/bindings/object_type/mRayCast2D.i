/* mRayCast2D.i */
%module mRayCast2D


%typemap(csbody_derived) RayCast2D %{

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

%typemap(cscode) RayCast2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) RayCast2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor RayCast2D;

class RayCast2D : public Node2D {
public:
  RayCast2D();

%extend {

void set_enabled(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RayCast2D", "set_enabled");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RayCast2D", "is_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_cast_to(const Vector2& local_point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RayCast2D", "set_cast_to");
  const void* __args[1] = { &local_point };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_cast_to() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RayCast2D", "get_cast_to");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_colliding() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RayCast2D", "is_colliding");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Object* get_collider() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RayCast2D", "get_collider");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_collider_shape() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RayCast2D", "get_collider_shape");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_collision_point() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RayCast2D", "get_collision_point");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_collision_normal() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RayCast2D", "get_collision_normal");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_exception_rid(const RID& rid) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RayCast2D", "add_exception_rid");
  const void* __args[1] = { &rid };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_exception(Object* node) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RayCast2D", "add_exception");
  const void* __args[1] = { node };
  __method_bind->ptrcall($self, __args, NULL);
}

void remove_exception_rid(const RID& rid) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RayCast2D", "remove_exception_rid");
  const void* __args[1] = { &rid };
  __method_bind->ptrcall($self, __args, NULL);
}

void remove_exception(Object* node) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RayCast2D", "remove_exception");
  const void* __args[1] = { node };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear_exceptions() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RayCast2D", "clear_exceptions");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_layer_mask(int mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RayCast2D", "set_layer_mask");
  const void* __args[1] = { &mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_layer_mask() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RayCast2D", "get_layer_mask");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_type_mask(int mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RayCast2D", "set_type_mask");
  const void* __args[1] = { &mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_type_mask() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RayCast2D", "get_type_mask");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
