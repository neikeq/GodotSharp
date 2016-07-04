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
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ScrollBar", "set_custom_step");
  const void* __args[1] = { &step };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_custom_step() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ScrollBar", "get_custom_step");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
