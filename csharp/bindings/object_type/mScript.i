/* mScript.i */
%module mScript

%nodefaultctor Script;
template<class Script> class Ref;%template() Ref<Script>;
%feature("novaluewrapper") Ref<Script>;


%typemap(csbody_derived) Script %{

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

%typemap(cscode) Script %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Script %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Script;

class Script : public Resource {
public:

%extend {

bool can_instance() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Script", "can_instance");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool instance_has(Object* base_object) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Script", "instance_has");
  const void* __args[1] = { base_object };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_source_code() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Script", "has_source_code");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_source_code() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Script", "get_source_code");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_source_code(const String& source) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Script", "set_source_code");
  const void* __args[1] = { &source };
  __method_bind->ptrcall($self, __args, NULL);
}

int reload(bool keep_state = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Script", "reload");
  const void* __args[1] = { &keep_state };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~Script() {
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
