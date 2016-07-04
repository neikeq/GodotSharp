/* mGDFunctionState.i */
%module mGDFunctionState

%nodefaultctor GDFunctionState;
template<class GDFunctionState> class Ref;%template() Ref<GDFunctionState>;
%feature("novaluewrapper") Ref<GDFunctionState>;


%typemap(csbody_derived) GDFunctionState %{

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

%typemap(cscode) GDFunctionState %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) GDFunctionState %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor GDFunctionState;

class GDFunctionState : public Reference {
public:

%extend {

Variant resume(const Variant& arg_ = Variant()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GDFunctionState", "resume");
  const void* __args[1] = { &arg_ };
  Variant ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_valid() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GDFunctionState", "is_valid");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~GDFunctionState() {
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
