/* mGlobals.i */
%module mGlobals

%csmethodmodifiers Globals::Globals "private"
%csmethodmodifiers Globals::SingletonGetInstance "private"
%nodefaultctor Globals;

%typemap(csbody_derived) Globals %{
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

%typemap(cscode) Globals %{
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

%typemap(csconstruct, excode=SWIGEXCODE) Globals %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Globals;

class Globals : public Object {
public:

%extend {

bool has(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Globals", "has");
  const void* __args[1] = { &name };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_order(const String& name, int pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Globals", "set_order");
  const void* __args[2] = { &name, &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_order(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Globals", "get_order");
  const void* __args[1] = { &name };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_persisting(const String& name, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Globals", "set_persisting");
  const void* __args[2] = { &name, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_persisting(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Globals", "is_persisting");
  const void* __args[1] = { &name };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void clear(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Globals", "clear");
  const void* __args[1] = { &name };
  __method_bind->ptrcall($self, __args, NULL);
}

String localize_path(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Globals", "localize_path");
  const void* __args[1] = { &path };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String globalize_path(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Globals", "globalize_path");
  const void* __args[1] = { &path };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int save() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Globals", "save");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool has_singleton(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Globals", "has_singleton");
  const void* __args[1] = { &name };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Object* get_singleton(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Globals", "get_singleton");
  const void* __args[1] = { &name };
  Object* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool load_resource_pack(const String& pack) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Globals", "load_resource_pack");
  const void* __args[1] = { &pack };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int save_custom(const String& file) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Globals", "save_custom");
  const void* __args[1] = { &file };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

static Globals* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("Globals")->cast_to<Globals>(); }

}


};
