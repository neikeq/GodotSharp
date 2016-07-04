/* mWindowDialog.i */
%module mWindowDialog


%typemap(csbody_derived) WindowDialog %{

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

%typemap(cscode) WindowDialog %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) WindowDialog %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor WindowDialog;

class WindowDialog : public Popup {
public:
  WindowDialog();

%extend {

void set_title(const String& title) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("WindowDialog", "set_title");
  const void* __args[1] = { &title };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_title() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("WindowDialog", "get_title");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

TextureButton* get_close_button() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("WindowDialog", "get_close_button");
  TextureButton* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
