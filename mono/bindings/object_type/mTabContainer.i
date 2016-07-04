/* mTabContainer.i */
%module mTabContainer


%typemap(csbody_derived) TabContainer %{

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

%typemap(cscode) TabContainer %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) TabContainer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor TabContainer;

class TabContainer : public Control {
public:
  TabContainer();

%extend {

int get_tab_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TabContainer", "get_tab_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_current_tab(int tab_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TabContainer", "set_current_tab");
  const void* __args[1] = { &tab_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_current_tab() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TabContainer", "get_current_tab");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Control* get_current_tab_control() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TabContainer", "get_current_tab_control");
  Control* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Control* get_tab_control(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TabContainer", "get_tab_control");
  const void* __args[1] = { &idx };
  Control* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_tab_align(int align) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TabContainer", "set_tab_align");
  const void* __args[1] = { &align };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_tab_align() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TabContainer", "get_tab_align");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_tabs_visible(bool visible) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TabContainer", "set_tabs_visible");
  const void* __args[1] = { &visible };
  __method_bind->ptrcall($self, __args, NULL);
}

bool are_tabs_visible() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TabContainer", "are_tabs_visible");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_tab_title(int tab_idx, const String& title) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TabContainer", "set_tab_title");
  const void* __args[2] = { &tab_idx, &title };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_tab_title(int tab_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TabContainer", "get_tab_title");
  const void* __args[1] = { &tab_idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_tab_icon(int tab_idx, Texture* icon) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TabContainer", "set_tab_icon");
  const void* __args[2] = { &tab_idx, icon };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Texture> get_tab_icon(int tab_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TabContainer", "get_tab_icon");
  const void* __args[1] = { &tab_idx };
  Ref<Texture> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_popup(Popup* popup) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TabContainer", "set_popup");
  const void* __args[1] = { popup };
  __method_bind->ptrcall($self, __args, NULL);
}

Popup* get_popup() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TabContainer", "get_popup");
  Popup* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
