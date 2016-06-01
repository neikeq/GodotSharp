/* mScript.i */
%module mScript

%nodefaultctor Script;

%typemap(csbody_derived) Script %{

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

%typemap(cscode) Script %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Script %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Script;

class Script : public Resource {
public:
  %extend {
    bool can_instance() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("can_instance");
    }
  }
  %extend {
    bool instance_has(Object* base_object) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("instance_has", base_object);
    }
  }
  %extend {
    bool has_source_code() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_source_code");
    }
  }
  %extend {
    String get_source_code() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_source_code");
    }
  }
  %extend {
    void set_source_code(const String& source) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_source_code", source);
    }
  }
  %extend {
    int reload() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("reload");
    }
  }

};
