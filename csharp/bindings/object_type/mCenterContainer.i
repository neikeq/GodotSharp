/* mCenterContainer.i */
%module mCenterContainer


%typemap(csbody_derived) CenterContainer %{

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

%typemap(cscode) CenterContainer %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) CenterContainer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CenterContainer;

class CenterContainer : public Container {
public:
  %extend {
    void set_use_top_left(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_use_top_left", enable);
    }
  }
  %extend {
    bool is_using_top_left() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_using_top_left");
    }
  }
  CenterContainer();

};
