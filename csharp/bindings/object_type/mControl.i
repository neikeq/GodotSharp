/* mControl.i */
%module mControl


%typemap(csbody_derived) Control %{
  public static readonly int ANCHOR_BEGIN = 0;
  public static readonly int ANCHOR_END = 1;
  public static readonly int ANCHOR_RATIO = 2;
  public static readonly int ANCHOR_CENTER = 3;
  public static readonly int FOCUS_NONE = 0;
  public static readonly int FOCUS_CLICK = 1;
  public static readonly int FOCUS_ALL = 2;
  public static readonly int NOTIFICATION_RESIZED = 40;
  public static readonly int NOTIFICATION_MOUSE_ENTER = 41;
  public static readonly int NOTIFICATION_MOUSE_EXIT = 42;
  public static readonly int NOTIFICATION_FOCUS_ENTER = 43;
  public static readonly int NOTIFICATION_FOCUS_EXIT = 44;
  public static readonly int NOTIFICATION_THEME_CHANGED = 45;
  public static readonly int NOTIFICATION_MODAL_CLOSE = 46;
  public static readonly int CURSOR_ARROW = 0;
  public static readonly int CURSOR_IBEAM = 1;
  public static readonly int CURSOR_POINTING_HAND = 2;
  public static readonly int CURSOR_CROSS = 3;
  public static readonly int CURSOR_WAIT = 4;
  public static readonly int CURSOR_BUSY = 5;
  public static readonly int CURSOR_DRAG = 6;
  public static readonly int CURSOR_CAN_DROP = 7;
  public static readonly int CURSOR_FORBIDDEN = 8;
  public static readonly int CURSOR_VSIZE = 9;
  public static readonly int CURSOR_HSIZE = 10;
  public static readonly int CURSOR_BDIAGSIZE = 11;
  public static readonly int CURSOR_FDIAGSIZE = 12;
  public static readonly int CURSOR_MOVE = 13;
  public static readonly int CURSOR_VSPLIT = 14;
  public static readonly int CURSOR_HSPLIT = 15;
  public static readonly int CURSOR_HELP = 16;
  public static readonly int SIZE_EXPAND = 1;
  public static readonly int SIZE_FILL = 2;
  public static readonly int SIZE_EXPAND_FILL = 3;

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

%typemap(cscode) Control %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Control %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Control;

class Control : public CanvasItem {
public:
  Control();

%extend {

void _input_event(const InputEvent& event) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "_input_event");
  const void* __args[1] = { &event };
  __method_bind->ptrcall($self, __args, NULL);
}

bool can_drop_data(const Vector2& pos, const Variant& data) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "can_drop_data");
  const void* __args[2] = { &pos, &data };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void drop_data(const Vector2& pos, const Variant& data) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "drop_data");
  const void* __args[2] = { &pos, &data };
  __method_bind->ptrcall($self, __args, NULL);
}

Object* get_drag_data(const Vector2& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_drag_data");
  const void* __args[1] = { &pos };
  Object* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 get_minimum_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_minimum_size");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void accept_event() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "accept_event");
  __method_bind->ptrcall($self, NULL, NULL);
}

Vector2 get_minimum_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_minimum_size");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_combined_minimum_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_combined_minimum_size");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_anchor(int margin, int anchor_mode, bool keep_margin = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_anchor");
  const void* __args[3] = { &margin, &anchor_mode, &keep_margin };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_anchor(int margin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_anchor");
  const void* __args[1] = { &margin };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_margin(int margin, float offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_margin");
  const void* __args[2] = { &margin, &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_anchor_and_margin(int margin, int anchor_mode, float offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_anchor_and_margin");
  const void* __args[3] = { &margin, &anchor_mode, &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_begin(const Vector2& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_begin");
  const void* __args[1] = { &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_end(const Vector2& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_end");
  const void* __args[1] = { &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_pos(const Vector2& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_pos");
  const void* __args[1] = { &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_size(const Vector2& size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_size");
  const void* __args[1] = { &size };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_custom_minimum_size(const Vector2& size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_custom_minimum_size");
  const void* __args[1] = { &size };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_global_pos(const Vector2& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_global_pos");
  const void* __args[1] = { &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_rotation(float radians) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_rotation");
  const void* __args[1] = { &radians };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_rotation_deg(float degrees) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_rotation_deg");
  const void* __args[1] = { &degrees };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_scale(const Vector2& scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_scale");
  const void* __args[1] = { &scale };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_margin(int margin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_margin");
  const void* __args[1] = { &margin };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 get_begin() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_begin");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_end() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_end");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_pos() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_pos");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_size");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_rotation() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_rotation");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_rotation_deg() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_rotation_deg");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_scale");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_custom_minimum_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_custom_minimum_size");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_parent_area_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_parent_area_size");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_global_pos() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_global_pos");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Rect2 get_rect() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_rect");
  Rect2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Rect2 get_global_rect() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_global_rect");
  Rect2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_area_as_parent_rect(int margin = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_area_as_parent_rect");
  const void* __args[1] = { &margin };
  __method_bind->ptrcall($self, __args, NULL);
}

void show_modal(bool exclusive = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "show_modal");
  const void* __args[1] = { &exclusive };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_focus_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_focus_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_focus_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_focus_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool has_focus() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "has_focus");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void grab_focus() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "grab_focus");
  __method_bind->ptrcall($self, NULL, NULL);
}

void release_focus() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "release_focus");
  __method_bind->ptrcall($self, NULL, NULL);
}

Control* get_focus_owner() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_focus_owner");
  Control* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_h_size_flags(int flags) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_h_size_flags");
  const void* __args[1] = { &flags };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_h_size_flags() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_h_size_flags");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_stretch_ratio(float ratio) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_stretch_ratio");
  const void* __args[1] = { &ratio };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_stretch_ratio() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_stretch_ratio");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_v_size_flags(int flags) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_v_size_flags");
  const void* __args[1] = { &flags };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_v_size_flags() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_v_size_flags");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_theme(Theme* theme) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_theme");
  const void* __args[1] = { theme };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Theme> get_theme() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_theme");
  Ref<Theme> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_icon_override(const String& name, Texture* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "add_icon_override");
  const void* __args[2] = { &name, texture };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_shader_override(const String& name, Shader* shader) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "add_shader_override");
  const void* __args[2] = { &name, shader };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_style_override(const String& name, StyleBox* stylebox) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "add_style_override");
  const void* __args[2] = { &name, stylebox };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_font_override(const String& name, Font* font) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "add_font_override");
  const void* __args[2] = { &name, font };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_color_override(const String& name, const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "add_color_override");
  const void* __args[2] = { &name, &color };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_constant_override(const String& name, int constant) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "add_constant_override");
  const void* __args[2] = { &name, &constant };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Texture> get_icon(const String& name, const String& type = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_icon");
  const void* __args[2] = { &name, &type };
  Ref<Texture> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Ref<StyleBox> get_stylebox(const String& name, const String& type = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_stylebox");
  const void* __args[2] = { &name, &type };
  Ref<StyleBox> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Ref<Font> get_font(const String& name, const String& type = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_font");
  const void* __args[2] = { &name, &type };
  Ref<Font> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Color get_color(const String& name, const String& type = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_color");
  const void* __args[2] = { &name, &type };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_constant(const String& name, const String& type = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_constant");
  const void* __args[2] = { &name, &type };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_icon_override(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "has_icon_override");
  const void* __args[1] = { &name };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_stylebox_override(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "has_stylebox_override");
  const void* __args[1] = { &name };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_font_override(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "has_font_override");
  const void* __args[1] = { &name };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_color_override(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "has_color_override");
  const void* __args[1] = { &name };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_constant_override(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "has_constant_override");
  const void* __args[1] = { &name };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_icon(const String& name, const String& type = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "has_icon");
  const void* __args[2] = { &name, &type };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_stylebox(const String& name, const String& type = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "has_stylebox");
  const void* __args[2] = { &name, &type };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_font(const String& name, const String& type = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "has_font");
  const void* __args[2] = { &name, &type };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_color(const String& name, const String& type = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "has_color");
  const void* __args[2] = { &name, &type };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_constant(const String& name, const String& type = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "has_constant");
  const void* __args[2] = { &name, &type };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Control* get_parent_control() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_parent_control");
  Control* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_tooltip(const String& tooltip) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_tooltip");
  const void* __args[1] = { &tooltip };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_tooltip(const Vector2& atpos = Vector2(0,0)) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_tooltip");
  const void* __args[1] = { &atpos };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_default_cursor_shape(int shape) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_default_cursor_shape");
  const void* __args[1] = { &shape };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_default_cursor_shape() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_default_cursor_shape");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_cursor_shape(const Vector2& pos = Vector2(0,0)) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_cursor_shape");
  const void* __args[1] = { &pos };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_focus_neighbour(int margin, const NodePath& neighbour) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_focus_neighbour");
  const void* __args[2] = { &margin, &neighbour };
  __method_bind->ptrcall($self, __args, NULL);
}

NodePath get_focus_neighbour(int margin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "get_focus_neighbour");
  const void* __args[1] = { &margin };
  NodePath ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_ignore_mouse(bool ignore) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_ignore_mouse");
  const void* __args[1] = { &ignore };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_ignoring_mouse() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "is_ignoring_mouse");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void force_drag(const Variant& data, Object* preview) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "force_drag");
  const void* __args[2] = { &data, preview };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_stop_mouse(bool stop) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_stop_mouse");
  const void* __args[1] = { &stop };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_stopping_mouse() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "is_stopping_mouse");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void grab_click_focus() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "grab_click_focus");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_drag_forwarding(Control* target) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_drag_forwarding");
  const void* __args[1] = { target };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_drag_preview(Control* control) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "set_drag_preview");
  const void* __args[1] = { control };
  __method_bind->ptrcall($self, __args, NULL);
}

void warp_mouse(const Vector2& to_pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "warp_mouse");
  const void* __args[1] = { &to_pos };
  __method_bind->ptrcall($self, __args, NULL);
}

void minimum_size_changed() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Control", "minimum_size_changed");
  __method_bind->ptrcall($self, NULL, NULL);
}

}


};
