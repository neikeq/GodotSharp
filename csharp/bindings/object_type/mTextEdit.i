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
    }$excode
  }
%}

%nodefaultdtor TextEdit;

class TextEdit : public Control {
public:
  %extend {
    void set_text(const String& text) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_text", text);
    }
  }
  %extend {
    void insert_text_at_cursor(const String& text) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("insert_text_at_cursor", text);
    }
  }
  %extend {
    int get_line_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_line_count");
    }
  }
  %extend {
    String get_text() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_text");
    }
  }
  %extend {
    String get_line(int line) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_line", line);
    }
  }
  %extend {
    void cursor_set_column(int column, bool adjust_viewport = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("cursor_set_column", column, adjust_viewport);
    }
  }
  %extend {
    void cursor_set_line(int line, bool adjust_viewport = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("cursor_set_line", line, adjust_viewport);
    }
  }
  %extend {
    int cursor_get_column() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("cursor_get_column");
    }
  }
  %extend {
    int cursor_get_line() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("cursor_get_line");
    }
  }
  %extend {
    void cursor_set_blink_enabled(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("cursor_set_blink_enabled", enable);
    }
  }
  %extend {
    bool cursor_get_blink_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("cursor_get_blink_enabled");
    }
  }
  %extend {
    void cursor_set_blink_speed(float blink_speed) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("cursor_set_blink_speed", blink_speed);
    }
  }
  %extend {
    float cursor_get_blink_speed() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("cursor_get_blink_speed");
    }
  }
  %extend {
    void set_readonly(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_readonly", enable);
    }
  }
  %extend {
    void set_wrap(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_wrap", enable);
    }
  }
  %extend {
    void set_max_chars(int amount) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_max_chars", amount);
    }
  }
  %extend {
    void cut() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("cut");
    }
  }
  %extend {
    void copy() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("copy");
    }
  }
  %extend {
    void paste() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("paste");
    }
  }
  %extend {
    void select_all() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("select_all");
    }
  }
  %extend {
    void select(int from_line, int from_column, int to_line, int to_column) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("select", from_line, from_column, to_line, to_column);
    }
  }
  %extend {
    bool is_selection_active() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_selection_active");
    }
  }
  %extend {
    int get_selection_from_line() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_selection_from_line");
    }
  }
  %extend {
    int get_selection_from_column() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_selection_from_column");
    }
  }
  %extend {
    int get_selection_to_line() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_selection_to_line");
    }
  }
  %extend {
    int get_selection_to_column() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_selection_to_column");
    }
  }
  %extend {
    String get_selection_text() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_selection_text");
    }
  }
  %extend {
    String get_word_under_cursor() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_word_under_cursor");
    }
  }
  %extend {
    IntArray search(const String& flags, int from_line, int from_column, int to_line) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("search", flags, from_line, from_column, to_line);
    }
  }
  %extend {
    void undo() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("undo");
    }
  }
  %extend {
    void redo() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("redo");
    }
  }
  %extend {
    void clear_undo_history() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_undo_history");
    }
  }
  %extend {
    void set_syntax_coloring(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_syntax_coloring", enable);
    }
  }
  %extend {
    bool is_syntax_coloring_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_syntax_coloring_enabled");
    }
  }
  %extend {
    void add_keyword_color(const String& keyword, const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_keyword_color", keyword, color);
    }
  }
  %extend {
    void add_color_region(const String& begin_key, const String& end_key, const Color& color, bool line_only = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_color_region", begin_key, end_key, color, line_only);
    }
  }
  %extend {
    void set_symbol_color(const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_symbol_color", color);
    }
  }
  %extend {
    void set_custom_bg_color(const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_custom_bg_color", color);
    }
  }
  %extend {
    void clear_colors() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_colors");
    }
  }
  %extend {
    void menu_option(int arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("menu_option", arg0_);
    }
  }
  %extend {
    PopupMenu* get_menu() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_menu").operator Object *()->cast_to<PopupMenu>();
    }
  }
  TextEdit();

};
