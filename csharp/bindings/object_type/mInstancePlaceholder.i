/* mInstancePlaceholder.i */
%module mInstancePlaceholder

%nodefaultctor InstancePlaceholder;

%typemap(csbody_derived) InstancePlaceholder %{

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

%typemap(cscode) InstancePlaceholder %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) InstancePlaceholder %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor InstancePlaceholder;

class InstancePlaceholder : public Node {
public:
  %extend {
    void replace_by_instance(Ref<PackedScene> custom_scene = Ref<PackedScene>()) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("replace_by_instance", custom_scene);
    }
  }
  %extend {
    String get_instance_path() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_instance_path");
    }
  }

};
