/* mItemList.i */
%module mItemList

%typemap(out) ItemList "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ItemList* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) ItemList %{
  public static readonly int ICON_MODE_TOP = 0;
  public static readonly int ICON_MODE_LEFT = 1;
  public static readonly int SELECT_SINGLE = 0;
  public static readonly int SELECT_MULTI = 1;

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

%typemap(cscode) ItemList %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ItemList %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ItemList;

class ItemList : public Control {
public:
  %extend {
    void add_item(const String& text, Ref<Texture> icon = Ref<Texture>(), bool selectable = true) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_item", text, icon, selectable);
    }
  }
  %extend {
    void add_icon_item(Ref<Texture> icon, bool selectable = true) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_icon_item", icon, selectable);
    }
  }
  %extend {
    void set_item_text(int idx, const String& text) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_text", idx, text);
    }
  }
  %extend {
    String get_item_text(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_text", idx);
    }
  }
  %extend {
    void set_item_icon(int idx, Ref<Texture> icon) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_icon", idx, icon);
    }
  }
  %extend {
    Ref<Texture> get_item_icon(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_icon", idx).operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    void set_item_icon_region(int idx, const Rect2& rect) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_icon_region", idx, rect);
    }
  }
  %extend {
    Rect2 get_item_icon_region(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_icon_region", idx);
    }
  }
  %extend {
    void set_item_selectable(int idx, bool selectable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_selectable", idx, selectable);
    }
  }
  %extend {
    bool is_item_selectable(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_item_selectable", idx);
    }
  }
  %extend {
    void set_item_disabled(int idx, bool disabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_disabled", idx, disabled);
    }
  }
  %extend {
    bool is_item_disabled(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_item_disabled", idx);
    }
  }
  %extend {
    void set_item_metadata(int idx, const Variant& metadata) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_metadata", idx, metadata);
    }
  }
  %extend {
    void get_item_metadata(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("get_item_metadata", idx);
    }
  }
  %extend {
    void set_item_custom_bg_color(int idx, const Color& custom_bg_color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_custom_bg_color", idx, custom_bg_color);
    }
  }
  %extend {
    Color get_item_custom_bg_color(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_custom_bg_color", idx);
    }
  }
  %extend {
    void set_item_tooltip(int idx, const String& tooltip) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_tooltip", idx, tooltip);
    }
  }
  %extend {
    String get_item_tooltip(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_tooltip", idx);
    }
  }
  %extend {
    void select(int idx, bool single = true) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("select", idx, single);
    }
  }
  %extend {
    void unselect(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("unselect", idx);
    }
  }
  %extend {
    bool is_selected(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_selected", idx);
    }
  }
  %extend {
    int get_item_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_count");
    }
  }
  %extend {
    void remove_item(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_item", idx);
    }
  }
  %extend {
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  %extend {
    void sort_items_by_text() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("sort_items_by_text");
    }
  }
  %extend {
    void set_fixed_column_width(int width) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_fixed_column_width", width);
    }
  }
  %extend {
    int get_fixed_column_width() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_fixed_column_width");
    }
  }
  %extend {
    void set_same_column_width(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_same_column_width", enable);
    }
  }
  %extend {
    int is_same_column_width() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_same_column_width");
    }
  }
  %extend {
    void set_max_text_lines(int lines) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_max_text_lines", lines);
    }
  }
  %extend {
    int get_max_text_lines() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_max_text_lines");
    }
  }
  %extend {
    void set_max_columns(int amount) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_max_columns", amount);
    }
  }
  %extend {
    int get_max_columns() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_max_columns");
    }
  }
  %extend {
    void set_select_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_select_mode", mode);
    }
  }
  %extend {
    int get_select_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_select_mode");
    }
  }
  %extend {
    void set_icon_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_icon_mode", mode);
    }
  }
  %extend {
    int get_icon_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_icon_mode");
    }
  }
  %extend {
    void set_fixed_icon_size(const Vector2& size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_fixed_icon_size", size);
    }
  }
  %extend {
    Vector2 get_fixed_icon_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_fixed_icon_size");
    }
  }
  %extend {
    void set_icon_scale(float scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_icon_scale", scale);
    }
  }
  %extend {
    float get_icon_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_icon_scale");
    }
  }
  %extend {
    void set_allow_rmb_select(bool allow) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_allow_rmb_select", allow);
    }
  }
  %extend {
    bool get_allow_rmb_select() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_allow_rmb_select");
    }
  }
  %extend {
    int get_item_at_pos(const Vector2& pos, bool exact = false) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_at_pos", pos, exact);
    }
  }
  %extend {
    void ensure_current_is_visible() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("ensure_current_is_visible");
    }
  }
  ItemList();

};
