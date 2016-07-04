/* mNavigation2D.i */
%module mNavigation2D


%typemap(csbody_derived) Navigation2D %{

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

%typemap(cscode) Navigation2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Navigation2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Navigation2D;

class Navigation2D : public Node2D {
public:
  Navigation2D();

%extend {

int navpoly_create(NavigationPolygon* mesh, const Matrix32& xform, Object* owner = NULL) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Navigation2D", "navpoly_create");
  const void* __args[3] = { mesh, &xform, owner };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void navpoly_set_transform(int id, const Matrix32& xform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Navigation2D", "navpoly_set_transform");
  const void* __args[2] = { &id, &xform };
  __method_bind->ptrcall($self, __args, NULL);
}

void navpoly_remove(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Navigation2D", "navpoly_remove");
  const void* __args[1] = { &id };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2Array get_simple_path(const Vector2& start, const Vector2& end, bool optimize = true) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Navigation2D", "get_simple_path");
  const void* __args[3] = { &start, &end, &optimize };
  Vector2Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 get_closest_point(const Vector2& to_point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Navigation2D", "get_closest_point");
  const void* __args[1] = { &to_point };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Object* get_closest_point_owner(const Vector2& to_point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Navigation2D", "get_closest_point_owner");
  const void* __args[1] = { &to_point };
  Object* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

}


};
