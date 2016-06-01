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
    }$excode
  }
%}

%nodefaultdtor Control;

class Control : public CanvasItem {
public:
  %extend {
    void _input_event(const InputEvent& event) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_input_event", event);
    }
  }
  %extend {
    bool can_drop_data(const Vector2& pos, const Variant& data) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("can_drop_data", pos, data);
    }
  }
  %extend {
    void drop_data(const Vector2& pos, const Variant& data) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("drop_data", pos, data);
    }
  }
  %extend {
    Object* get_drag_data(const Vector2& pos) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_drag_data", pos).operator Object *();
    }
  }
  %extend {
    Vector2 get_minimum_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_minimum_size");
    }
  }
  %extend {
    void accept_event() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("accept_event");
    }
  }
  %extend {
    Vector2 get_minimum_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_minimum_size");
    }
  }
  %extend {
    Vector2 get_combined_minimum_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_combined_minimum_size");
    }
  }
  %extend {
    void set_anchor(int margin, int anchor_mode, bool keep_margin = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_anchor", margin, anchor_mode, keep_margin);
    }
  }
  %extend {
    int get_anchor(int margin) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_anchor", margin);
    }
  }
  %extend {
    void set_margin(int margin, float offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_margin", margin, offset);
    }
  }
  %extend {
    void set_anchor_and_margin(int margin, int anchor_mode, float offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_anchor_and_margin", margin, anchor_mode, offset);
    }
  }
  %extend {
    void set_begin(const Vector2& pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_begin", pos);
    }
  }
  %extend {
    void set_end(const Vector2& pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_end", pos);
    }
  }
  %extend {
    void set_pos(const Vector2& pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_pos", pos);
    }
  }
  %extend {
    void set_size(const Vector2& size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_size", size);
    }
  }
  %extend {
    void set_custom_minimum_size(const Vector2& size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_custom_minimum_size", size);
    }
  }
  %extend {
    void set_global_pos(const Vector2& pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_global_pos", pos);
    }
  }
  %extend {
    void set_rotation(float radians) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_rotation", radians);
    }
  }
  %extend {
    void set_rotation_deg(float degrees) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_rotation_deg", degrees);
    }
  }
  %extend {
    void set_scale(const Vector2& scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_scale", scale);
    }
  }
  %extend {
    float get_margin(int margin) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_margin", margin);
    }
  }
  %extend {
    Vector2 get_begin() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_begin");
    }
  }
  %extend {
    Vector2 get_end() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_end");
    }
  }
  %extend {
    Vector2 get_pos() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pos");
    }
  }
  %extend {
    Vector2 get_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_size");
    }
  }
  %extend {
    float get_rotation() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rotation");
    }
  }
  %extend {
    float get_rotation_deg() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rotation_deg");
    }
  }
  %extend {
    Vector2 get_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_scale");
    }
  }
  %extend {
    Vector2 get_custom_minimum_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_custom_minimum_size");
    }
  }
  %extend {
    Vector2 get_parent_area_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_parent_area_size");
    }
  }
  %extend {
    Vector2 get_global_pos() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_global_pos");
    }
  }
  %extend {
    Rect2 get_rect() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rect");
    }
  }
  %extend {
    Rect2 get_global_rect() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_global_rect");
    }
  }
  %extend {
    void set_area_as_parent_rect(int margin = 0) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_area_as_parent_rect", margin);
    }
  }
  %extend {
    void show_modal(bool exclusive = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("show_modal", exclusive);
    }
  }
  %extend {
    void set_focus_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_focus_mode", mode);
    }
  }
  %extend {
    bool has_focus() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_focus");
    }
  }
  %extend {
    void grab_focus() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("grab_focus");
    }
  }
  %extend {
    void release_focus() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("release_focus");
    }
  }
  %extend {
    Control* get_focus_owner() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_focus_owner").operator Object *()->cast_to<Control>();
    }
  }
  %extend {
    void set_h_size_flags(int flags) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_h_size_flags", flags);
    }
  }
  %extend {
    int get_h_size_flags() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_h_size_flags");
    }
  }
  %extend {
    void set_stretch_ratio(float ratio) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_stretch_ratio", ratio);
    }
  }
  %extend {
    float get_stretch_ratio() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_stretch_ratio");
    }
  }
  %extend {
    void set_v_size_flags(int flags) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_v_size_flags", flags);
    }
  }
  %extend {
    int get_v_size_flags() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_v_size_flags");
    }
  }
  %extend {
    void set_theme(Ref<Theme> theme) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_theme", theme);
    }
  }
  %extend {
    Ref<Theme> get_theme() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_theme").operator Object *()->cast_to<Theme>();
    }
  }
  %extend {
    void add_icon_override(const String& name, Ref<Texture> texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_icon_override", name, texture);
    }
  }
  %extend {
    void add_shader_override(const String& name, Ref<Shader> shader) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_shader_override", name, shader);
    }
  }
  %extend {
    void add_style_override(const String& name, Ref<StyleBox> stylebox) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_style_override", name, stylebox);
    }
  }
  %extend {
    void add_font_override(const String& name, Ref<Font> font) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_font_override", name, font);
    }
  }
  %extend {
    void add_color_override(const String& name, const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_color_override", name, color);
    }
  }
  %extend {
    void add_constant_override(const String& name, int constant) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_constant_override", name, constant);
    }
  }
  %extend {
    Ref<Texture> get_icon(const String& name, const String& type = "") {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_icon", name, type).operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    Ref<StyleBox> get_stylebox(const String& name, const String& type = "") {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_stylebox", name, type).operator Object *()->cast_to<StyleBox>();
    }
  }
  %extend {
    Ref<Font> get_font(const String& name, const String& type = "") {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_font", name, type).operator Object *()->cast_to<Font>();
    }
  }
  %extend {
    Color get_color(const String& name, const String& type = "") {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_color", name, type);
    }
  }
  %extend {
    int get_constant(const String& name, const String& type = "") {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_constant", name, type);
    }
  }
  %extend {
    Control* get_parent_control() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_parent_control").operator Object *()->cast_to<Control>();
    }
  }
  %extend {
    void set_tooltip(const String& tooltip) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_tooltip", tooltip);
    }
  }
  %extend {
    String get_tooltip(const Vector2& atpos = Vector2(0,0)) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_tooltip", atpos);
    }
  }
  %extend {
    void set_default_cursor_shape(int shape) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_default_cursor_shape", shape);
    }
  }
  %extend {
    int get_default_cursor_shape() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_default_cursor_shape");
    }
  }
  %extend {
    int get_cursor_shape(const Vector2& pos = Vector2(0,0)) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_cursor_shape", pos);
    }
  }
  %extend {
    void set_focus_neighbour(int margin, const NodePath& neighbour) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_focus_neighbour", margin, neighbour);
    }
  }
  %extend {
    NodePath get_focus_neighbour(int margin) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_focus_neighbour", margin);
    }
  }
  %extend {
    void set_ignore_mouse(bool ignore) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_ignore_mouse", ignore);
    }
  }
  %extend {
    bool is_ignoring_mouse() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_ignoring_mouse");
    }
  }
  %extend {
    void force_drag(const Variant& data, Object* preview) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("force_drag", data, preview);
    }
  }
  %extend {
    void set_stop_mouse(bool stop) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_stop_mouse", stop);
    }
  }
  %extend {
    bool is_stopping_mouse() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_stopping_mouse");
    }
  }
  %extend {
    void grab_click_focus() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("grab_click_focus");
    }
  }
  %extend {
    void set_drag_forwarding(Control* target) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_drag_forwarding", target);
    }
  }
  %extend {
    void set_drag_preview(Control* control) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_drag_preview", control);
    }
  }
  %extend {
    void warp_mouse(const Vector2& to_pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("warp_mouse", to_pos);
    }
  }
  Control();

};
