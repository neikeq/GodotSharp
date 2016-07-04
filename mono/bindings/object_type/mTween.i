/* mTween.i */
%module mTween


%typemap(csbody_derived) Tween %{
  public static readonly int TWEEN_PROCESS_FIXED = 0;
  public static readonly int TWEEN_PROCESS_IDLE = 1;
  public static readonly int TRANS_LINEAR = 0;
  public static readonly int TRANS_SINE = 1;
  public static readonly int TRANS_QUINT = 2;
  public static readonly int TRANS_QUART = 3;
  public static readonly int TRANS_QUAD = 4;
  public static readonly int TRANS_EXPO = 5;
  public static readonly int TRANS_ELASTIC = 6;
  public static readonly int TRANS_CUBIC = 7;
  public static readonly int TRANS_CIRC = 8;
  public static readonly int TRANS_BOUNCE = 9;
  public static readonly int TRANS_BACK = 10;
  public static readonly int EASE_IN = 0;
  public static readonly int EASE_OUT = 1;
  public static readonly int EASE_IN_OUT = 2;
  public static readonly int EASE_OUT_IN = 3;

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

%typemap(cscode) Tween %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Tween %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Tween;

class Tween : public Node {
public:
  Tween();

%extend {

bool is_active() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "is_active");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_active(bool active) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "set_active");
  const void* __args[1] = { &active };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_repeat() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "is_repeat");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_repeat(bool repeat) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "set_repeat");
  const void* __args[1] = { &repeat };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_speed(float speed) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "set_speed");
  const void* __args[1] = { &speed };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_speed() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "get_speed");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_tween_process_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "set_tween_process_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_tween_process_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "get_tween_process_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool start() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "start");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool reset(Object* object, const String& key) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "reset");
  const void* __args[2] = { object, &key };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool reset_all() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "reset_all");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool stop(Object* object, const String& key) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "stop");
  const void* __args[2] = { object, &key };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool stop_all() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "stop_all");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool resume(Object* object, const String& key) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "resume");
  const void* __args[2] = { object, &key };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool resume_all() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "resume_all");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool remove(Object* object, const String& key) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "remove");
  const void* __args[2] = { object, &key };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool remove_all() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "remove_all");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool seek(float time) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "seek");
  const void* __args[1] = { &time };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float tell() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "tell");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_runtime() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "get_runtime");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool interpolate_property(Object* object, const String& property, const Variant& initial_val, const Variant& final_val, float times_in_sec, int trans_type, int ease_type, float delay = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "interpolate_property");
  const void* __args[8] = { object, &property, &initial_val, &final_val, &times_in_sec, &trans_type, &ease_type, &delay };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool interpolate_method(Object* object, const String& method, const Variant& initial_val, const Variant& final_val, float times_in_sec, int trans_type, int ease_type, float delay = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "interpolate_method");
  const void* __args[8] = { object, &method, &initial_val, &final_val, &times_in_sec, &trans_type, &ease_type, &delay };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool interpolate_callback(Object* object, float times_in_sec, const String& callback, const Variant& arg1_ = Variant(), const Variant& arg2_ = Variant(), const Variant& arg3_ = Variant(), const Variant& arg4_ = Variant(), const Variant& arg5_ = Variant()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "interpolate_callback");
  const void* __args[8] = { object, &times_in_sec, &callback, &arg1_, &arg2_, &arg3_, &arg4_, &arg5_ };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool interpolate_deferred_callback(Object* object, float times_in_sec, const String& callback, const Variant& arg1_ = Variant(), const Variant& arg2_ = Variant(), const Variant& arg3_ = Variant(), const Variant& arg4_ = Variant(), const Variant& arg5_ = Variant()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "interpolate_deferred_callback");
  const void* __args[8] = { object, &times_in_sec, &callback, &arg1_, &arg2_, &arg3_, &arg4_, &arg5_ };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool follow_property(Object* object, const String& property, const Variant& initial_val, Object* target, const String& target_property, float times_in_sec, int trans_type, int ease_type, float delay = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "follow_property");
  const void* __args[9] = { object, &property, &initial_val, target, &target_property, &times_in_sec, &trans_type, &ease_type, &delay };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool follow_method(Object* object, const String& method, const Variant& initial_val, Object* target, const String& target_method, float times_in_sec, int trans_type, int ease_type, float delay = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "follow_method");
  const void* __args[9] = { object, &method, &initial_val, target, &target_method, &times_in_sec, &trans_type, &ease_type, &delay };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool targeting_property(Object* object, const String& property, Object* initial, const String& initial_val, const Variant& final_val, float times_in_sec, int trans_type, int ease_type, float delay = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "targeting_property");
  const void* __args[9] = { object, &property, initial, &initial_val, &final_val, &times_in_sec, &trans_type, &ease_type, &delay };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool targeting_method(Object* object, const String& method, Object* initial, const String& initial_method, const Variant& final_val, float times_in_sec, int trans_type, int ease_type, float delay = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Tween", "targeting_method");
  const void* __args[9] = { object, &method, initial, &initial_method, &final_val, &times_in_sec, &trans_type, &ease_type, &delay };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

}


};
