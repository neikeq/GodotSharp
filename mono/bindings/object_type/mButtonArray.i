/* mButtonArray.i */
%module mButtonArray

%nodefaultctor ButtonArray;

%typemap(csbody_derived) ButtonArray %{
  public static readonly int ALIGN_BEGIN = 0;
  public static readonly int ALIGN_CENTER = 1;
  public static readonly int ALIGN_END = 2;
  public static readonly int ALIGN_FILL = 3;
  public static readonly int ALIGN_EXPAND_FILL = 4;

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

%typemap(cscode) ButtonArray %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) ButtonArray %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ButtonArray;

class ButtonArray : public Control {
public:

%extend {

void add_button(const String& text) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ButtonArray", "add_button");
  const void* __args[1] = { &text };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_icon_button(Texture* icon, const String& text = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ButtonArray", "add_icon_button");
  const void* __args[2] = { icon, &text };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_button_text(int button_idx, const String& text) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ButtonArray", "set_button_text");
  const void* __args[2] = { &button_idx, &text };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_button_icon(int button_idx, Texture* icon) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ButtonArray", "set_button_icon");
  const void* __args[2] = { &button_idx, icon };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_button_text(int button_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ButtonArray", "get_button_text");
  const void* __args[1] = { &button_idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Ref<Texture> get_button_icon(int button_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ButtonArray", "get_button_icon");
  const void* __args[1] = { &button_idx };
  Ref<Texture> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_button_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ButtonArray", "get_button_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_selected() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ButtonArray", "get_selected");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_hovered() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ButtonArray", "get_hovered");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_selected(int button_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ButtonArray", "set_selected");
  const void* __args[1] = { &button_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void erase_button(int button_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ButtonArray", "erase_button");
  const void* __args[1] = { &button_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ButtonArray", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

}


};
