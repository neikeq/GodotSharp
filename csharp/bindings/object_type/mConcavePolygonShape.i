/* mConcavePolygonShape.i */
%module mConcavePolygonShape

template<class ConcavePolygonShape> class Ref;%template() Ref<ConcavePolygonShape>;
%feature("novaluewrapper") Ref<ConcavePolygonShape>;


%typemap(csbody_derived) ConcavePolygonShape %{

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

%typemap(cscode) ConcavePolygonShape %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ConcavePolygonShape %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ConcavePolygonShape;

class ConcavePolygonShape : public Shape {
public:
  ConcavePolygonShape();

%extend {

void set_faces(const Vector3Array& faces) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ConcavePolygonShape", "set_faces");
  const void* __args[1] = { &faces };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3Array get_faces() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ConcavePolygonShape", "get_faces");
  Vector3Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~ConcavePolygonShape() {
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
