/* mRectangleShape2D.i */
%module mRectangleShape2D

template<class RectangleShape2D> class Ref;%template() Ref<RectangleShape2D>;
%feature("novaluewrapper") Ref<RectangleShape2D>;


%typemap(csbody_derived) RectangleShape2D %{

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

%typemap(cscode) RectangleShape2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) RectangleShape2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor RectangleShape2D;

class RectangleShape2D : public Shape2D {
public:
  RectangleShape2D();

%extend {

void set_extents(const Vector2& extents) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RectangleShape2D", "set_extents");
  const void* __args[1] = { &extents };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_extents() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RectangleShape2D", "get_extents");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~RectangleShape2D() {
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
