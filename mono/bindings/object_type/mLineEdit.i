/* mLineEdit.i */
%module mLineEdit


%typemap(csbody_derived) LineEdit %{
  public static readonly int ALIGN_LEFT = 0;
  public static readonly int ALIGN_CENTER = 1;
  public static readonly int ALIGN_RIGHT = 2;
  public static readonly int ALIGN_FILL = 3;
  public static readonly int MENU_CUT = 0;
  public static readonly int MENU_COPY = 1;
  public static readonly int MENU_PASTE = 2;
  public static readonly int MENU_CLEAR = 3;
  public static readonly int MENU_SELECT_ALL = 4;
  public static readonly int MENU_UNDO = 5;
  public static readonly int MENU_MAX = 6;

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

%typemap(cscode) LineEdit %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) LineEdit %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor LineEdit;

class LineEdit : public Control {
public:
  LineEdit();

%extend {

void set_align(int align) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "set_align");
  const void* __args[1] = { &align };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_align() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "get_align");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

void select_all() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "select_all");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_text(const String& text) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "set_text");
  const void* __args[1] = { &text };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_text() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "get_text");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_cursor_pos(int pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "set_cursor_pos");
  const void* __args[1] = { &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_cursor_pos() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "get_cursor_pos");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void cursor_set_blink_enabled(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "cursor_set_blink_enabled");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool cursor_get_blink_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "cursor_get_blink_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void cursor_set_blink_speed(float blink_speed) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "cursor_set_blink_speed");
  const void* __args[1] = { &blink_speed };
  __method_bind->ptrcall($self, __args, NULL);
}

float cursor_get_blink_speed() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "cursor_get_blink_speed");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_max_length(int chars) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "set_max_length");
  const void* __args[1] = { &chars };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_max_length() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "get_max_length");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void append_at_cursor(const String& text) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "append_at_cursor");
  const void* __args[1] = { &text };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_editable(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "set_editable");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_editable() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "is_editable");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_secret(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "set_secret");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_secret() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "is_secret");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void select(int from = 0, int to = -1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "select");
  const void* __args[2] = { &from, &to };
  __method_bind->ptrcall($self, __args, NULL);
}

void menu_option(int option) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "menu_option");
  const void* __args[1] = { &option };
  __method_bind->ptrcall($self, __args, NULL);
}

PopupMenu* get_menu() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LineEdit", "get_menu");
  PopupMenu* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
