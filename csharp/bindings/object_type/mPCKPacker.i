/* mPCKPacker.i */
%module mPCKPacker

template<class PCKPacker> class Ref;%template() Ref<PCKPacker>;
%feature("novaluewrapper") Ref<PCKPacker>;


%typemap(csbody_derived) PCKPacker %{

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

%typemap(cscode) PCKPacker %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) PCKPacker %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PCKPacker;

class PCKPacker : public Reference {
public:
  PCKPacker();

%extend {

int pck_start(const String& pck_name, int alignment) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PCKPacker", "pck_start");
  const void* __args[2] = { &pck_name, &alignment };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int add_file(const String& pck_path, const String& source_path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PCKPacker", "add_file");
  const void* __args[2] = { &pck_path, &source_path };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int flush(bool verbose) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PCKPacker", "flush");
  const void* __args[1] = { &verbose };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~PCKPacker() {
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
