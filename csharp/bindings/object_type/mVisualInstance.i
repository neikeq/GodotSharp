/* mVisualInstance.i */
%module mVisualInstance

%nodefaultctor VisualInstance;

%typemap(csbody_derived) VisualInstance %{

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

%typemap(cscode) VisualInstance %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) VisualInstance %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor VisualInstance;

class VisualInstance : public Spatial {
public:
  %extend {
    void set_base(const RID& base) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_base", base);
    }
  }
  %extend {
    void set_layer_mask(int mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_layer_mask", mask);
    }
  }
  %extend {
    int get_layer_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_layer_mask");
    }
  }

};
