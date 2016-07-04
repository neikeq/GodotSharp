/* mNavigationMesh.i */
%module mNavigationMesh

template<class NavigationMesh> class Ref;%template() Ref<NavigationMesh>;
%feature("novaluewrapper") Ref<NavigationMesh>;


%typemap(csbody_derived) NavigationMesh %{

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

%typemap(cscode) NavigationMesh %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) NavigationMesh %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor NavigationMesh;

class NavigationMesh : public Resource {
public:
  NavigationMesh();

%extend {

void set_vertices(const Vector3Array& vertices) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationMesh", "set_vertices");
  const void* __args[1] = { &vertices };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3Array get_vertices() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationMesh", "get_vertices");
  Vector3Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_polygon(const IntArray& polygon) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationMesh", "add_polygon");
  const void* __args[1] = { &polygon };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_polygon_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationMesh", "get_polygon_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

IntArray get_polygon(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationMesh", "get_polygon");
  const void* __args[1] = { &idx };
  IntArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void clear_polygons() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationMesh", "clear_polygons");
  __method_bind->ptrcall($self, NULL, NULL);
}

~NavigationMesh() {
  if ($self->get_script_instance()) {
    CSharpInstance *cs_instance = dynamic_cast<CSharpInstance*>($self->get_script_instance());
    if (cs_instance) {
      cs_instance->mono_object_disposed();
      return;
    }
  }
  if ($self->unreference()) {
    memdelete($self);
  }
}

}


};
