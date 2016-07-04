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
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor TreeItem;

class TreeItem : public Object {
public:

%extend {

void set_cell_mode(int column, int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "set_cell_mode");
  const void* __args[2] = { &column, &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_cell_mode(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "get_cell_mode");
  const void* __args[1] = { &column };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_checked(int column, bool checked) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "set_checked");
  const void* __args[2] = { &column, &checked };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_checked(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "is_checked");
  const void* __args[1] = { &column };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_text(int column, const String& text) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "set_text");
  const void* __args[2] = { &column, &text };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_text(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "get_text");
  const void* __args[1] = { &column };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_icon(int column, Texture* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "set_icon");
  const void* __args[2] = { &column, texture };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Texture> get_icon(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "get_icon");
  const void* __args[1] = { &column };
  Ref<Texture> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_icon_region(int column, const Rect2& region) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "set_icon_region");
  const void* __args[2] = { &column, &region };
  __method_bind->ptrcall($self, __args, NULL);
}

Rect2 get_icon_region(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "get_icon_region");
  const void* __args[1] = { &column };
  Rect2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_icon_max_width(int column, int width) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "set_icon_max_width");
  const void* __args[2] = { &column, &width };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_icon_max_width(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "get_icon_max_width");
  const void* __args[1] = { &column };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_range(int column, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "set_range");
  const void* __args[2] = { &column, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_range(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "get_range");
  const void* __args[1] = { &column };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_range_config(int column, float min, float max, float step, bool expr = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "set_range_config");
  const void* __args[5] = { &column, &min, &max, &step, &expr };
  __method_bind->ptrcall($self, __args, NULL);
}

Dictionary get_range_config(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "get_range_config");
  const void* __args[1] = { &column };
  Dictionary ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_metadata(int column, const Variant& meta) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "set_metadata");
  const void* __args[2] = { &column, &meta };
  __method_bind->ptrcall($self, __args, NULL);
}

void get_metadata(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "get_metadata");
  const void* __args[1] = { &column };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_custom_draw(int column, Object* object, const String& callback) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "set_custom_draw");
  const void* __args[3] = { &column, object, &callback };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_collapsed(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "set_collapsed");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_collapsed() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "is_collapsed");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

TreeItem* get_next() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "get_next");
  TreeItem* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

TreeItem* get_prev() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "get_prev");
  TreeItem* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

TreeItem* get_parent() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "get_parent");
  TreeItem* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

TreeItem* get_children() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "get_children");
  TreeItem* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

TreeItem* get_next_visible() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "get_next_visible");
  TreeItem* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

TreeItem* get_prev_visible() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "get_prev_visible");
  TreeItem* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

TreeItem* remove_child(Object* child) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "remove_child");
  const void* __args[1] = { child };
  TreeItem* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_selectable(int column, bool selectable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "set_selectable");
  const void* __args[2] = { &column, &selectable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_selectable(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "is_selectable");
  const void* __args[1] = { &column };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_selected(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "is_selected");
  const void* __args[1] = { &column };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void select(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "select");
  const void* __args[1] = { &column };
  __method_bind->ptrcall($self, __args, NULL);
}

void deselect(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "deselect");
  const void* __args[1] = { &column };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_editable(int column, bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "set_editable");
  const void* __args[2] = { &column, &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_editable(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "is_editable");
  const void* __args[1] = { &column };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_custom_color(int column, const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "set_custom_color");
  const void* __args[2] = { &column, &color };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear_custom_color(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "clear_custom_color");
  const void* __args[1] = { &column };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_custom_bg_color(int column, const Color& color, bool just_outline = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "set_custom_bg_color");
  const void* __args[3] = { &column, &color, &just_outline };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear_custom_bg_color(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "clear_custom_bg_color");
  const void* __args[1] = { &column };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_custom_bg_color(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "get_custom_bg_color");
  const void* __args[1] = { &column };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void add_button(int column, Texture* button, int button_idx = -1, bool disabled = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "add_button");
  const void* __args[4] = { &column, button, &button_idx, &disabled };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_button_count(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "get_button_count");
  const void* __args[1] = { &column };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Ref<Texture> get_button(int column, int button_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "get_button");
  const void* __args[2] = { &column, &button_idx };
  Ref<Texture> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void erase_button(int column, int button_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "erase_button");
  const void* __args[2] = { &column, &button_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_button_disabled(int column, int button_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "is_button_disabled");
  const void* __args[2] = { &column, &button_idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_tooltip(int column, const String& tooltip) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "set_tooltip");
  const void* __args[2] = { &column, &tooltip };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_tooltip(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "get_tooltip");
  const void* __args[1] = { &column };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void move_to_top() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "move_to_top");
  __method_bind->ptrcall($self, NULL, NULL);
}

void move_to_bottom() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TreeItem", "move_to_bottom");
  __method_bind->ptrcall($self, NULL, NULL);
}

}


};
