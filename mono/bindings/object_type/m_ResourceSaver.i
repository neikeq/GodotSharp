/* m_ResourceSaver.i */
%module m_ResourceSaver

%rename(ResourceSaver) _ResourceSaver;
%csmethodmodifiers _ResourceSaver::_ResourceSaver "private"
%csmethodmodifiers _ResourceSaver::SingletonGetInstance "private"
%nodefaultctor _ResourceSaver;

%typemap(csbody_derived) _ResourceSaver %{
  private static $csclassname instance;
  public static readonly int FLAG_RELATIVE_PATHS = 1;
  public static readonly int FLAG_BUNDLE_RESOURCES = 2;
  public static readonly int FLAG_CHANGE_PATH = 4;
  public static readonly int FLAG_OMIT_EDITOR_PROPERTIES = 8;
  public static readonly int FLAG_SAVE_BIG_ENDIAN = 16;
  public static readonly int FLAG_COMPRESS = 32;

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

%typemap(cscode) _ResourceSaver %{
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

%typemap(csconstruct, excode=SWIGEXCODE) _ResourceSaver %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor _ResourceSaver;

class _ResourceSaver : public Object {
public:

%extend {

int save(const String& path, Resource* resource, int flags = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_ResourceSaver", "save");
  const void* __args[3] = { &path, resource, &flags };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

StringArray get_recognized_extensions(Object* type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_ResourceSaver", "get_recognized_extensions");
  const void* __args[1] = { type };
  StringArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

static _ResourceSaver* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("ResourceSaver")->cast_to<_ResourceSaver>(); }

}


};
