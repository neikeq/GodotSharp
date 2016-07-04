/* mMainLoop.i */
%module mMainLoop


%typemap(csbody_derived) MainLoop %{
  public static readonly int NOTIFICATION_WM_MOUSE_ENTER = 3;
  public static readonly int NOTIFICATION_WM_MOUSE_EXIT = 4;
  public static readonly int NOTIFICATION_WM_FOCUS_IN = 5;
  public static readonly int NOTIFICATION_WM_FOCUS_OUT = 6;
  public static readonly int NOTIFICATION_WM_QUIT_REQUEST = 7;
  public static readonly int NOTIFICATION_WM_UNFOCUS_REQUEST = 8;
  public static readonly int NOTIFICATION_OS_MEMORY_WARNING = 9;

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

%typemap(cscode) MainLoop %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) MainLoop %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor MainLoop;

class MainLoop : public Object {
public:
  MainLoop();

%extend {

void _drop_files(const StringArray& files, int screen) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MainLoop", "_drop_files");
  const void* __args[2] = { &files, &screen };
  __method_bind->ptrcall($self, __args, NULL);
}

void _finalize() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MainLoop", "_finalize");
  __method_bind->ptrcall($self, NULL, NULL);
}

void _idle(float delta) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MainLoop", "_idle");
  const void* __args[1] = { &delta };
  __method_bind->ptrcall($self, __args, NULL);
}

void _initialize() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MainLoop", "_initialize");
  __method_bind->ptrcall($self, NULL, NULL);
}

void _input_event(const InputEvent& ev) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MainLoop", "_input_event");
  const void* __args[1] = { &ev };
  __method_bind->ptrcall($self, __args, NULL);
}

void _input_text(const String& text) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MainLoop", "_input_text");
  const void* __args[1] = { &text };
  __method_bind->ptrcall($self, __args, NULL);
}

void _iteration(float delta) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MainLoop", "_iteration");
  const void* __args[1] = { &delta };
  __method_bind->ptrcall($self, __args, NULL);
}

void input_event(const InputEvent& ev) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MainLoop", "input_event");
  const void* __args[1] = { &ev };
  __method_bind->ptrcall($self, __args, NULL);
}

void input_text(const String& text) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MainLoop", "input_text");
  const void* __args[1] = { &text };
  __method_bind->ptrcall($self, __args, NULL);
}

void init() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MainLoop", "init");
  __method_bind->ptrcall($self, NULL, NULL);
}

bool iteration(float delta) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MainLoop", "iteration");
  const void* __args[1] = { &delta };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool idle(float delta) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MainLoop", "idle");
  const void* __args[1] = { &delta };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void finish() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MainLoop", "finish");
  __method_bind->ptrcall($self, NULL, NULL);
}

}


};
