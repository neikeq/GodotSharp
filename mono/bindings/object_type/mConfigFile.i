/* mConfigFile.i */
%module mConfigFile

template<class ConfigFile> class Ref;%template() Ref<ConfigFile>;
%feature("novaluewrapper") Ref<ConfigFile>;


%typemap(csbody_derived) ConfigFile %{

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

%typemap(cscode) ConfigFile %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ConfigFile %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ConfigFile;

class ConfigFile : public Reference {
public:
  ConfigFile();

%extend {

void set_value(const String& section, const String& key, const Variant& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ConfigFile", "set_value");
  const void* __args[3] = { &section, &key, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

Variant get_value(const String& section, const String& key, const Variant& default_ = Variant()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ConfigFile", "get_value");
  const void* __args[3] = { &section, &key, &default_ };
  Variant ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_section(const String& section) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ConfigFile", "has_section");
  const void* __args[1] = { &section };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_section_key(const String& section, const String& key) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ConfigFile", "has_section_key");
  const void* __args[2] = { &section, &key };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

StringArray get_sections() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ConfigFile", "get_sections");
  StringArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

StringArray get_section_keys(const String& section) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ConfigFile", "get_section_keys");
  const void* __args[1] = { &section };
  StringArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int load(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ConfigFile", "load");
  const void* __args[1] = { &path };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int save(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ConfigFile", "save");
  const void* __args[1] = { &path };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~ConfigFile() {
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
