/* mResourceImportMetadata.i */
%module mResourceImportMetadata


%typemap(csbody_derived) ResourceImportMetadata %{

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

%typemap(cscode) ResourceImportMetadata %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ResourceImportMetadata %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ResourceImportMetadata;

class ResourceImportMetadata : public Reference {
public:
  %extend {
    void set_editor(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_editor", name);
    }
  }
  %extend {
    String get_editor() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_editor");
    }
  }
  %extend {
    void add_source(const String& path, const String& md5 = "") {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_source", path, md5);
    }
  }
  %extend {
    String get_source_path(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_source_path", idx);
    }
  }
  %extend {
    String get_source_md5(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_source_md5", idx);
    }
  }
  %extend {
    void set_source_md5(int idx, const String& md5) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_source_md5", idx, md5);
    }
  }
  %extend {
    void remove_source(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_source", idx);
    }
  }
  %extend {
    int get_source_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_source_count");
    }
  }
  %extend {
    void set_option(const String& key, const Variant& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_option", key, value);
    }
  }
  %extend {
    void get_option(const String& key) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("get_option", key);
    }
  }
  %extend {
    StringArray get_options() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_options");
    }
  }
  ResourceImportMetadata();

};
