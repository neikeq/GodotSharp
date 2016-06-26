/* mFuncRef.i */
%module mFuncRef

template<class FuncRef> class Ref;%template() Ref<FuncRef>;
%feature("novaluewrapper") Ref<FuncRef>;


%typemap(csbody_derived) FuncRef %{

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

%typemap(cscode) FuncRef %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) FuncRef %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor FuncRef;

class FuncRef : public Reference {
public:
  FuncRef();

%extend {

void call_func(const Variant& arg0_ = Variant(), const Variant& arg1_ = Variant(), const Variant& arg2_ = Variant(), const Variant& arg3_ = Variant(), const Variant& arg4_ = Variant(), const Variant& arg5_ = Variant(), const Variant& arg6_ = Variant(), const Variant& arg7_ = Variant(), const Variant& arg8_ = Variant(), const Variant& arg9_ = Variant()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("FuncRef", "call_func");
  const void* __args[10] = { &arg0_, &arg1_, &arg2_, &arg3_, &arg4_, &arg5_, &arg6_, &arg7_, &arg8_, &arg9_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_instance(Object* instance) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("FuncRef", "set_instance");
  const void* __args[1] = { instance };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_function(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("FuncRef", "set_function");
  const void* __args[1] = { &name };
  __method_bind->ptrcall($self, __args, NULL);
}

~FuncRef() {
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
