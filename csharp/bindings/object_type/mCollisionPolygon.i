/* mCollisionPolygon.i */
%module mCollisionPolygon


%typemap(csbody_derived) CollisionPolygon %{

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

%typemap(cscode) CollisionPolygon %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) CollisionPolygon %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CollisionPolygon;

class CollisionPolygon : public Spatial {
public:
  CollisionPolygon();

%extend {

void set_build_mode(int build_mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionPolygon", "set_build_mode");
  const void* __args[1] = { &build_mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_build_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionPolygon", "get_build_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_depth(float depth) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionPolygon", "set_depth");
  const void* __args[1] = { &depth };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_depth() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionPolygon", "get_depth");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_polygon(const Vector2Array& polygon) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionPolygon", "set_polygon");
  const void* __args[1] = { &polygon };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2Array get_polygon() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionPolygon", "get_polygon");
  Vector2Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_collision_object_first_shape() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionPolygon", "get_collision_object_first_shape");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_collision_object_last_shape() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionPolygon", "get_collision_object_last_shape");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
