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
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_remap", from, to, locale);
    }
  }
  %extend {
    bool has_remap(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_remap", path);
    }
  }
  %extend {
    String get_remap(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_remap", path);
    }
  }
  %extend {
    void erase_remap(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("erase_remap", path);
    }
  }
  %extend {
    void clear_remaps() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_remaps");
    }
  }
  %extend {
    static PathRemap* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("PathRemap")->cast_to<PathRemap>(); }
  }

};
