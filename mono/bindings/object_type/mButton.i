/* mButton.i */
%module mButton


%typemap(csbody_derived) Button %{
  public static readonly int ALIGN_LEFT = 0;
  public static readonly int ALIGN_CENTER = 1;
  public static readonly int ALIGN_RIGHT = 2;

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

%typemap(cscode) Button %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Button %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Button;

class Button : public BaseButton {
public:
  Button();

%extend {

void set_text(const String& text) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Button", "set_text");
  const void* __args[1] = { &text };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_text() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Button", "get_text");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_button_icon(Texture* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Button", "set_button_icon");
  const void* __args[1] = { texture };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Texture> get_button_icon() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Button", "get_button_icon");
  Ref<Texture> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_flat(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Button", "set_flat");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_clip_text(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Button", "set_clip_text");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_clip_text() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Button", "get_clip_text");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_text_align(int align) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Button", "set_text_align");
  const void* __args[1] = { &align };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_text_align() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Button", "get_text_align");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_flat() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Button", "is_flat");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
