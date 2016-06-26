/* mSpinBox.i */
%module mSpinBox


%typemap(csbody_derived) SpinBox %{

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

%typemap(cscode) SpinBox %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) SpinBox %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SpinBox;

class SpinBox : public Range {
public:
  SpinBox();

%extend {

void set_suffix(const String& suffix) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpinBox", "set_suffix");
  const void* __args[1] = { &suffix };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_suffix() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpinBox", "get_suffix");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_prefix(const String& prefix) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpinBox", "set_prefix");
  const void* __args[1] = { &prefix };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_prefix() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpinBox", "get_prefix");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_editable(bool editable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpinBox", "set_editable");
  const void* __args[1] = { &editable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_editable() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpinBox", "is_editable");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Object* get_line_edit() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpinBox", "get_line_edit");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
