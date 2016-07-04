/* mColorPickerButton.i */
%module mColorPickerButton


%typemap(csbody_derived) ColorPickerButton %{

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

%typemap(cscode) ColorPickerButton %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ColorPickerButton %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ColorPickerButton;

class ColorPickerButton : public Button {
public:
  ColorPickerButton();

%extend {

void set_color(const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorPickerButton", "set_color");
  const void* __args[1] = { &color };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_color() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorPickerButton", "get_color");
  Color ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

ColorPicker* get_picker() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorPickerButton", "get_picker");
  ColorPicker* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_edit_alpha(bool show) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorPickerButton", "set_edit_alpha");
  const void* __args[1] = { &show };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_editing_alpha() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorPickerButton", "is_editing_alpha");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
