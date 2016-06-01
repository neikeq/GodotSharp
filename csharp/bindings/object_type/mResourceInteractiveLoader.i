/* mResourceInteractiveLoader.i */
%module mResourceInteractiveLoader

%nodefaultctor ResourceInteractiveLoader;

%typemap(csbody_derived) ResourceInteractiveLoader %{

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

%typemap(cscode) ResourceInteractiveLoader %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) ResourceInteractiveLoader %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor ResourceInteractiveLoader;

class ResourceInteractiveLoader : public Reference {
public:
  %extend {
    Object* get_resource() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_resource").operator Object *();
    }
  }
  %extend {
    int poll() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("poll");
    }
  }
  %extend {
    int wait() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("wait");
    }
  }
  %extend {
    int get_stage() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_stage");
    }
  }
  %extend {
    int get_stage_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_stage_count");
    }
  }

};
