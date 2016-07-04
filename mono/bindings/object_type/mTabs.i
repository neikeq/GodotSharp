/* mTabs.i */
%module mTabs


%typemap(csbody_derived) Tabs %{
  public static readonly int ALIGN_LEFT = 0;
  public static readonly int ALIGN_CENTER = 1;
  public static readonly int ALIGN_RIGHT = 2;
  public static readonly int CLOSE_BUTTON_SHOW_ACTIVE_ONLY = 1;
  public static readonly int CLOSE_BUTTON_SHOW_ALWAYS = 2;
  public static readonly int CLOSE_BUTTON_SHOW_NEVER = 0;

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

%typemap(cscode) Tabs %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Tabs %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Tabs;

class Tabs : public Control {
public:
  Tabs();

%extend {

int get_tab_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tabs", "get_tab_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_current_tab(int tab_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tabs", "set_current_tab");
  const void* __args[1] = { &tab_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_current_tab() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tabs", "get_current_tab");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_tab_title(int tab_idx, const String& title) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tabs", "set_tab_title");
  const void* __args[2] = { &tab_idx, &title };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_tab_title(int tab_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tabs", "get_tab_title");
  const void* __args[1] = { &tab_idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_tab_icon(int tab_idx, Texture* icon) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tabs", "set_tab_icon");
  const void* __args[2] = { &tab_idx, icon };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Texture> get_tab_icon(int tab_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tabs", "get_tab_icon");
  const void* __args[1] = { &tab_idx };
  Ref<Texture> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void remove_tab(int tab_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tabs", "remove_tab");
  const void* __args[1] = { &tab_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_tab(const String& title, Texture* icon) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tabs", "add_tab");
  const void* __args[2] = { &title, icon };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_tab_align(int align) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tabs", "set_tab_align");
  const void* __args[1] = { &align };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_tab_align() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tabs", "get_tab_align");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void ensure_tab_visible(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tabs", "ensure_tab_visible");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

}


};
