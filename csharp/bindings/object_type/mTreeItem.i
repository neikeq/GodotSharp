/* mTreeItem.i */
%module mTreeItem

%nodefaultctor TreeItem;

%typemap(csbody_derived) TreeItem %{
  public static readonly int CELL_MODE_STRING = 0;
  public static readonly int CELL_MODE_CHECK = 1;
  public static readonly int CELL_MODE_RANGE = 2;
  public static readonly int CELL_MODE_RANGE_EXPRESSION = 3;
  public static readonly int CELL_MODE_ICON = 4;
  public static readonly int CELL_MODE_CUSTOM = 5;

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

%typemap(cscode) TreeItem %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) TreeItem %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor TreeItem;

class TreeItem : public Object {
public:
  %extend {
    void set_cell_mode(int column, int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_cell_mode", column, mode);
    }
  }
  %extend {
    int get_cell_mode(int column) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_cell_mode", column);
    }
  }
  %extend {
    void set_checked(int column, bool checked) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_checked", column, checked);
    }
  }
  %extend {
    bool is_checked(int column) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_checked", column);
    }
  }
  %extend {
    void set_text(int column, const String& text) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_text", column, text);
    }
  }
  %extend {
    String get_text(int column) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_text", column);
    }
  }
  %extend {
    void set_icon(int column, Ref<Texture> texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_icon", column, texture);
    }
  }
  %extend {
    Ref<Texture> get_icon(int column) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_icon", column).operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    void set_icon_region(int column, const Rect2& region) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_icon_region", column, region);
    }
  }
  %extend {
    Rect2 get_icon_region(int column) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_icon_region", column);
    }
  }
  %extend {
    void set_icon_max_width(int column, int width) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_icon_max_width", column, width);
    }
  }
  %extend {
    int get_icon_max_width(int column) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_icon_max_width", column);
    }
  }
  %extend {
    void set_range(int column, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_range", column, value);
    }
  }
  %extend {
    float get_range(int column) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_range", column);
    }
  }
  %extend {
    void set_range_config(int column, float min, float max, float step, bool expr = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_range_config", column, min, max, step, expr);
    }
  }
  %extend {
    Dictionary get_range_config(int column) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_range_config", column);
    }
  }
  %extend {
    void set_metadata(int column, const Variant& meta) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_metadata", column, meta);
    }
  }
  %extend {
    void get_metadata(int column) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("get_metadata", column);
    }
  }
  %extend {
    void set_custom_draw(int column, Object* object, const String& callback) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_custom_draw", column, object, callback);
    }
  }
  %extend {
    void set_collapsed(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_collapsed", enable);
    }
  }
  %extend {
    bool is_collapsed() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_collapsed");
    }
  }
  %extend {
    TreeItem* get_next() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_next").operator Object *()->cast_to<TreeItem>();
    }
  }
  %extend {
    TreeItem* get_prev() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_prev").operator Object *()->cast_to<TreeItem>();
    }
  }
  %extend {
    TreeItem* get_parent() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_parent").operator Object *()->cast_to<TreeItem>();
    }
  }
  %extend {
    TreeItem* get_children() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_children").operator Object *()->cast_to<TreeItem>();
    }
  }
  %extend {
    TreeItem* get_next_visible() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_next_visible").operator Object *()->cast_to<TreeItem>();
    }
  }
  %extend {
    TreeItem* get_prev_visible() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_prev_visible").operator Object *()->cast_to<TreeItem>();
    }
  }
  %extend {
    TreeItem* remove_child(Object* child) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("remove_child", child).operator Object *()->cast_to<TreeItem>();
    }
  }
  %extend {
    void set_selectable(int column, bool selectable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_selectable", column, selectable);
    }
  }
  %extend {
    bool is_selectable(int column) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_selectable", column);
    }
  }
  %extend {
    bool is_selected(int column) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_selected", column);
    }
  }
  %extend {
    void select(int column) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("select", column);
    }
  }
  %extend {
    void deselect(int column) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("deselect", column);
    }
  }
  %extend {
    void set_editable(int column, bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_editable", column, enabled);
    }
  }
  %extend {
    bool is_editable(int column) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_editable", column);
    }
  }
  %extend {
    void set_custom_color(int column, const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_custom_color", column, color);
    }
  }
  %extend {
    void clear_custom_color(int column) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_custom_color", column);
    }
  }
  %extend {
    void set_custom_bg_color(int column, const Color& color, bool just_outline = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_custom_bg_color", column, color, just_outline);
    }
  }
  %extend {
    void clear_custom_bg_color(int column) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_custom_bg_color", column);
    }
  }
  %extend {
    Color get_custom_bg_color(int column) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_custom_bg_color", column);
    }
  }
  %extend {
    void add_button(int column, Ref<Texture> button, int button_idx = -1, bool disabled = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_button", column, button, button_idx, disabled);
    }
  }
  %extend {
    int get_button_count(int column) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_button_count", column);
    }
  }
  %extend {
    Ref<Texture> get_button(int column, int button_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_button", column, button_idx).operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    void erase_button(int column, int button_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("erase_button", column, button_idx);
    }
  }
  %extend {
    bool is_button_disabled(int column, int button_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_button_disabled", column, button_idx);
    }
  }
  %extend {
    void set_tooltip(int column, const String& tooltip) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_tooltip", column, tooltip);
    }
  }
  %extend {
    String get_tooltip(int column) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_tooltip", column);
    }
  }
  %extend {
    void move_to_top() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("move_to_top");
    }
  }
  %extend {
    void move_to_bottom() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("move_to_bottom");
    }
  }

};
