/* m_ResourceLoader.i */
%module m_ResourceLoader

%rename(ResourceLoader) _ResourceLoader;
%nodefaultctor _ResourceLoader;

%typemap(csbody_derived) _ResourceLoader %{

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
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) _ResourceLoader %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor _ResourceLoader;

class _ResourceLoader : public Object {
public:
  %extend {
    Ref<ResourceInteractiveLoader> load_interactive(const String& path, const String& type_hint = "") {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("load_interactive", path, type_hint).operator Object *()->cast_to<ResourceInteractiveLoader>();
    }
  }
  %extend {
    Ref<Resource> load(const String& path, const String& type_hint = "", bool p_no_cache = false) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("load", path, type_hint, p_no_cache).operator Object *()->cast_to<Resource>();
    }
  }
  %extend {
    Ref<ResourceImportMetadata> load_import_metadata(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("load_import_metadata", path).operator Object *()->cast_to<ResourceImportMetadata>();
    }
  }
  %extend {
    StringArray get_recognized_extensions_for_type(const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_recognized_extensions_for_type", type);
    }
  }
  %extend {
    void set_abort_on_missing_resources(bool abort) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_abort_on_missing_resources", abort);
    }
  }
  %extend {
    StringArray get_dependencies(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_dependencies", path);
    }
  }
  %extend {
    bool has(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has", path);
    }
  }

};
