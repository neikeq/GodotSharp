/* mConfigFile.i */
%module mConfigFile


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
    }$excode
  }
%}

%nodefaultdtor ConfigFile;

class ConfigFile : public Reference {
public:
  %extend {
    void set_value(const String& section, const String& key, const Variant& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_value", section, key, value);
    }
  }
  %extend {
    Variant get_value(const String& section, const String& key, const Variant& default_ = Variant()) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_value", section, key, default_);
    }
  }
  %extend {
    bool has_section(const String& section) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_section", section);
    }
  }
  %extend {
    bool has_section_key(const String& section, const String& key) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_section_key", section, key);
    }
  }
  %extend {
    StringArray get_sections() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_sections");
    }
  }
  %extend {
    StringArray get_section_keys(const String& section) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_section_keys", section);
    }
  }
  %extend {
    int load(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("load", path);
    }
  }
  %extend {
    int save(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("save", path);
    }
  }
  ConfigFile();

};
