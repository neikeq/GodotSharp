/* mPathRemap.i */
%module mPathRemap

%csmethodmodifiers PathRemap::PathRemap "private"
%csmethodmodifiers PathRemap::SingletonGetInstance "private"
%nodefaultctor PathRemap;

%typemap(csbody_derived) PathRemap %{
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

%typemap(cscode) PathRemap %{
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

%typemap(csconstruct, excode=SWIGEXCODE) PathRemap %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PathRemap;

class PathRemap : public Object {
public:

%extend {

void add_remap(const String& from, const String& to, const String& locale = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PathRemap", "add_remap");
  const void* __args[3] = { &from, &to, &locale };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_remap(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PathRemap", "has_remap");
  const void* __args[1] = { &path };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_remap(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PathRemap", "get_remap");
  const void* __args[1] = { &path };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void erase_remap(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PathRemap", "erase_remap");
  const void* __args[1] = { &path };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear_remaps() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PathRemap", "clear_remaps");
  __method_bind->ptrcall($self, NULL, NULL);
}

static PathRemap* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("PathRemap")->cast_to<PathRemap>(); }

}


};
