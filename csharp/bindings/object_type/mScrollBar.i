/* mScrollBar.i */
%module mScrollBar

%nodefaultctor ScrollBar;

%typemap(csbody_derived) ScrollBar %{

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

%typemap(cscode) ScrollBar %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) ScrollBar %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ScrollBar;

class ScrollBar : public Range {
public:
  %extend {
    void set_custom_step(float step) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_custom_step", step);
    }
  }
  %extend {
    float get_custom_step() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_custom_step");
    }
  }

};
