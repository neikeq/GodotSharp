/* mButtonGroup.i */
%module mButtonGroup


%typemap(csbody_derived) ButtonGroup %{

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

%typemap(cscode) ButtonGroup %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ButtonGroup %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ButtonGroup;

class ButtonGroup : public BoxContainer {
public:
  ButtonGroup();

%extend {

BaseButton* get_pressed_button() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ButtonGroup", "get_pressed_button");
  BaseButton* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_pressed_button_index() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ButtonGroup", "get_pressed_button_index");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

BaseButton* get_focused_button() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ButtonGroup", "get_focused_button");
  BaseButton* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Array get_button_list() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ButtonGroup", "get_button_list");
  Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_pressed_button(BaseButton* button) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ButtonGroup", "set_pressed_button");
  const void* __args[1] = { button };
  __method_bind->ptrcall($self, __args, NULL);
}

}


};
