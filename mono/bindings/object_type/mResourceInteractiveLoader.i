/* mResourceInteractiveLoader.i */
%module mResourceInteractiveLoader

%nodefaultctor ResourceInteractiveLoader;
template<class ResourceInteractiveLoader> class Ref;%template() Ref<ResourceInteractiveLoader>;
%feature("novaluewrapper") Ref<ResourceInteractiveLoader>;


%typemap(csbody_derived) ResourceInteractiveLoader %{

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

%typemap(cscode) ResourceInteractiveLoader %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) ResourceInteractiveLoader %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ResourceInteractiveLoader;

class ResourceInteractiveLoader : public Reference {
public:

%extend {

Object* get_resource() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourceInteractiveLoader", "get_resource");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int poll() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourceInteractiveLoader", "poll");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int wait() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourceInteractiveLoader", "wait");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_stage() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourceInteractiveLoader", "get_stage");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_stage_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourceInteractiveLoader", "get_stage_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~ResourceInteractiveLoader() {
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
