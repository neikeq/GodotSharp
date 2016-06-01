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
    }$excode
  }
%}

%nodefaultdtor Viewport;

class Viewport : public Node {
public:
  %extend {
    void set_rect(const Rect2& rect) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_rect", rect);
    }
  }
  %extend {
    Rect2 get_rect() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rect");
    }
  }
  %extend {
    Ref<World2D> find_world_2d() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("find_world_2d").operator Object *()->cast_to<World2D>();
    }
  }
  %extend {
    void set_world(Ref<World> world) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_world", world);
    }
  }
  %extend {
    Ref<World> get_world() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_world").operator Object *()->cast_to<World>();
    }
  }
  %extend {
    Ref<World> find_world() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("find_world").operator Object *()->cast_to<World>();
    }
  }
  %extend {
    void set_canvas_transform(const Matrix32& xform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_canvas_transform", xform);
    }
  }
  %extend {
    Matrix32 get_canvas_transform() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_canvas_transform");
    }
  }
  %extend {
    void set_global_canvas_transform(const Matrix32& xform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_global_canvas_transform", xform);
    }
  }
  %extend {
    Matrix32 get_global_canvas_transform() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_global_canvas_transform");
    }
  }
  %extend {
    Matrix32 get_final_transform() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_final_transform");
    }
  }
  %extend {
    Rect2 get_visible_rect() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_visible_rect");
    }
  }
  %extend {
    void set_transparent_background(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_transparent_background", enable);
    }
  }
  %extend {
    bool has_transparent_background() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_transparent_background");
    }
  }
  %extend {
    void set_size_override(bool enable, const Vector2& size = Vector2(-1,-1), const Vector2& margin = Vector2(0,0)) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_size_override", enable, size, margin);
    }
  }
  %extend {
    Vector2 get_size_override() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_size_override");
    }
  }
  %extend {
    bool is_size_override_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_size_override_enabled");
    }
  }
  %extend {
    void set_size_override_stretch(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_size_override_stretch", enabled);
    }
  }
  %extend {
    bool is_size_override_stretch_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_size_override_stretch_enabled");
    }
  }
  %extend {
    void queue_screen_capture() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("queue_screen_capture");
    }
  }
  %extend {
    Image get_screen_capture() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_screen_capture");
    }
  }
  %extend {
    void set_as_render_target(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_as_render_target", enable);
    }
  }
  %extend {
    bool is_set_as_render_target() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_set_as_render_target");
    }
  }
  %extend {
    void set_render_target_vflip(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_render_target_vflip", enable);
    }
  }
  %extend {
    bool get_render_target_vflip() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_render_target_vflip");
    }
  }
  %extend {
    void set_render_target_clear_on_new_frame(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_render_target_clear_on_new_frame", enable);
    }
  }
  %extend {
    bool get_render_target_clear_on_new_frame() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_render_target_clear_on_new_frame");
    }
  }
  %extend {
    void render_target_clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("render_target_clear");
    }
  }
  %extend {
    void set_render_target_filter(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_render_target_filter", enable);
    }
  }
  %extend {
    bool get_render_target_filter() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_render_target_filter");
    }
  }
  %extend {
    void set_render_target_gen_mipmaps(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_render_target_gen_mipmaps", enable);
    }
  }
  %extend {
    bool get_render_target_gen_mipmaps() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_render_target_gen_mipmaps");
    }
  }
  %extend {
    void set_render_target_update_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_render_target_update_mode", mode);
    }
  }
  %extend {
    int get_render_target_update_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_render_target_update_mode");
    }
  }
  %extend {
    Ref<RenderTargetTexture> get_render_target_texture() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_render_target_texture").operator Object *()->cast_to<RenderTargetTexture>();
    }
  }
  %extend {
    void set_physics_object_picking(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_physics_object_picking", enable);
    }
  }
  %extend {
    bool get_physics_object_picking() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_physics_object_picking");
    }
  }
  %extend {
    RID get_viewport() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_viewport");
    }
  }
  %extend {
    void input(const InputEvent& local_event) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("input", local_event);
    }
  }
  %extend {
    void unhandled_input(const InputEvent& local_event) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("unhandled_input", local_event);
    }
  }
  %extend {
    void update_worlds() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("update_worlds");
    }
  }
  %extend {
    void set_use_own_world(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_use_own_world", enable);
    }
  }
  %extend {
    bool is_using_own_world() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_using_own_world");
    }
  }
  %extend {
    Camera* get_camera() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_camera").operator Object *()->cast_to<Camera>();
    }
  }
  %extend {
    void set_as_audio_listener(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_as_audio_listener", enable);
    }
  }
  %extend {
    bool is_audio_listener() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_audio_listener");
    }
  }
  %extend {
    void set_as_audio_listener_2d(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_as_audio_listener_2d", enable);
    }
  }
  %extend {
    bool is_audio_listener_2d() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_audio_listener_2d");
    }
  }
  %extend {
    void set_render_target_to_screen_rect(const Rect2& rect) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_render_target_to_screen_rect", rect);
    }
  }
  %extend {
    Vector2 get_mouse_pos() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_mouse_pos");
    }
  }
  %extend {
    void warp_mouse(const Vector2& to_pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("warp_mouse", to_pos);
    }
  }
  %extend {
    bool gui_has_modal_stack() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("gui_has_modal_stack");
    }
  }
  %extend {
    Variant gui_get_drag_data() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("gui_get_drag_data");
    }
  }
  %extend {
    void set_disable_input(bool disable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_disable_input", disable);
    }
  }
  %extend {
    bool is_input_disabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_input_disabled");
    }
  }
  Viewport();

};
