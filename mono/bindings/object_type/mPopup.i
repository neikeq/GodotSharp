/* mPopup.i */
%module mPopup


%typemap(csbody_derived) Popup %{
  public static readonly int NOTIFICATION_POST_POPUP = 80;
  public static readonly int NOTIFICATION_POPUP_HIDE = 81;

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

%typemap(cscode) Popup %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Popup %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Popup;

class Popup : public Control {
public:
  Popup();

%extend {

void popup_centered(const Vector2& size = Vector2(0,0)) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Popup", "popup_centered");
  const void* __args[1] = { &size };
  __method_bind->ptrcall($self, __args, NULL);
}

void popup_centered_ratio(float ratio = 0.75) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Popup", "popup_centered_ratio");
  const void* __args[1] = { &ratio };
  __method_bind->ptrcall($self, __args, NULL);
}

void popup_centered_minsize(const Vector2& minsize = Vector2(0,0)) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Popup", "popup_centered_minsize");
  const void* __args[1] = { &minsize };
  __method_bind->ptrcall($self, __args, NULL);
}

void popup() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Popup", "popup");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_exclusive(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Popup", "set_exclusive");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_exclusive() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Popup", "is_exclusive");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
