/* mOptionButton.i */
%module mOptionButton


%typemap(csbody_derived) OptionButton %{

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

%typemap(cscode) OptionButton %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) OptionButton %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor OptionButton;

class OptionButton : public Button {
public:
  OptionButton();

%extend {

void add_item(const String& label, int id = -1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "add_item");
  const void* __args[2] = { &label, &id };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_icon_item(Texture* texture, const String& label, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "add_icon_item");
  const void* __args[3] = { texture, &label, &id };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_text(int idx, const String& text) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "set_item_text");
  const void* __args[2] = { &idx, &text };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_icon(int idx, Texture* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "set_item_icon");
  const void* __args[2] = { &idx, texture };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_disabled(int idx, bool disabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "set_item_disabled");
  const void* __args[2] = { &idx, &disabled };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_ID(int idx, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "set_item_ID");
  const void* __args[2] = { &idx, &id };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_metadata(int idx, const Variant& metadata) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "set_item_metadata");
  const void* __args[2] = { &idx, &metadata };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_item_text(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "get_item_text");
  const void* __args[1] = { &idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Ref<Texture> get_item_icon(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "get_item_icon");
  const void* __args[1] = { &idx };
  Ref<Texture> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_item_ID(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "get_item_ID");
  const void* __args[1] = { &idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void get_item_metadata(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "get_item_metadata");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_item_disabled(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "is_item_disabled");
  const void* __args[1] = { &idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_item_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "get_item_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_separator() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "add_separator");
  __method_bind->ptrcall($self, NULL, NULL);
}

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

void select(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "select");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_selected() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "get_selected");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_selected_ID() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "get_selected_ID");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void get_selected_metadata() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "get_selected_metadata");
  __method_bind->ptrcall($self, NULL, NULL);
}

void remove_item(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("OptionButton", "remove_item");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

}


};
