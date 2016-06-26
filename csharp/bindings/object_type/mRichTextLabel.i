/* mRichTextLabel.i */
%module mRichTextLabel


%typemap(csbody_derived) RichTextLabel %{
  public static readonly int ALIGN_LEFT = 0;
  public static readonly int ALIGN_CENTER = 1;
  public static readonly int ALIGN_RIGHT = 2;
  public static readonly int ALIGN_FILL = 3;
  public static readonly int LIST_NUMBERS = 0;
  public static readonly int LIST_LETTERS = 1;
  public static readonly int LIST_DOTS = 2;
  public static readonly int ITEM_FRAME = 0;
  public static readonly int ITEM_TEXT = 1;
  public static readonly int ITEM_IMAGE = 2;
  public static readonly int ITEM_NEWLINE = 3;
  public static readonly int ITEM_FONT = 4;
  public static readonly int ITEM_COLOR = 5;
  public static readonly int ITEM_UNDERLINE = 6;
  public static readonly int ITEM_ALIGN = 7;
  public static readonly int ITEM_INDENT = 8;
  public static readonly int ITEM_LIST = 9;
  public static readonly int ITEM_META = 11;

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

%typemap(cscode) RichTextLabel %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) RichTextLabel %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor RichTextLabel;

class RichTextLabel : public Control {
public:
  RichTextLabel();

%extend {

void add_text(const String& text) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "add_text");
  const void* __args[1] = { &text };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_image(Texture* image) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "add_image");
  const void* __args[1] = { image };
  __method_bind->ptrcall($self, __args, NULL);
}

void newline() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "newline");
  __method_bind->ptrcall($self, NULL, NULL);
}

void push_font(Object* font) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "push_font");
  const void* __args[1] = { font };
  __method_bind->ptrcall($self, __args, NULL);
}

void push_color(const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "push_color");
  const void* __args[1] = { &color };
  __method_bind->ptrcall($self, __args, NULL);
}

void push_align(int align) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "push_align");
  const void* __args[1] = { &align };
  __method_bind->ptrcall($self, __args, NULL);
}

void push_indent(int level) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "push_indent");
  const void* __args[1] = { &level };
  __method_bind->ptrcall($self, __args, NULL);
}

void push_list(int type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "push_list");
  const void* __args[1] = { &type };
  __method_bind->ptrcall($self, __args, NULL);
}

void push_meta(const Variant& data) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "push_meta");
  const void* __args[1] = { &data };
  __method_bind->ptrcall($self, __args, NULL);
}

void push_underline() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "push_underline");
  __method_bind->ptrcall($self, NULL, NULL);
}

void push_table(int columns) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "push_table");
  const void* __args[1] = { &columns };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_table_column_expand(int column, bool expand, int ratio) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "set_table_column_expand");
  const void* __args[3] = { &column, &expand, &ratio };
  __method_bind->ptrcall($self, __args, NULL);
}

void push_cell() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "push_cell");
  __method_bind->ptrcall($self, NULL, NULL);
}

void pop() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "pop");
  __method_bind->ptrcall($self, NULL, NULL);
}

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_meta_underline(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "set_meta_underline");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_meta_underlined() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "is_meta_underlined");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_scroll_active(bool active) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "set_scroll_active");
  const void* __args[1] = { &active };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_scroll_active() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "is_scroll_active");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_scroll_follow(bool follow) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "set_scroll_follow");
  const void* __args[1] = { &follow };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_scroll_following() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "is_scroll_following");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Object* get_v_scroll() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "get_v_scroll");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void scroll_to_line(int line) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "scroll_to_line");
  const void* __args[1] = { &line };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_tab_size(int spaces) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "set_tab_size");
  const void* __args[1] = { &spaces };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_tab_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "get_tab_size");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_selection_enabled(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "set_selection_enabled");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_selection_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "is_selection_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int parse_bbcode(const String& bbcode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "parse_bbcode");
  const void* __args[1] = { &bbcode };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int append_bbcode(const String& bbcode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "append_bbcode");
  const void* __args[1] = { &bbcode };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_bbcode(const String& text) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "set_bbcode");
  const void* __args[1] = { &text };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_bbcode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "get_bbcode");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_visible_characters(int amount) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "set_visible_characters");
  const void* __args[1] = { &amount };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_visible_characters() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "get_visible_characters");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_total_character_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "get_total_character_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_use_bbcode(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "set_use_bbcode");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_using_bbcode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RichTextLabel", "is_using_bbcode");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
