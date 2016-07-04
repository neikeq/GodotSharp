/* mOccluderPolygon2D.i */
%module mOccluderPolygon2D

template<class OccluderPolygon2D> class Ref;%template() Ref<OccluderPolygon2D>;
%feature("novaluewrapper") Ref<OccluderPolygon2D>;


%typemap(csbody_derived) OccluderPolygon2D %{
  public static readonly int CULL_DISABLED = 0;
  public static readonly int CULL_CLOCKWISE = 1;
  public static readonly int CULL_COUNTER_CLOCKWISE = 2;

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

%typemap(cscode) OccluderPolygon2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) OccluderPolygon2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor OccluderPolygon2D;

class OccluderPolygon2D : public Resource {
public:
  OccluderPolygon2D();

%extend {

void set_closed(bool closed) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OccluderPolygon2D", "set_closed");
  const void* __args[1] = { &closed };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_closed() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OccluderPolygon2D", "is_closed");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_cull_mode(int cull_mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OccluderPolygon2D", "set_cull_mode");
  const void* __args[1] = { &cull_mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_cull_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OccluderPolygon2D", "get_cull_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_polygon(const Vector2Array& polygon) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OccluderPolygon2D", "set_polygon");
  const void* __args[1] = { &polygon };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2Array get_polygon() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OccluderPolygon2D", "get_polygon");
  Vector2Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~OccluderPolygon2D() {
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
