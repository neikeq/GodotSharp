/* mAcceptDialog.i */
%module mAcceptDialog


%typemap(csbody_derived) AcceptDialog %{

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

%typemap(cscode) AcceptDialog %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) AcceptDialog %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor AcceptDialog;

class AcceptDialog : public WindowDialog {
public:
  AcceptDialog();

%extend {

Object* get_ok() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AcceptDialog", "get_ok");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Object* get_label() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AcceptDialog", "get_label");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_hide_on_ok(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AcceptDialog", "set_hide_on_ok");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_hide_on_ok() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AcceptDialog", "get_hide_on_ok");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Button* add_button(const String& text, bool right = false, const String& action = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AcceptDialog", "add_button");
  const void* __args[3] = { &text, &right, &action };
  Button* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Button* add_cancel(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AcceptDialog", "add_cancel");
  const void* __args[1] = { &name };
  Button* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

LineEdit* register_text_enter(Object* line_edit) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AcceptDialog", "register_text_enter");
  const void* __args[1] = { line_edit };
  LineEdit* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_text(const String& text) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AcceptDialog", "set_text");
  const void* __args[1] = { &text };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_text() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AcceptDialog", "get_text");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
