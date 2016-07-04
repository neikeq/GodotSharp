/* mResource.i */
%module mResource

template<class Resource> class Ref;%template() Ref<Resource>;
%feature("novaluewrapper") Ref<Resource>;


%typemap(csbody_derived) Resource %{

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

%typemap(cscode) Resource %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Resource %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Resource;

class Resource : public Reference {
public:
  Resource();

%extend {

void set_path(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Resource", "set_path");
  const void* __args[1] = { &path };
  __method_bind->ptrcall($self, __args, NULL);
}

void take_over_path(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Resource", "take_over_path");
  const void* __args[1] = { &path };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_path() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Resource", "get_path");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_name(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Resource", "set_name");
  const void* __args[1] = { &name };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_name() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Resource", "get_name");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID get_rid() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Resource", "get_rid");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_import_metadata(Object* metadata) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Resource", "set_import_metadata");
  const void* __args[1] = { metadata };
  __method_bind->ptrcall($self, __args, NULL);
}

Object* get_import_metadata() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Resource", "get_import_metadata");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Object* duplicate(bool subresources = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Resource", "duplicate");
  const void* __args[1] = { &subresources };
  Object* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~Resource() {
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
