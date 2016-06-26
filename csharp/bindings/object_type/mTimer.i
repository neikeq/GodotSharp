/* mTimer.i */
%module mTimer


%typemap(csbody_derived) Timer %{
  public static readonly int TIMER_PROCESS_FIXED = 0;
  public static readonly int TIMER_PROCESS_IDLE = 1;

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

%typemap(cscode) Timer %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Timer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Timer;

class Timer : public Node {
public:
  Timer();

%extend {

void set_wait_time(float time_sec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Timer", "set_wait_time");
  const void* __args[1] = { &time_sec };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_wait_time() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Timer", "get_wait_time");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_one_shot(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Timer", "set_one_shot");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_one_shot() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Timer", "is_one_shot");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_autostart(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Timer", "set_autostart");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_autostart() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Timer", "has_autostart");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void start() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Timer", "start");
  __method_bind->ptrcall($self, NULL, NULL);
}

void stop() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Timer", "stop");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_active(bool active) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Timer", "set_active");
  const void* __args[1] = { &active };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_active() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Timer", "is_active");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_time_left() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Timer", "get_time_left");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_timer_process_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Timer", "set_timer_process_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_timer_process_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Timer", "get_timer_process_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
