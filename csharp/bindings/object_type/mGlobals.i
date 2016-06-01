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
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has", name);
    }
  }
  %extend {
    void set_order(const String& name, int pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_order", name, pos);
    }
  }
  %extend {
    int get_order(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_order", name);
    }
  }
  %extend {
    void set_persisting(const String& name, bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_persisting", name, enable);
    }
  }
  %extend {
    bool is_persisting(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_persisting", name);
    }
  }
  %extend {
    void clear(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear", name);
    }
  }
  %extend {
    String localize_path(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("localize_path", path);
    }
  }
  %extend {
    String globalize_path(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("globalize_path", path);
    }
  }
  %extend {
    int save() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("save");
    }
  }
  %extend {
    bool has_singleton(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_singleton", name);
    }
  }
  %extend {
    Object* get_singleton(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_singleton", name).operator Object *();
    }
  }
  %extend {
    bool load_resource_pack(const String& pack) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("load_resource_pack", pack);
    }
  }
  %extend {
    int save_custom(const String& file) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("save_custom", file);
    }
  }
  %extend {
    static Globals* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("Globals")->cast_to<Globals>(); }
  }

};
