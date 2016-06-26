/* mNavigationPolygonInstance.i */
%module mNavigationPolygonInstance


%typemap(csbody_derived) NavigationPolygonInstance %{

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

%typemap(cscode) NavigationPolygonInstance %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) NavigationPolygonInstance %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor NavigationPolygonInstance;

class NavigationPolygonInstance : public Node2D {
public:
  NavigationPolygonInstance();

%extend {

void set_navigation_polygon(NavigationPolygon* navpoly) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationPolygonInstance", "set_navigation_polygon");
  const void* __args[1] = { navpoly };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<NavigationPolygon> get_navigation_polygon() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationPolygonInstance", "get_navigation_polygon");
  Ref<NavigationPolygon> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_enabled(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationPolygonInstance", "set_enabled");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationPolygonInstance", "is_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
