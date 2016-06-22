/* mRichTextLabel.i */
%module mRichTextLabel

%typemap(out) RichTextLabel "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) RichTextLabel* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


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
  %extend {
    void add_text(const String& text) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_text", text);
    }
  }
  %extend {
    void add_image(Ref<Texture> image) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_image", image);
    }
  }
  %extend {
    void newline() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("newline");
    }
  }
  %extend {
    void push_font(Object* font) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("push_font", font);
    }
  }
  %extend {
    void push_color(const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("push_color", color);
    }
  }
  %extend {
    void push_align(int align) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("push_align", align);
    }
  }
  %extend {
    void push_indent(int level) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("push_indent", level);
    }
  }
  %extend {
    void push_list(int type) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("push_list", type);
    }
  }
  %extend {
    void push_meta(const Variant& data) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("push_meta", data);
    }
  }
  %extend {
    void push_underline() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("push_underline");
    }
  }
  %extend {
    void push_table(int columns) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("push_table", columns);
    }
  }
  %extend {
    void set_table_column_expand(int column, bool expand, int ratio) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_table_column_expand", column, expand, ratio);
    }
  }
  %extend {
    void push_cell() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("push_cell");
    }
  }
  %extend {
    void pop() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("pop");
    }
  }
  %extend {
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  %extend {
    void set_meta_underline(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_meta_underline", enable);
    }
  }
  %extend {
    bool is_meta_underlined() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_meta_underlined");
    }
  }
  %extend {
    void set_scroll_active(bool active) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_scroll_active", active);
    }
  }
  %extend {
    bool is_scroll_active() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_scroll_active");
    }
  }
  %extend {
    void set_scroll_follow(bool follow) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_scroll_follow", follow);
    }
  }
  %extend {
    bool is_scroll_following() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_scroll_following");
    }
  }
  %extend {
    Object* get_v_scroll() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_v_scroll").operator Object *();
    }
  }
  %extend {
    void scroll_to_line(int line) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("scroll_to_line", line);
    }
  }
  %extend {
    void set_tab_size(int spaces) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_tab_size", spaces);
    }
  }
  %extend {
    int get_tab_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_tab_size");
    }
  }
  %extend {
    void set_selection_enabled(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_selection_enabled", enabled);
    }
  }
  %extend {
    bool is_selection_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_selection_enabled");
    }
  }
  %extend {
    int parse_bbcode(const String& bbcode) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("parse_bbcode", bbcode);
    }
  }
  %extend {
    int append_bbcode(const String& bbcode) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("append_bbcode", bbcode);
    }
  }
  %extend {
    void set_bbcode(const String& text) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bbcode", text);
    }
  }
  %extend {
    String get_bbcode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bbcode");
    }
  }
  %extend {
    void set_visible_characters(int amount) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_visible_characters", amount);
    }
  }
  %extend {
    int get_visible_characters() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_visible_characters");
    }
  }
  %extend {
    int get_total_character_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_total_character_count");
    }
  }
  %extend {
    void set_use_bbcode(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_use_bbcode", enable);
    }
  }
  %extend {
    bool is_using_bbcode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_using_bbcode");
    }
  }
  RichTextLabel();

};
