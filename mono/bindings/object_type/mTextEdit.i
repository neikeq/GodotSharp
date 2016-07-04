/* mTextEdit.i */
%module mTextEdit


%typemap(csbody_derived) TextEdit %{
  public static readonly int SEARCH_MATCH_CASE = 1;
  public static readonly int SEARCH_WHOLE_WORDS = 2;
  public static readonly int SEARCH_BACKWARDS = 4;
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

%typemap(cscode) TextEdit %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) TextEdit %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor TextEdit;

class TextEdit : public Control {
public:
  TextEdit();

%extend {

void set_text(const String& text) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "set_text");
  const void* __args[1] = { &text };
  __method_bind->ptrcall($self, __args, NULL);
}

void insert_text_at_cursor(const String& text) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "insert_text_at_cursor");
  const void* __args[1] = { &text };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_line_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "get_line_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_text() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "get_text");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_line(int line) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "get_line");
  const void* __args[1] = { &line };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void cursor_set_column(int column, bool adjust_viewport = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "cursor_set_column");
  const void* __args[2] = { &column, &adjust_viewport };
  __method_bind->ptrcall($self, __args, NULL);
}

void cursor_set_line(int line, bool adjust_viewport = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "cursor_set_line");
  const void* __args[2] = { &line, &adjust_viewport };
  __method_bind->ptrcall($self, __args, NULL);
}

int cursor_get_column() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "cursor_get_column");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int cursor_get_line() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "cursor_get_line");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void cursor_set_blink_enabled(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "cursor_set_blink_enabled");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool cursor_get_blink_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "cursor_get_blink_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void cursor_set_blink_speed(float blink_speed) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "cursor_set_blink_speed");
  const void* __args[1] = { &blink_speed };
  __method_bind->ptrcall($self, __args, NULL);
}

float cursor_get_blink_speed() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "cursor_get_blink_speed");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_readonly(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "set_readonly");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_wrap(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "set_wrap");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_max_chars(int amount) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "set_max_chars");
  const void* __args[1] = { &amount };
  __method_bind->ptrcall($self, __args, NULL);
}

void cut() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "cut");
  __method_bind->ptrcall($self, NULL, NULL);
}

void copy() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "copy");
  __method_bind->ptrcall($self, NULL, NULL);
}

void paste() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "paste");
  __method_bind->ptrcall($self, NULL, NULL);
}

void select_all() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "select_all");
  __method_bind->ptrcall($self, NULL, NULL);
}

void select(int from_line, int from_column, int to_line, int to_column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "select");
  const void* __args[4] = { &from_line, &from_column, &to_line, &to_column };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_selection_active() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "is_selection_active");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_selection_from_line() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "get_selection_from_line");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_selection_from_column() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "get_selection_from_column");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_selection_to_line() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "get_selection_to_line");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_selection_to_column() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "get_selection_to_column");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_selection_text() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "get_selection_text");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_word_under_cursor() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "get_word_under_cursor");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

IntArray search(const String& flags, int from_line, int from_column, int to_line) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "search");
  const void* __args[4] = { &flags, &from_line, &from_column, &to_line };
  IntArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void undo() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "undo");
  __method_bind->ptrcall($self, NULL, NULL);
}

void redo() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "redo");
  __method_bind->ptrcall($self, NULL, NULL);
}

void clear_undo_history() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "clear_undo_history");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_syntax_coloring(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "set_syntax_coloring");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_syntax_coloring_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "is_syntax_coloring_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_keyword_color(const String& keyword, const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "add_keyword_color");
  const void* __args[2] = { &keyword, &color };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_color_region(const String& begin_key, const String& end_key, const Color& color, bool line_only = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "add_color_region");
  const void* __args[4] = { &begin_key, &end_key, &color, &line_only };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_symbol_color(const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "set_symbol_color");
  const void* __args[1] = { &color };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_custom_bg_color(const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "set_custom_bg_color");
  const void* __args[1] = { &color };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear_colors() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "clear_colors");
  __method_bind->ptrcall($self, NULL, NULL);
}

void menu_option(int arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "menu_option");
  const void* __args[1] = { &arg0_ };
  __method_bind->ptrcall($self, __args, NULL);
}

PopupMenu* get_menu() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextEdit", "get_menu");
  PopupMenu* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
