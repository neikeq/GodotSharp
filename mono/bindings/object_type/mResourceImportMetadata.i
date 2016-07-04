/* mResourceImportMetadata.i */
%module mResourceImportMetadata

template<class ResourceImportMetadata> class Ref;%template() Ref<ResourceImportMetadata>;
%feature("novaluewrapper") Ref<ResourceImportMetadata>;


%typemap(csbody_derived) ResourceImportMetadata %{

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

%typemap(cscode) ResourceImportMetadata %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ResourceImportMetadata %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ResourceImportMetadata;

class ResourceImportMetadata : public Reference {
public:
  ResourceImportMetadata();

%extend {

void set_editor(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourceImportMetadata", "set_editor");
  const void* __args[1] = { &name };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_editor() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourceImportMetadata", "get_editor");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_source(const String& path, const String& md5 = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourceImportMetadata", "add_source");
  const void* __args[2] = { &path, &md5 };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_source_path(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourceImportMetadata", "get_source_path");
  const void* __args[1] = { &idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_source_md5(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourceImportMetadata", "get_source_md5");
  const void* __args[1] = { &idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_source_md5(int idx, const String& md5) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourceImportMetadata", "set_source_md5");
  const void* __args[2] = { &idx, &md5 };
  __method_bind->ptrcall($self, __args, NULL);
}

void remove_source(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourceImportMetadata", "remove_source");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_source_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourceImportMetadata", "get_source_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_option(const String& key, const Variant& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourceImportMetadata", "set_option");
  const void* __args[2] = { &key, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void get_option(const String& key) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourceImportMetadata", "get_option");
  const void* __args[1] = { &key };
  __method_bind->ptrcall($self, __args, NULL);
}

StringArray get_options() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourceImportMetadata", "get_options");
  StringArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~ResourceImportMetadata() {
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
