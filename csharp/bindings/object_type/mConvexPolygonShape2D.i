/* mConvexPolygonShape2D.i */
%module mConvexPolygonShape2D

template<class ConvexPolygonShape2D> class Ref;%template() Ref<ConvexPolygonShape2D>;
%feature("novaluewrapper") Ref<ConvexPolygonShape2D>;


%typemap(csbody_derived) ConvexPolygonShape2D %{

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

%typemap(cscode) ConvexPolygonShape2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ConvexPolygonShape2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ConvexPolygonShape2D;

class ConvexPolygonShape2D : public Shape2D {
public:
  ConvexPolygonShape2D();

%extend {

void set_point_cloud(const Vector2Array& point_cloud) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ConvexPolygonShape2D", "set_point_cloud");
  const void* __args[1] = { &point_cloud };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_points(const Vector2Array& points) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ConvexPolygonShape2D", "set_points");
  const void* __args[1] = { &points };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2Array get_points() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ConvexPolygonShape2D", "get_points");
  Vector2Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~ConvexPolygonShape2D() {
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
