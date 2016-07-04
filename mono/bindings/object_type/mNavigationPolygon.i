/* mNavigationPolygon.i */
%module mNavigationPolygon

template<class NavigationPolygon> class Ref;%template() Ref<NavigationPolygon>;
%feature("novaluewrapper") Ref<NavigationPolygon>;


%typemap(csbody_derived) NavigationPolygon %{

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

%typemap(cscode) NavigationPolygon %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) NavigationPolygon %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor NavigationPolygon;

class NavigationPolygon : public Resource {
public:
  NavigationPolygon();

%extend {

void set_vertices(const Vector2Array& vertices) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationPolygon", "set_vertices");
  const void* __args[1] = { &vertices };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2Array get_vertices() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationPolygon", "get_vertices");
  Vector2Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_polygon(const IntArray& polygon) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationPolygon", "add_polygon");
  const void* __args[1] = { &polygon };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_polygon_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationPolygon", "get_polygon_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

IntArray get_polygon(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationPolygon", "get_polygon");
  const void* __args[1] = { &idx };
  IntArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void clear_polygons() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationPolygon", "clear_polygons");
  __method_bind->ptrcall($self, NULL, NULL);
}

void add_outline(const Vector2Array& outline) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationPolygon", "add_outline");
  const void* __args[1] = { &outline };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_outline_at_index(const Vector2Array& outline, int index) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationPolygon", "add_outline_at_index");
  const void* __args[2] = { &outline, &index };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_outline_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationPolygon", "get_outline_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_outline(int idx, const Vector2Array& outline) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationPolygon", "set_outline");
  const void* __args[2] = { &idx, &outline };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2Array get_outline(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationPolygon", "get_outline");
  const void* __args[1] = { &idx };
  Vector2Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void remove_outline(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationPolygon", "remove_outline");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear_outlines() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationPolygon", "clear_outlines");
  __method_bind->ptrcall($self, NULL, NULL);
}

void make_polygons_from_outlines() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("NavigationPolygon", "make_polygons_from_outlines");
  __method_bind->ptrcall($self, NULL, NULL);
}

~NavigationPolygon() {
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
