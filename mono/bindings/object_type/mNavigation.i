/* mNavigation.i */
%module mNavigation


%typemap(csbody_derived) Navigation %{

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

%typemap(cscode) Navigation %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Navigation %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Navigation;

class Navigation : public Spatial {
public:
  Navigation();

%extend {

int navmesh_create(NavigationMesh* mesh, const Transform& xform, Object* owner = NULL) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Navigation", "navmesh_create");
  const void* __args[3] = { mesh, &xform, owner };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void navmesh_set_transform(int id, const Transform& xform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Navigation", "navmesh_set_transform");
  const void* __args[2] = { &id, &xform };
  __method_bind->ptrcall($self, __args, NULL);
}

void navmesh_remove(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Navigation", "navmesh_remove");
  const void* __args[1] = { &id };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3Array get_simple_path(const Vector3& start, const Vector3& end, bool optimize = true) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Navigation", "get_simple_path");
  const void* __args[3] = { &start, &end, &optimize };
  Vector3Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector3 get_closest_point_to_segment(const Vector3& start, const Vector3& end, bool use_collision = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Navigation", "get_closest_point_to_segment");
  const void* __args[3] = { &start, &end, &use_collision };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector3 get_closest_point(const Vector3& to_point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Navigation", "get_closest_point");
  const void* __args[1] = { &to_point };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector3 get_closest_point_normal(const Vector3& to_point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Navigation", "get_closest_point_normal");
  const void* __args[1] = { &to_point };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Object* get_closest_point_owner(const Vector3& to_point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Navigation", "get_closest_point_owner");
  const void* __args[1] = { &to_point };
  Object* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_up_vector(const Vector3& up) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Navigation", "set_up_vector");
  const void* __args[1] = { &up };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_up_vector() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Navigation", "get_up_vector");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
