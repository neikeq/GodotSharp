/* mPolygonPathFinder.i */
%module mPolygonPathFinder

template<class PolygonPathFinder> class Ref;%template() Ref<PolygonPathFinder>;
%feature("novaluewrapper") Ref<PolygonPathFinder>;


%typemap(csbody_derived) PolygonPathFinder %{

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

%typemap(cscode) PolygonPathFinder %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) PolygonPathFinder %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PolygonPathFinder;

class PolygonPathFinder : public Resource {
public:
  PolygonPathFinder();

%extend {

void setup(const Vector2Array& points, const IntArray& connections) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PolygonPathFinder", "setup");
  const void* __args[2] = { &points, &connections };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2Array find_path(const Vector2& from, const Vector2& to) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PolygonPathFinder", "find_path");
  const void* __args[2] = { &from, &to };
  Vector2Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2Array get_intersections(const Vector2& from, const Vector2& to) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PolygonPathFinder", "get_intersections");
  const void* __args[2] = { &from, &to };
  Vector2Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 get_closest_point(const Vector2& point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PolygonPathFinder", "get_closest_point");
  const void* __args[1] = { &point };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_point_inside(const Vector2& point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PolygonPathFinder", "is_point_inside");
  const void* __args[1] = { &point };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_point_penalty(int idx, float penalty) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PolygonPathFinder", "set_point_penalty");
  const void* __args[2] = { &idx, &penalty };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_point_penalty(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PolygonPathFinder", "get_point_penalty");
  const void* __args[1] = { &idx };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Rect2 get_bounds() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PolygonPathFinder", "get_bounds");
  Rect2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~PolygonPathFinder() {
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
