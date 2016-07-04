/* mViewport.i */
%module mViewport


%typemap(csbody_derived) Viewport %{
  public static readonly int RENDER_TARGET_UPDATE_DISABLED = 0;
  public static readonly int RENDER_TARGET_UPDATE_ONCE = 1;
  public static readonly int RENDER_TARGET_UPDATE_WHEN_VISIBLE = 2;
  public static readonly int RENDER_TARGET_UPDATE_ALWAYS = 3;

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

%typemap(cscode) Viewport %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Viewport %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Viewport;

class Viewport : public Node {
public:
  Viewport();

%extend {

void set_rect(const Rect2& rect) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_rect");
  const void* __args[1] = { &rect };
  __method_bind->ptrcall($self, __args, NULL);
}

Rect2 get_rect() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "get_rect");
  Rect2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Ref<World2D> find_world_2d() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "find_world_2d");
  Ref<World2D> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_world(World* world) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_world");
  const void* __args[1] = { world };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<World> get_world() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "get_world");
  Ref<World> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Ref<World> find_world() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "find_world");
  Ref<World> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_canvas_transform(const Matrix32& xform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_canvas_transform");
  const void* __args[1] = { &xform };
  __method_bind->ptrcall($self, __args, NULL);
}

Matrix32 get_canvas_transform() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "get_canvas_transform");
  Matrix32 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_global_canvas_transform(const Matrix32& xform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_global_canvas_transform");
  const void* __args[1] = { &xform };
  __method_bind->ptrcall($self, __args, NULL);
}

Matrix32 get_global_canvas_transform() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "get_global_canvas_transform");
  Matrix32 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Matrix32 get_final_transform() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "get_final_transform");
  Matrix32 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Rect2 get_visible_rect() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "get_visible_rect");
  Rect2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_transparent_background(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_transparent_background");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_transparent_background() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "has_transparent_background");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_size_override(bool enable, const Vector2& size = Vector2(-1,-1), const Vector2& margin = Vector2(0,0)) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_size_override");
  const void* __args[3] = { &enable, &size, &margin };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_size_override() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "get_size_override");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_size_override_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "is_size_override_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_size_override_stretch(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_size_override_stretch");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_size_override_stretch_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "is_size_override_stretch_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void queue_screen_capture() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "queue_screen_capture");
  __method_bind->ptrcall($self, NULL, NULL);
}

Image get_screen_capture() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "get_screen_capture");
  Image ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_as_render_target(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_as_render_target");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_set_as_render_target() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "is_set_as_render_target");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_render_target_vflip(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_render_target_vflip");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_render_target_vflip() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "get_render_target_vflip");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_render_target_clear_on_new_frame(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_render_target_clear_on_new_frame");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_render_target_clear_on_new_frame() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "get_render_target_clear_on_new_frame");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void render_target_clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "render_target_clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_render_target_filter(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_render_target_filter");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_render_target_filter() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "get_render_target_filter");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_render_target_gen_mipmaps(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_render_target_gen_mipmaps");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_render_target_gen_mipmaps() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "get_render_target_gen_mipmaps");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_render_target_update_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_render_target_update_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_render_target_update_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "get_render_target_update_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Ref<RenderTargetTexture> get_render_target_texture() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "get_render_target_texture");
  Ref<RenderTargetTexture> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_physics_object_picking(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_physics_object_picking");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_physics_object_picking() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "get_physics_object_picking");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID get_viewport() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "get_viewport");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void input(const InputEvent& local_event) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "input");
  const void* __args[1] = { &local_event };
  __method_bind->ptrcall($self, __args, NULL);
}

void unhandled_input(const InputEvent& local_event) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "unhandled_input");
  const void* __args[1] = { &local_event };
  __method_bind->ptrcall($self, __args, NULL);
}

void update_worlds() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "update_worlds");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_use_own_world(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_use_own_world");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_using_own_world() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "is_using_own_world");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Camera* get_camera() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "get_camera");
  Camera* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_as_audio_listener(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_as_audio_listener");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_audio_listener() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "is_audio_listener");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_as_audio_listener_2d(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_as_audio_listener_2d");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_audio_listener_2d() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "is_audio_listener_2d");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_render_target_to_screen_rect(const Rect2& rect) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_render_target_to_screen_rect");
  const void* __args[1] = { &rect };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_mouse_pos() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "get_mouse_pos");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void warp_mouse(const Vector2& to_pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "warp_mouse");
  const void* __args[1] = { &to_pos };
  __method_bind->ptrcall($self, __args, NULL);
}

bool gui_has_modal_stack() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "gui_has_modal_stack");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Variant gui_get_drag_data() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "gui_get_drag_data");
  Variant ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_disable_input(bool disable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "set_disable_input");
  const void* __args[1] = { &disable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_input_disabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Viewport", "is_input_disabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
