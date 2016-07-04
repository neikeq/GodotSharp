/* mPopupMenu.i */
%module mPopupMenu


%typemap(csbody_derived) PopupMenu %{

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

%typemap(cscode) PopupMenu %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) PopupMenu %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PopupMenu;

class PopupMenu : public Popup {
public:
  PopupMenu();

%extend {

void add_icon_item(Object* texture, const String& label, int id = -1, int accel = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "add_icon_item");
  const void* __args[4] = { texture, &label, &id, &accel };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_item(const String& label, int id = -1, int accel = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "add_item");
  const void* __args[3] = { &label, &id, &accel };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_icon_check_item(Object* texture, const String& label, int id = -1, int accel = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "add_icon_check_item");
  const void* __args[4] = { texture, &label, &id, &accel };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_check_item(const String& label, int id = -1, int accel = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "add_check_item");
  const void* __args[3] = { &label, &id, &accel };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_submenu_item(const String& label, const String& submenu, int id = -1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "add_submenu_item");
  const void* __args[3] = { &label, &submenu, &id };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_icon_shortcut(Object* texture, ShortCut* shortcut, int id = -1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "add_icon_shortcut");
  const void* __args[3] = { texture, shortcut, &id };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_shortcut(ShortCut* shortcut, int id = -1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "add_shortcut");
  const void* __args[2] = { shortcut, &id };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_icon_check_shortcut(Object* texture, ShortCut* shortcut, int id = -1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "add_icon_check_shortcut");
  const void* __args[3] = { texture, shortcut, &id };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_check_shortcut(ShortCut* shortcut, int id = -1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "add_check_shortcut");
  const void* __args[2] = { shortcut, &id };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_text(int idx, const String& text) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "set_item_text");
  const void* __args[2] = { &idx, &text };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_icon(int idx, Object* icon) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "set_item_icon");
  const void* __args[2] = { &idx, icon };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_accelerator(int idx, int accel) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "set_item_accelerator");
  const void* __args[2] = { &idx, &accel };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_metadata(int idx, const Variant& metadata) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "set_item_metadata");
  const void* __args[2] = { &idx, &metadata };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_checked(int idx, bool checked) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "set_item_checked");
  const void* __args[2] = { &idx, &checked };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_disabled(int idx, bool disabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "set_item_disabled");
  const void* __args[2] = { &idx, &disabled };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_shortcut(int idx, ShortCut* shortcut) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "set_item_shortcut");
  const void* __args[2] = { &idx, shortcut };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_submenu(int idx, const String& submenu) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "set_item_submenu");
  const void* __args[2] = { &idx, &submenu };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_as_separator(int idx, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "set_item_as_separator");
  const void* __args[2] = { &idx, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_as_checkable(int idx, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "set_item_as_checkable");
  const void* __args[2] = { &idx, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_ID(int idx, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "set_item_ID");
  const void* __args[2] = { &idx, &id };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_item_text(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "get_item_text");
  const void* __args[1] = { &idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Object* get_item_icon(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "get_item_icon");
  const void* __args[1] = { &idx };
  Object* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void get_item_metadata(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "get_item_metadata");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_item_accelerator(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "get_item_accelerator");
  const void* __args[1] = { &idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Ref<ShortCut> get_item_shortcut(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "get_item_shortcut");
  const void* __args[1] = { &idx };
  Ref<ShortCut> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_item_submenu(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "get_item_submenu");
  const void* __args[1] = { &idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_item_separator(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "is_item_separator");
  const void* __args[1] = { &idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_item_checkable(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "is_item_checkable");
  const void* __args[1] = { &idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_item_checked(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "is_item_checked");
  const void* __args[1] = { &idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_item_disabled(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "is_item_disabled");
  const void* __args[1] = { &idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_item_ID(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "get_item_ID");
  const void* __args[1] = { &idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_item_index(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "get_item_index");
  const void* __args[1] = { &id };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_item_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "get_item_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_separator() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "add_separator");
  __method_bind->ptrcall($self, NULL, NULL);
}

void remove_item(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "remove_item");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PopupMenu", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

}


};
