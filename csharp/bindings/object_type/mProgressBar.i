/* mProgressBar.i */
%module mProgressBar


%typemap(csbody_derived) ProgressBar %{

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

%typemap(cscode) ProgressBar %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ProgressBar %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor ProgressBar;

class ProgressBar : public Range {
public:
  %extend {
    void set_percent_visible(bool visible) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_percent_visible", visible);
    }
  }
  %extend {
    bool is_percent_visible() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_percent_visible");
    }
  }
  ProgressBar();

};
