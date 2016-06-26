/* mColorPicker.i */
%module mColorPicker


%typemap(csbody_derived) ColorPicker %{

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

%typemap(cscode) ColorPicker %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ColorPicker %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ColorPicker;

class ColorPicker : public BoxContainer {
public:
  ColorPicker();

%extend {

void set_color(const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorPicker", "set_color");
  const void* __args[1] = { &color };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_color() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorPicker", "get_color");
  Color ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_raw_mode(bool mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorPicker", "set_raw_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_raw_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorPicker", "is_raw_mode");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_edit_alpha(bool show) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorPicker", "set_edit_alpha");
  const void* __args[1] = { &show };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_editing_alpha() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorPicker", "is_editing_alpha");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_preset(const Color& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorPicker", "add_preset");
  const void* __args[1] = { &arg0_ };
  __method_bind->ptrcall($self, __args, NULL);
}

}


};
