/* mTree.i */
%module mTree


%typemap(csbody_derived) Tree %{
  public static readonly int SELECT_SINGLE = 0;
  public static readonly int SELECT_ROW = 1;
  public static readonly int SELECT_MULTI = 2;
  public static readonly int DROP_MODE_DISABLED = 0;
  public static readonly int DROP_MODE_ON_ITEM = 1;
  public static readonly int DROP_MODE_INBETWEEN = 2;

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

%typemap(cscode) Tree %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Tree %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Tree;

class Tree : public Control {
public:
  Tree();

%extend {

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

TreeItem* create_item(TreeItem* parent = NULL) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "create_item");
  const void* __args[1] = { parent };
  TreeItem* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

TreeItem* get_root() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "get_root");
  TreeItem* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_column_min_width(int column, int min_width) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "set_column_min_width");
  const void* __args[2] = { &column, &min_width };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_column_expand(int column, bool expand) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "set_column_expand");
  const void* __args[2] = { &column, &expand };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_column_width(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "get_column_width");
  const void* __args[1] = { &column };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_hide_root(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "set_hide_root");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

TreeItem* get_next_selected(TreeItem* from) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "get_next_selected");
  const void* __args[1] = { from };
  TreeItem* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

TreeItem* get_selected() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "get_selected");
  TreeItem* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_selected_column() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "get_selected_column");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_pressed_button() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "get_pressed_button");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_select_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "set_select_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_columns(int amount) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "set_columns");
  const void* __args[1] = { &amount };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_columns() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "get_columns");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

TreeItem* get_edited() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "get_edited");
  TreeItem* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_edited_column() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "get_edited_column");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Rect2 get_custom_popup_rect() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "get_custom_popup_rect");
  Rect2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Rect2 get_item_area_rect(TreeItem* item, int column = -1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "get_item_area_rect");
  const void* __args[2] = { item, &column };
  Rect2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

TreeItem* get_item_at_pos(const Vector2& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "get_item_at_pos");
  const void* __args[1] = { &pos };
  TreeItem* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_column_at_pos(const Vector2& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "get_column_at_pos");
  const void* __args[1] = { &pos };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void ensure_cursor_is_visible() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "ensure_cursor_is_visible");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_column_titles_visible(bool visible) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "set_column_titles_visible");
  const void* __args[1] = { &visible };
  __method_bind->ptrcall($self, __args, NULL);
}

bool are_column_titles_visible() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "are_column_titles_visible");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_column_title(int column, const String& title) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "set_column_title");
  const void* __args[2] = { &column, &title };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_column_title(int column) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "get_column_title");
  const void* __args[1] = { &column };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 get_scroll() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "get_scroll");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_hide_folding(bool hide) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "set_hide_folding");
  const void* __args[1] = { &hide };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_folding_hidden() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "is_folding_hidden");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_drop_mode_flags(int flags) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "set_drop_mode_flags");
  const void* __args[1] = { &flags };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_drop_mode_flags() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "get_drop_mode_flags");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_allow_rmb_select(bool allow) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "set_allow_rmb_select");
  const void* __args[1] = { &allow };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_allow_rmb_select() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "get_allow_rmb_select");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_single_select_cell_editing_only_when_already_selected(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "set_single_select_cell_editing_only_when_already_selected");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_single_select_cell_editing_only_when_already_selected() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tree", "get_single_select_cell_editing_only_when_already_selected");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
