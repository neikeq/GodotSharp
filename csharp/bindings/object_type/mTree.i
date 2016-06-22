/* mTree.i */
%module mTree

%typemap(out) Tree "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Tree* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


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
  %extend {
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  %extend {
    TreeItem* create_item(TreeItem* parent = NULL) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("create_item", parent).operator Object *()->cast_to<TreeItem>();
    }
  }
  %extend {
    TreeItem* get_root() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_root").operator Object *()->cast_to<TreeItem>();
    }
  }
  %extend {
    void set_column_min_width(int column, int min_width) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_column_min_width", column, min_width);
    }
  }
  %extend {
    void set_column_expand(int column, bool expand) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_column_expand", column, expand);
    }
  }
  %extend {
    int get_column_width(int column) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_column_width", column);
    }
  }
  %extend {
    void set_hide_root(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_hide_root", enable);
    }
  }
  %extend {
    TreeItem* get_next_selected(TreeItem* from) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_next_selected", from).operator Object *()->cast_to<TreeItem>();
    }
  }
  %extend {
    TreeItem* get_selected() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_selected").operator Object *()->cast_to<TreeItem>();
    }
  }
  %extend {
    int get_selected_column() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_selected_column");
    }
  }
  %extend {
    int get_pressed_button() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pressed_button");
    }
  }
  %extend {
    void set_select_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_select_mode", mode);
    }
  }
  %extend {
    void set_columns(int amount) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_columns", amount);
    }
  }
  %extend {
    int get_columns() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_columns");
    }
  }
  %extend {
    TreeItem* get_edited() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_edited").operator Object *()->cast_to<TreeItem>();
    }
  }
  %extend {
    int get_edited_column() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_edited_column");
    }
  }
  %extend {
    Rect2 get_custom_popup_rect() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_custom_popup_rect");
    }
  }
  %extend {
    Rect2 get_item_area_rect(TreeItem* item, int column = -1) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_area_rect", item, column);
    }
  }
  %extend {
    TreeItem* get_item_at_pos(const Vector2& pos) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_at_pos", pos).operator Object *()->cast_to<TreeItem>();
    }
  }
  %extend {
    int get_column_at_pos(const Vector2& pos) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_column_at_pos", pos);
    }
  }
  %extend {
    void ensure_cursor_is_visible() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("ensure_cursor_is_visible");
    }
  }
  %extend {
    void set_column_titles_visible(bool visible) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_column_titles_visible", visible);
    }
  }
  %extend {
    bool are_column_titles_visible() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("are_column_titles_visible");
    }
  }
  %extend {
    void set_column_title(int column, const String& title) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_column_title", column, title);
    }
  }
  %extend {
    String get_column_title(int column) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_column_title", column);
    }
  }
  %extend {
    Vector2 get_scroll() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_scroll");
    }
  }
  %extend {
    void set_hide_folding(bool hide) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_hide_folding", hide);
    }
  }
  %extend {
    bool is_folding_hidden() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_folding_hidden");
    }
  }
  %extend {
    void set_drop_mode_flags(int flags) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_drop_mode_flags", flags);
    }
  }
  %extend {
    int get_drop_mode_flags() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_drop_mode_flags");
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
    void set_single_select_cell_editing_only_when_already_selected(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_single_select_cell_editing_only_when_already_selected", enable);
    }
  }
  %extend {
    bool get_single_select_cell_editing_only_when_already_selected() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_single_select_cell_editing_only_when_already_selected");
    }
  }
  Tree();

};
