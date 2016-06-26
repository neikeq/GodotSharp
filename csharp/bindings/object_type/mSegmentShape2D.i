/* mSegmentShape2D.i */
%module mSegmentShape2D

template<class SegmentShape2D> class Ref;%template() Ref<SegmentShape2D>;
%feature("novaluewrapper") Ref<SegmentShape2D>;


%typemap(csbody_derived) SegmentShape2D %{

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

%typemap(cscode) SegmentShape2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) SegmentShape2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SegmentShape2D;

class SegmentShape2D : public Shape2D {
public:
  SegmentShape2D();

%extend {

void set_a(const Vector2& a) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SegmentShape2D", "set_a");
  const void* __args[1] = { &a };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_a() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SegmentShape2D", "get_a");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_b(const Vector2& b) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SegmentShape2D", "set_b");
  const void* __args[1] = { &b };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_b() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SegmentShape2D", "get_b");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~SegmentShape2D() {
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
