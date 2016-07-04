/* mInput.i */
%module mInput

%csmethodmodifiers Input::Input "private"
%csmethodmodifiers Input::SingletonGetInstance "private"
%nodefaultctor Input;

%typemap(csbody_derived) Input %{
  private static $csclassname instance;
  public static readonly int MOUSE_MODE_VISIBLE = 0;
  public static readonly int MOUSE_MODE_HIDDEN = 1;
  public static readonly int MOUSE_MODE_CAPTURED = 2;

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

%typemap(cscode) Input %{
  public static $csclassname Instance {
    get {
      if (instance == null) {
        instance = SingletonGetInstance();
      }
      return instance;
    }
  }

  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Input %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Input;

class Input : public Object {
public:

%extend {

bool is_key_pressed(int scancode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "is_key_pressed");
  const void* __args[1] = { &scancode };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_mouse_button_pressed(int button) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "is_mouse_button_pressed");
  const void* __args[1] = { &button };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_joy_button_pressed(int device, int button) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "is_joy_button_pressed");
  const void* __args[2] = { &device, &button };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_action_pressed(const String& action) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "is_action_pressed");
  const void* __args[1] = { &action };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void add_joy_mapping(const String& mapping, bool update_existing = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "add_joy_mapping");
  const void* __args[2] = { &mapping, &update_existing };
  __method_bind->ptrcall($self, __args, NULL);
}

void remove_joy_mapping(const String& guid) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "remove_joy_mapping");
  const void* __args[1] = { &guid };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_joy_known(int device) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "is_joy_known");
  const void* __args[1] = { &device };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float get_joy_axis(int device, int axis) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "get_joy_axis");
  const void* __args[2] = { &device, &axis };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_joy_name(int device) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "get_joy_name");
  const void* __args[1] = { &device };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_joy_guid(int device) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "get_joy_guid");
  const void* __args[1] = { &device };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 get_joy_vibration_strength(int device) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "get_joy_vibration_strength");
  const void* __args[1] = { &device };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float get_joy_vibration_duration(int device) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "get_joy_vibration_duration");
  const void* __args[1] = { &device };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void start_joy_vibration(int device, float weak_magnitude, float strong_magnitude, float duration = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "start_joy_vibration");
  const void* __args[4] = { &device, &weak_magnitude, &strong_magnitude, &duration };
  __method_bind->ptrcall($self, __args, NULL);
}

void stop_joy_vibration(int device) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "stop_joy_vibration");
  const void* __args[1] = { &device };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_accelerometer() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "get_accelerometer");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector3 get_magnetometer() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "get_magnetometer");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_mouse_speed() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "get_mouse_speed");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_mouse_button_mask() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "get_mouse_button_mask");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_mouse_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "set_mouse_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_mouse_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "get_mouse_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void warp_mouse_pos(const Vector2& to) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "warp_mouse_pos");
  const void* __args[1] = { &to };
  __method_bind->ptrcall($self, __args, NULL);
}

void action_press(const String& action) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "action_press");
  const void* __args[1] = { &action };
  __method_bind->ptrcall($self, __args, NULL);
}

void action_release(const String& action) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "action_release");
  const void* __args[1] = { &action };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_custom_mouse_cursor(Texture* image, const Vector2& hotspot = Vector2(0,0)) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Input", "set_custom_mouse_cursor");
  const void* __args[2] = { image, &hotspot };
  __method_bind->ptrcall($self, __args, NULL);
}

static Input* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("Input")->cast_to<Input>(); }

}


};
