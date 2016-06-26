/* m_ResourceLoader.i */
%module m_ResourceLoader

%rename(ResourceLoader) _ResourceLoader;
%csmethodmodifiers _ResourceLoader::_ResourceLoader "private"
%csmethodmodifiers _ResourceLoader::SingletonGetInstance "private"
%nodefaultctor _ResourceLoader;

%typemap(csbody_derived) _ResourceLoader %{
  private static $csclassname instance;

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

%typemap(cscode) _ResourceLoader %{
  public static $csclassname Instance {
    get {
      if (instance == null) {
        instance = SingletonGetInstance();
      }
      return instance;
    }
  }

  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) _ResourceLoader %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor _ResourceLoader;

class _ResourceLoader : public Object {
public:

%extend {

Ref<ResourceInteractiveLoader> load_interactive(const String& path, const String& type_hint = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_ResourceLoader", "load_interactive");
  const void* __args[2] = { &path, &type_hint };
  Ref<ResourceInteractiveLoader> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Ref<Resource> load(const String& path, const String& type_hint = "", bool p_no_cache = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_ResourceLoader", "load");
  const void* __args[3] = { &path, &type_hint, &p_no_cache };
  Ref<Resource> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Ref<ResourceImportMetadata> load_import_metadata(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_ResourceLoader", "load_import_metadata");
  const void* __args[1] = { &path };
  Ref<ResourceImportMetadata> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

StringArray get_recognized_extensions_for_type(const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_ResourceLoader", "get_recognized_extensions_for_type");
  const void* __args[1] = { &type };
  StringArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_abort_on_missing_resources(bool abort) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_ResourceLoader", "set_abort_on_missing_resources");
  const void* __args[1] = { &abort };
  __method_bind->ptrcall($self, __args, NULL);
}

StringArray get_dependencies(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_ResourceLoader", "get_dependencies");
  const void* __args[1] = { &path };
  StringArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_ResourceLoader", "has");
  const void* __args[1] = { &path };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

static _ResourceLoader* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("ResourceLoader")->cast_to<_ResourceLoader>(); }

}


};
