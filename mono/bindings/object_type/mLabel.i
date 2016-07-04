/* mLabel.i */
%module mLabel


%typemap(csbody_derived) Label %{
  public static readonly int ALIGN_LEFT = 0;
  public static readonly int ALIGN_CENTER = 1;
  public static readonly int ALIGN_RIGHT = 2;
  public static readonly int ALIGN_FILL = 3;
  public static readonly int VALIGN_TOP = 0;
  public static readonly int VALIGN_CENTER = 1;
  public static readonly int VALIGN_BOTTOM = 2;
  public static readonly int VALIGN_FILL = 3;

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

%typemap(cscode) Label %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Label %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Label;

class Label : public Control {
public:
  Label();

%extend {

void set_align(int align) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "set_align");
  const void* __args[1] = { &align };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_align() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "get_align");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_valign(int valign) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "set_valign");
  const void* __args[1] = { &valign };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_valign() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "get_valign");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_text(const String& text) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "set_text");
  const void* __args[1] = { &text };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_text() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "get_text");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_autowrap(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "set_autowrap");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_autowrap() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "has_autowrap");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_clip_text(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "set_clip_text");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_clipping_text() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "is_clipping_text");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_uppercase(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "set_uppercase");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_uppercase() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "is_uppercase");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_line_height() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "get_line_height");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_line_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "get_line_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_total_character_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "get_total_character_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_visible_characters(int amount) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "set_visible_characters");
  const void* __args[1] = { &amount };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_visible_characters() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "get_visible_characters");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_percent_visible(float percent_visible) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "set_percent_visible");
  const void* __args[1] = { &percent_visible };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_percent_visible() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "get_percent_visible");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_lines_skipped(int lines_skipped) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "set_lines_skipped");
  const void* __args[1] = { &lines_skipped };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_lines_skipped() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "get_lines_skipped");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_max_lines_visible(int lines_visible) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "set_max_lines_visible");
  const void* __args[1] = { &lines_visible };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_max_lines_visible() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Label", "get_max_lines_visible");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
