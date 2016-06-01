/* mMultiMeshInstance.i */
%module mMultiMeshInstance


%typemap(csbody_derived) MultiMeshInstance %{

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

%typemap(cscode) MultiMeshInstance %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) MultiMeshInstance %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor MultiMeshInstance;

class MultiMeshInstance : public GeometryInstance {
public:
  %extend {
    void set_multimesh(Object* multimesh) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_multimesh", multimesh);
    }
  }
  %extend {
    Object* get_multimesh() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_multimesh").operator Object *();
    }
  }
  MultiMeshInstance();

};
