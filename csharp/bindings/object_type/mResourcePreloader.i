/* mResourcePreloader.i */
%module mResourcePreloader


%typemap(csbody_derived) ResourcePreloader %{

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

%typemap(cscode) ResourcePreloader %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ResourcePreloader %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor ResourcePreloader;

class ResourcePreloader : public Node {
public:
  %extend {
    void add_resource(const String& name, Object* resource) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_resource", name, resource);
    }
  }
  %extend {
    void remove_resource(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_resource", name);
    }
  }
  %extend {
    void rename_resource(const String& name, const String& newname) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("rename_resource", name, newname);
    }
  }
  %extend {
    bool has_resource(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_resource", name);
    }
  }
  %extend {
    Object* get_resource(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_resource", name).operator Object *();
    }
  }
  %extend {
    StringArray get_resource_list() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_resource_list");
    }
  }
  ResourcePreloader();

};
