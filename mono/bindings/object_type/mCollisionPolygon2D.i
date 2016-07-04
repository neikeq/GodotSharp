/* mCollisionPolygon2D.i */
%module mCollisionPolygon2D


%typemap(csbody_derived) CollisionPolygon2D %{

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

%typemap(cscode) CollisionPolygon2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) CollisionPolygon2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CollisionPolygon2D;

class CollisionPolygon2D : public Node2D {
public:
  CollisionPolygon2D();

%extend {

void set_polygon(const Vector2Array& polygon) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionPolygon2D", "set_polygon");
  const void* __args[1] = { &polygon };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2Array get_polygon() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionPolygon2D", "get_polygon");
  Vector2Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_build_mode(int build_mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionPolygon2D", "set_build_mode");
  const void* __args[1] = { &build_mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_build_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionPolygon2D", "get_build_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_trigger(bool trigger) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionPolygon2D", "set_trigger");
  const void* __args[1] = { &trigger };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_trigger() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionPolygon2D", "is_trigger");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_collision_object_first_shape() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionPolygon2D", "get_collision_object_first_shape");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_collision_object_last_shape() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionPolygon2D", "get_collision_object_last_shape");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
