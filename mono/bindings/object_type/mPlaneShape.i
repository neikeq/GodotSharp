/* mPlaneShape.i */
%module mPlaneShape

template<class PlaneShape> class Ref;%template() Ref<PlaneShape>;
%feature("novaluewrapper") Ref<PlaneShape>;


%typemap(csbody_derived) PlaneShape %{

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

%typemap(cscode) PlaneShape %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) PlaneShape %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PlaneShape;

class PlaneShape : public Shape {
public:
  PlaneShape();

%extend {

void set_plane(const Plane& plane) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PlaneShape", "set_plane");
  const void* __args[1] = { &plane };
  __method_bind->ptrcall($self, __args, NULL);
}

Plane get_plane() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PlaneShape", "get_plane");
  Plane ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~PlaneShape() {
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
