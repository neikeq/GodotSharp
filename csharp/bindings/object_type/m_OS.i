/* m_OS.i */
%module m_OS

%rename(OS) _OS;
%csmethodmodifiers _OS::_OS "private"
%csmethodmodifiers _OS::SingletonGetInstance "private"
%nodefaultctor _OS;

%typemap(csbody_derived) _OS %{
  private static $csclassname instance;
  public static readonly int DAY_SUNDAY = 0;
  public static readonly int DAY_MONDAY = 1;
  public static readonly int DAY_TUESDAY = 2;
  public static readonly int DAY_WEDNESDAY = 3;
  public static readonly int DAY_THURSDAY = 4;
  public static readonly int DAY_FRIDAY = 5;
  public static readonly int DAY_SATURDAY = 6;
  public static readonly int MONTH_JANUARY = 1;
  public static readonly int MONTH_FEBRUARY = 2;
  public static readonly int MONTH_MARCH = 3;
  public static readonly int MONTH_APRIL = 4;
  public static readonly int MONTH_MAY = 5;
  public static readonly int MONTH_JUNE = 6;
  public static readonly int MONTH_JULY = 7;
  public static readonly int MONTH_AUGUST = 8;
  public static readonly int MONTH_SEPTEMBER = 9;
  public static readonly int MONTH_OCTOBER = 10;
  public static readonly int MONTH_NOVEMBER = 11;
  public static readonly int MONTH_DECEMBER = 12;
  public static readonly int SCREEN_ORIENTATION_LANDSCAPE = 0;
  public static readonly int SCREEN_ORIENTATION_PORTRAIT = 1;
  public static readonly int SCREEN_ORIENTATION_REVERSE_LANDSCAPE = 2;
  public static readonly int SCREEN_ORIENTATION_REVERSE_PORTRAIT = 3;
  public static readonly int SCREEN_ORIENTATION_SENSOR_LANDSCAPE = 4;
  public static readonly int SCREEN_ORIENTATION_SENSOR_PORTRAIT = 5;
  public static readonly int SCREEN_ORIENTATION_SENSOR = 6;
  public static readonly int SYSTEM_DIR_DESKTOP = 0;
  public static readonly int SYSTEM_DIR_DCIM = 1;
  public static readonly int SYSTEM_DIR_DOCUMENTS = 2;
  public static readonly int SYSTEM_DIR_DOWNLOADS = 3;
  public static readonly int SYSTEM_DIR_MOVIES = 4;
  public static readonly int SYSTEM_DIR_MUSIC = 5;
  public static readonly int SYSTEM_DIR_PICTURES = 6;
  public static readonly int SYSTEM_DIR_RINGTONES = 7;

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

%typemap(cscode) _OS %{
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

%typemap(csconstruct, excode=SWIGEXCODE) _OS %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor _OS;

class _OS : public Object {
public:

%extend {

void set_clipboard(const String& clipboard) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_clipboard");
  const void* __args[1] = { &clipboard };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_clipboard() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_clipboard");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_video_mode(const Vector2& size, bool fullscreen, bool resizable, int screen = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_video_mode");
  const void* __args[4] = { &size, &fullscreen, &resizable, &screen };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_video_mode_size(int screen = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_video_mode_size");
  const void* __args[1] = { &screen };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_video_mode_fullscreen(int screen = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "is_video_mode_fullscreen");
  const void* __args[1] = { &screen };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_video_mode_resizable(int screen = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "is_video_mode_resizable");
  const void* __args[1] = { &screen };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array get_fullscreen_mode_list(int screen = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_fullscreen_mode_list");
  const void* __args[1] = { &screen };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_screen_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_screen_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_current_screen() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_current_screen");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_current_screen(int screen) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_current_screen");
  const void* __args[1] = { &screen };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_screen_position(int screen = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_screen_position");
  const void* __args[1] = { &screen };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 get_screen_size(int screen = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_screen_size");
  const void* __args[1] = { &screen };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_screen_dpi(int screen = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_screen_dpi");
  const void* __args[1] = { &screen };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 get_window_position() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_window_position");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_window_position(const Vector2& position) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_window_position");
  const void* __args[1] = { &position };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_window_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_window_size");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_window_size(const Vector2& size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_window_size");
  const void* __args[1] = { &size };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_window_fullscreen(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_window_fullscreen");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_window_fullscreen() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "is_window_fullscreen");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_window_resizable(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_window_resizable");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_window_resizable() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "is_window_resizable");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_window_minimized(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_window_minimized");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_window_minimized() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "is_window_minimized");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_window_maximized(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_window_maximized");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_window_maximized() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "is_window_maximized");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_borderless_window(bool borderless) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_borderless_window");
  const void* __args[1] = { &borderless };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_borderless_window() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_borderless_window");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_screen_orientation(int orientation) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_screen_orientation");
  const void* __args[1] = { &orientation };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_screen_orientation() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_screen_orientation");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_keep_screen_on(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_keep_screen_on");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_keep_screen_on() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "is_keep_screen_on");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_iterations_per_second(int iterations_per_second) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_iterations_per_second");
  const void* __args[1] = { &iterations_per_second };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_iterations_per_second() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_iterations_per_second");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_target_fps(int target_fps) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_target_fps");
  const void* __args[1] = { &target_fps };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_target_fps() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_target_fps");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_time_scale(float time_scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_time_scale");
  const void* __args[1] = { &time_scale };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_time_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_time_scale");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool has_touchscreen_ui_hint() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "has_touchscreen_ui_hint");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_window_title(const String& title) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_window_title");
  const void* __args[1] = { &title };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_low_processor_usage_mode(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_low_processor_usage_mode");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_in_low_processor_usage_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "is_in_low_processor_usage_mode");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_processor_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_processor_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_executable_path() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_executable_path");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int execute(const String& path, const StringArray& arguments_, bool blocking, const Array& output = Array()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "execute");
  const void* __args[4] = { &path, &arguments_, &blocking, &output };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int kill(int pid) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "kill");
  const void* __args[1] = { &pid };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int shell_open(const String& uri) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "shell_open");
  const void* __args[1] = { &uri };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_process_ID() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_process_ID");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_environment(const String& environment) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_environment");
  const void* __args[1] = { &environment };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_environment(const String& environment) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "has_environment");
  const void* __args[1] = { &environment };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_name() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_name");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

StringArray get_cmdline_args() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_cmdline_args");
  StringArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Object* get_main_loop() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_main_loop");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Dictionary get_datetime(bool utc = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_datetime");
  const void* __args[1] = { &utc };
  Dictionary ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Dictionary get_date(bool utc = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_date");
  const void* __args[1] = { &utc };
  Dictionary ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Dictionary get_time(bool utc = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_time");
  const void* __args[1] = { &utc };
  Dictionary ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Dictionary get_time_zone_info() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_time_zone_info");
  Dictionary ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_unix_time() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_unix_time");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Dictionary get_datetime_from_unix_time(int unix_time_val) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_datetime_from_unix_time");
  const void* __args[1] = { &unix_time_val };
  Dictionary ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_unix_time_from_datetime(const Dictionary& datetime) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_unix_time_from_datetime");
  const void* __args[1] = { &datetime };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_system_time_secs() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_system_time_secs");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_icon(const Image& icon) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_icon");
  const void* __args[1] = { &icon };
  __method_bind->ptrcall($self, __args, NULL);
}

void delay_usec(int usec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "delay_usec");
  const void* __args[1] = { &usec };
  __method_bind->ptrcall($self, __args, NULL);
}

void delay_msec(int msec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "delay_msec");
  const void* __args[1] = { &msec };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_ticks_msec() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_ticks_msec");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_splash_tick_msec() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_splash_tick_msec");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_locale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_locale");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_model_name() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_model_name");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_custom_level() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_custom_level");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool can_draw() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "can_draw");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_frames_drawn() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_frames_drawn");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_stdout_verbose() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "is_stdout_verbose");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool can_use_threads() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "can_use_threads");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_debug_build() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "is_debug_build");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void dump_memory_to_file(const String& file) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "dump_memory_to_file");
  const void* __args[1] = { &file };
  __method_bind->ptrcall($self, __args, NULL);
}

void dump_resources_to_file(const String& file) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "dump_resources_to_file");
  const void* __args[1] = { &file };
  __method_bind->ptrcall($self, __args, NULL);
}

void print_resources_in_use(bool short_ = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "print_resources_in_use");
  const void* __args[1] = { &short_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void print_all_resources(const String& tofile = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "print_all_resources");
  const void* __args[1] = { &tofile };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_static_memory_usage() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_static_memory_usage");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_static_memory_peak_usage() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_static_memory_peak_usage");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_dynamic_memory_usage() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_dynamic_memory_usage");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_data_dir() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_data_dir");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_system_dir(int dir) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_system_dir");
  const void* __args[1] = { &dir };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_unique_ID() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_unique_ID");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_ok_left_and_cancel_right() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "is_ok_left_and_cancel_right");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_frames_per_second() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_frames_per_second");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void print_all_textures_by_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "print_all_textures_by_size");
  __method_bind->ptrcall($self, NULL, NULL);
}

void print_resources_by_type(const StringArray& types) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "print_resources_by_type");
  const void* __args[1] = { &types };
  __method_bind->ptrcall($self, __args, NULL);
}

int native_video_play(const String& path, float volume, const String& audio_track, const String& subtitle_track) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "native_video_play");
  const void* __args[4] = { &path, &volume, &audio_track, &subtitle_track };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool native_video_is_playing() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "native_video_is_playing");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void native_video_stop() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "native_video_stop");
  __method_bind->ptrcall($self, NULL, NULL);
}

void native_video_pause() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "native_video_pause");
  __method_bind->ptrcall($self, NULL, NULL);
}

void native_video_unpause() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "native_video_unpause");
  __method_bind->ptrcall($self, NULL, NULL);
}

String get_scancode_string(int code) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "get_scancode_string");
  const void* __args[1] = { &code };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_scancode_unicode(int code) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "is_scancode_unicode");
  const void* __args[1] = { &code };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int find_scancode_from_string(const String& string) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "find_scancode_from_string");
  const void* __args[1] = { &string };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_use_file_access_save_and_swap(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_use_file_access_save_and_swap");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

void alert(const String& text, const String& title = "Alert!") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "alert");
  const void* __args[2] = { &text, &title };
  __method_bind->ptrcall($self, __args, NULL);
}

int set_thread_name(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_thread_name");
  const void* __args[1] = { &name };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_use_vsync(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "set_use_vsync");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_vsnc_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_OS", "is_vsnc_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

static _OS* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("OS")->cast_to<_OS>(); }

}


};
