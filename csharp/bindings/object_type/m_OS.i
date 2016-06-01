/* m_OS.i */
%module m_OS

%rename(OS) _OS;
%nodefaultctor _OS;

%typemap(csbody_derived) _OS %{
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
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) _OS %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor _OS;

class _OS : public Object {
public:
  %extend {
    void set_clipboard(const String& clipboard) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_clipboard", clipboard);
    }
  }
  %extend {
    String get_clipboard() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_clipboard");
    }
  }
  %extend {
    void set_video_mode(const Vector2& size, bool fullscreen, bool resizable, int screen = 0) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_video_mode", size, fullscreen, resizable, screen);
    }
  }
  %extend {
    Vector2 get_video_mode_size(int screen = 0) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_video_mode_size", screen);
    }
  }
  %extend {
    bool is_video_mode_fullscreen(int screen = 0) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_video_mode_fullscreen", screen);
    }
  }
  %extend {
    bool is_video_mode_resizable(int screen = 0) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_video_mode_resizable", screen);
    }
  }
  %extend {
    Array get_fullscreen_mode_list(int screen = 0) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_fullscreen_mode_list", screen);
    }
  }
  %extend {
    int get_screen_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_screen_count");
    }
  }
  %extend {
    int get_current_screen() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_current_screen");
    }
  }
  %extend {
    void set_current_screen(int screen) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_current_screen", screen);
    }
  }
  %extend {
    Vector2 get_screen_position(int screen = 0) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_screen_position", screen);
    }
  }
  %extend {
    Vector2 get_screen_size(int screen = 0) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_screen_size", screen);
    }
  }
  %extend {
    int get_screen_dpi(int screen = 0) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_screen_dpi", screen);
    }
  }
  %extend {
    Vector2 get_window_position() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_window_position");
    }
  }
  %extend {
    void set_window_position(const Vector2& position) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_window_position", position);
    }
  }
  %extend {
    Vector2 get_window_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_window_size");
    }
  }
  %extend {
    void set_window_size(const Vector2& size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_window_size", size);
    }
  }
  %extend {
    void set_window_fullscreen(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_window_fullscreen", enabled);
    }
  }
  %extend {
    bool is_window_fullscreen() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_window_fullscreen");
    }
  }
  %extend {
    void set_window_resizable(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_window_resizable", enabled);
    }
  }
  %extend {
    bool is_window_resizable() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_window_resizable");
    }
  }
  %extend {
    void set_window_minimized(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_window_minimized", enabled);
    }
  }
  %extend {
    bool is_window_minimized() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_window_minimized");
    }
  }
  %extend {
    void set_window_maximized(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_window_maximized", enabled);
    }
  }
  %extend {
    bool is_window_maximized() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_window_maximized");
    }
  }
  %extend {
    void set_borderless_window(bool borderless) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_borderless_window", borderless);
    }
  }
  %extend {
    bool get_borderless_window() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_borderless_window");
    }
  }
  %extend {
    void set_screen_orientation(int orientation) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_screen_orientation", orientation);
    }
  }
  %extend {
    int get_screen_orientation() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_screen_orientation");
    }
  }
  %extend {
    void set_keep_screen_on(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_keep_screen_on", enabled);
    }
  }
  %extend {
    bool is_keep_screen_on() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_keep_screen_on");
    }
  }
  %extend {
    void set_iterations_per_second(int iterations_per_second) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_iterations_per_second", iterations_per_second);
    }
  }
  %extend {
    int get_iterations_per_second() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_iterations_per_second");
    }
  }
  %extend {
    void set_target_fps(int target_fps) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_target_fps", target_fps);
    }
  }
  %extend {
    float get_target_fps() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_target_fps");
    }
  }
  %extend {
    void set_time_scale(float time_scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_time_scale", time_scale);
    }
  }
  %extend {
    float get_time_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_time_scale");
    }
  }
  %extend {
    bool has_touchscreen_ui_hint() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_touchscreen_ui_hint");
    }
  }
  %extend {
    void set_window_title(const String& title) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_window_title", title);
    }
  }
  %extend {
    void set_low_processor_usage_mode(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_low_processor_usage_mode", enable);
    }
  }
  %extend {
    bool is_in_low_processor_usage_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_in_low_processor_usage_mode");
    }
  }
  %extend {
    int get_processor_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_processor_count");
    }
  }
  %extend {
    String get_executable_path() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_executable_path");
    }
  }
  %extend {
    int execute(const String& path, const StringArray& arguments_, bool blocking, const Array& output = Array()) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("execute", path, arguments_, blocking, output);
    }
  }
  %extend {
    int kill(int pid) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("kill", pid);
    }
  }
  %extend {
    int shell_open(const String& uri) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("shell_open", uri);
    }
  }
  %extend {
    int get_process_ID() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_process_ID");
    }
  }
  %extend {
    String get_environment(const String& environment) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_environment", environment);
    }
  }
  %extend {
    bool has_environment(const String& environment) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_environment", environment);
    }
  }
  %extend {
    String get_name() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_name");
    }
  }
  %extend {
    StringArray get_cmdline_args() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_cmdline_args");
    }
  }
  %extend {
    Object* get_main_loop() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_main_loop").operator Object *();
    }
  }
  %extend {
    Dictionary get_datetime(bool utc = false) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_datetime", utc);
    }
  }
  %extend {
    Dictionary get_date(bool utc = false) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_date", utc);
    }
  }
  %extend {
    Dictionary get_time(bool utc = false) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_time", utc);
    }
  }
  %extend {
    Dictionary get_time_zone_info() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_time_zone_info");
    }
  }
  %extend {
    int get_unix_time() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_unix_time");
    }
  }
  %extend {
    Dictionary get_datetime_from_unix_time(int unix_time_val) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_datetime_from_unix_time", unix_time_val);
    }
  }
  %extend {
    int get_unix_time_from_datetime(const Dictionary& datetime) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_unix_time_from_datetime", datetime);
    }
  }
  %extend {
    int get_system_time_secs() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_system_time_secs");
    }
  }
  %extend {
    void set_icon(const Image& icon) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_icon", icon);
    }
  }
  %extend {
    void delay_usec(int usec) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("delay_usec", usec);
    }
  }
  %extend {
    void delay_msec(int msec) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("delay_msec", msec);
    }
  }
  %extend {
    int get_ticks_msec() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_ticks_msec");
    }
  }
  %extend {
    int get_splash_tick_msec() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_splash_tick_msec");
    }
  }
  %extend {
    String get_locale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_locale");
    }
  }
  %extend {
    String get_model_name() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_model_name");
    }
  }
  %extend {
    String get_custom_level() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_custom_level");
    }
  }
  %extend {
    bool can_draw() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("can_draw");
    }
  }
  %extend {
    int get_frames_drawn() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_frames_drawn");
    }
  }
  %extend {
    bool is_stdout_verbose() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_stdout_verbose");
    }
  }
  %extend {
    bool can_use_threads() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("can_use_threads");
    }
  }
  %extend {
    bool is_debug_build() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_debug_build");
    }
  }
  %extend {
    void dump_memory_to_file(const String& file) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("dump_memory_to_file", file);
    }
  }
  %extend {
    void dump_resources_to_file(const String& file) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("dump_resources_to_file", file);
    }
  }
  %extend {
    void print_resources_in_use(bool short_ = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("print_resources_in_use", short_);
    }
  }
  %extend {
    void print_all_resources(const String& tofile = "") {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("print_all_resources", tofile);
    }
  }
  %extend {
    int get_static_memory_usage() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_static_memory_usage");
    }
  }
  %extend {
    int get_static_memory_peak_usage() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_static_memory_peak_usage");
    }
  }
  %extend {
    int get_dynamic_memory_usage() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_dynamic_memory_usage");
    }
  }
  %extend {
    String get_data_dir() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_data_dir");
    }
  }
  %extend {
    String get_system_dir(int dir) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_system_dir", dir);
    }
  }
  %extend {
    String get_unique_ID() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_unique_ID");
    }
  }
  %extend {
    bool is_ok_left_and_cancel_right() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_ok_left_and_cancel_right");
    }
  }
  %extend {
    float get_frames_per_second() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_frames_per_second");
    }
  }
  %extend {
    void print_all_textures_by_size() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("print_all_textures_by_size");
    }
  }
  %extend {
    void print_resources_by_type(const StringArray& types) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("print_resources_by_type", types);
    }
  }
  %extend {
    int native_video_play(const String& path, float volume, const String& audio_track, const String& subtitle_track) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("native_video_play", path, volume, audio_track, subtitle_track);
    }
  }
  %extend {
    bool native_video_is_playing() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("native_video_is_playing");
    }
  }
  %extend {
    void native_video_stop() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("native_video_stop");
    }
  }
  %extend {
    void native_video_pause() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("native_video_pause");
    }
  }
  %extend {
    void native_video_unpause() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("native_video_unpause");
    }
  }
  %extend {
    String get_scancode_string(int code) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_scancode_string", code);
    }
  }
  %extend {
    bool is_scancode_unicode(int code) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_scancode_unicode", code);
    }
  }
  %extend {
    int find_scancode_from_string(const String& string) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("find_scancode_from_string", string);
    }
  }
  %extend {
    void set_use_file_access_save_and_swap(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_use_file_access_save_and_swap", enabled);
    }
  }
  %extend {
    void alert(const String& text, const String& title = "Alert!") {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("alert", text, title);
    }
  }
  %extend {
    int set_thread_name(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("set_thread_name", name);
    }
  }

};
