/* mSlider.i */
%module mSlider

%nodefaultctor Slider;

%typemap(csbody_derived) Slider %{

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

%typemap(cscode) Slider %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Slider %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Slider;

class Slider : public Range {
public:

%extend {

void set_ticks(int count) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Slider", "set_ticks");
  const void* __args[1] = { &count };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_ticks() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Slider", "get_ticks");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool get_ticks_on_borders() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Slider", "get_ticks_on_borders");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_ticks_on_borders(bool ticks_on_border) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Slider", "set_ticks_on_borders");
  const void* __args[1] = { &ticks_on_border };
  __method_bind->ptrcall($self, __args, NULL);
}

}


};
