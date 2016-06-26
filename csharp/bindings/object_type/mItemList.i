/* mItemList.i */
%module mItemList


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
  ItemList();

%extend {

void add_item(const String& text, Texture* icon = NULL, bool selectable = true) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "add_item");
  const void* __args[3] = { &text, icon, &selectable };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_icon_item(Texture* icon, bool selectable = true) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "add_icon_item");
  const void* __args[2] = { icon, &selectable };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_text(int idx, const String& text) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "set_item_text");
  const void* __args[2] = { &idx, &text };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_item_text(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "get_item_text");
  const void* __args[1] = { &idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_item_icon(int idx, Texture* icon) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "set_item_icon");
  const void* __args[2] = { &idx, icon };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Texture> get_item_icon(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "get_item_icon");
  const void* __args[1] = { &idx };
  Ref<Texture> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_item_icon_region(int idx, const Rect2& rect) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "set_item_icon_region");
  const void* __args[2] = { &idx, &rect };
  __method_bind->ptrcall($self, __args, NULL);
}

Rect2 get_item_icon_region(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "get_item_icon_region");
  const void* __args[1] = { &idx };
  Rect2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_item_selectable(int idx, bool selectable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "set_item_selectable");
  const void* __args[2] = { &idx, &selectable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_item_selectable(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "is_item_selectable");
  const void* __args[1] = { &idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_item_disabled(int idx, bool disabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "set_item_disabled");
  const void* __args[2] = { &idx, &disabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_item_disabled(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "is_item_disabled");
  const void* __args[1] = { &idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_item_metadata(int idx, const Variant& metadata) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "set_item_metadata");
  const void* __args[2] = { &idx, &metadata };
  __method_bind->ptrcall($self, __args, NULL);
}

void get_item_metadata(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "get_item_metadata");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_custom_bg_color(int idx, const Color& custom_bg_color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "set_item_custom_bg_color");
  const void* __args[2] = { &idx, &custom_bg_color };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_item_custom_bg_color(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "get_item_custom_bg_color");
  const void* __args[1] = { &idx };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_item_tooltip(int idx, const String& tooltip) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "set_item_tooltip");
  const void* __args[2] = { &idx, &tooltip };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_item_tooltip(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "get_item_tooltip");
  const void* __args[1] = { &idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void select(int idx, bool single = true) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "select");
  const void* __args[2] = { &idx, &single };
  __method_bind->ptrcall($self, __args, NULL);
}

void unselect(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "unselect");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_selected(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "is_selected");
  const void* __args[1] = { &idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_item_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "get_item_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void remove_item(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "remove_item");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

void sort_items_by_text() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "sort_items_by_text");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_fixed_column_width(int width) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "set_fixed_column_width");
  const void* __args[1] = { &width };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_fixed_column_width() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "get_fixed_column_width");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_same_column_width(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "set_same_column_width");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

int is_same_column_width() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "is_same_column_width");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_max_text_lines(int lines) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "set_max_text_lines");
  const void* __args[1] = { &lines };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_max_text_lines() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "get_max_text_lines");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_max_columns(int amount) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "set_max_columns");
  const void* __args[1] = { &amount };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_max_columns() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "get_max_columns");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_select_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "set_select_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_select_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "get_select_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_icon_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "set_icon_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_icon_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "get_icon_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_fixed_icon_size(const Vector2& size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "set_fixed_icon_size");
  const void* __args[1] = { &size };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_fixed_icon_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "get_fixed_icon_size");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_icon_scale(float scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "set_icon_scale");
  const void* __args[1] = { &scale };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_icon_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "get_icon_scale");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_allow_rmb_select(bool allow) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "set_allow_rmb_select");
  const void* __args[1] = { &allow };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_allow_rmb_select() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "get_allow_rmb_select");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_item_at_pos(const Vector2& pos, bool exact = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "get_item_at_pos");
  const void* __args[2] = { &pos, &exact };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void ensure_current_is_visible() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ItemList", "ensure_current_is_visible");
  __method_bind->ptrcall($self, NULL, NULL);
}

}


};
