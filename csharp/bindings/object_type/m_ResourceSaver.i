/* m_ResourceSaver.i */
%module m_ResourceSaver

%rename(ResourceSaver) _ResourceSaver;
%nodefaultctor _ResourceSaver;

%typemap(csbody_derived) _ResourceSaver %{
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
    int save(const String& path, Ref<Resource> resource, int flags = 0) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("save", path, resource, flags);
    }
  }
  %extend {
    StringArray get_recognized_extensions(Object* type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_recognized_extensions", type);
    }
  }

};
