/* mResource.i */
%module mResource


%typemap(csbody_derived) Resource %{

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

%typemap(cscode) Resource %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Resource %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor Resource;

class Resource : public Reference {
public:
  %extend {
    void set_path(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_path", path);
    }
  }
  %extend {
    void take_over_path(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("take_over_path", path);
    }
  }
  %extend {
    String get_path() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_path");
    }
  }
  %extend {
    void set_name(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_name", name);
    }
  }
  %extend {
    String get_name() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_name");
    }
  }
  %extend {
    RID get_rid() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rid");
    }
  }
  %extend {
    void set_import_metadata(Object* metadata) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_import_metadata", metadata);
    }
  }
  %extend {
    Object* get_import_metadata() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_import_metadata").operator Object *();
    }
  }
  %extend {
    Object* duplicate(bool subresources = false) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("duplicate", subresources).operator Object *();
    }
  }
  Resource();

};
