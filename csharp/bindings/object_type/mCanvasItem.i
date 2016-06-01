/* mCanvasItem.i */
%module mCanvasItem

%nodefaultctor CanvasItem;

%typemap(csbody_derived) CanvasItem %{
  public static readonly int BLEND_MODE_MIX = 0;
  public static readonly int BLEND_MODE_ADD = 1;
  public static readonly int BLEND_MODE_SUB = 2;
  public static readonly int BLEND_MODE_MUL = 3;
  public static readonly int BLEND_MODE_PREMULT_ALPHA = 4;
  public static readonly int NOTIFICATION_DRAW = 30;
  public static readonly int NOTIFICATION_VISIBILITY_CHANGED = 31;
  public static readonly int NOTIFICATION_ENTER_CANVAS = 32;
  public static readonly int NOTIFICATION_EXIT_CANVAS = 33;
  public static readonly int NOTIFICATION_TRANSFORM_CHANGED = 29;

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

%typemap(cscode) CanvasItem %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) CanvasItem %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor CanvasItem;

class CanvasItem : public Node {
public:
  %extend {
    void _draw() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_draw");
    }
  }
  %extend {
    void edit_set_state(const Variant& state) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("edit_set_state", state);
    }
  }
  %extend {
    void edit_get() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("edit_get");
    }
  }
  %extend {
    void edit_set_rect(const Rect2& rect) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("edit_set_rect", rect);
    }
  }
  %extend {
    void edit_rotate(float degrees) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("edit_rotate", degrees);
    }
  }
  %extend {
    Rect2 get_item_rect() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_rect");
    }
  }
  %extend {
    RID get_canvas_item() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_canvas_item");
    }
  }
  %extend {
    bool is_visible() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_visible");
    }
  }
  %extend {
    bool is_hidden() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_hidden");
    }
  }
  %extend {
    void show() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("show");
    }
  }
  %extend {
    void hide() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("hide");
    }
  }
  %extend {
    void set_hidden(bool hidden) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_hidden", hidden);
    }
  }
  %extend {
    void update() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("update");
    }
  }
  %extend {
    void set_as_toplevel(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_as_toplevel", enable);
    }
  }
  %extend {
    bool is_set_as_toplevel() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_set_as_toplevel");
    }
  }
  %extend {
    void set_blend_mode(int blend_mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_blend_mode", blend_mode);
    }
  }
  %extend {
    int get_blend_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_blend_mode");
    }
  }
  %extend {
    void set_light_mask(int light_mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_light_mask", light_mask);
    }
  }
  %extend {
    int get_light_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_light_mask");
    }
  }
  %extend {
    void set_opacity(float opacity) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_opacity", opacity);
    }
  }
  %extend {
    float get_opacity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_opacity");
    }
  }
  %extend {
    void set_self_opacity(float self_opacity) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_self_opacity", self_opacity);
    }
  }
  %extend {
    float get_self_opacity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_self_opacity");
    }
  }
  %extend {
    void set_draw_behind_parent(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_draw_behind_parent", enable);
    }
  }
  %extend {
    bool is_draw_behind_parent_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_draw_behind_parent_enabled");
    }
  }
  %extend {
    void draw_line(const Vector2& from, const Vector2& to, const Color& color, float width = 1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("draw_line", from, to, color, width);
    }
  }
  %extend {
    void draw_rect(const Rect2& rect, const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("draw_rect", rect, color);
    }
  }
  %extend {
    void draw_circle(const Vector2& pos, float radius, const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("draw_circle", pos, radius, color);
    }
  }
  %extend {
    void draw_texture(Ref<Texture> texture, const Vector2& pos, const Color& modulate = Color(1,1,1,1)) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("draw_texture", texture, pos, modulate);
    }
  }
  %extend {
    void draw_texture_rect(Ref<Texture> texture, const Rect2& rect, bool tile, const Color& modulate = Color(1,1,1,1), bool transpose = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("draw_texture_rect", texture, rect, tile, modulate, transpose);
    }
  }
  %extend {
    void draw_texture_rect_region(Ref<Texture> texture, const Rect2& rect, const Rect2& src_rect, const Color& modulate = Color(1,1,1,1), bool transpose = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("draw_texture_rect_region", texture, rect, src_rect, modulate, transpose);
    }
  }
  %extend {
    void draw_style_box(Ref<StyleBox> style_box, const Rect2& rect) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("draw_style_box", style_box, rect);
    }
  }
  %extend {
    void draw_primitive(const Vector2Array& points, const ColorArray& colors, const Vector2Array& uvs, Ref<Texture> texture = Ref<Texture>(), float width = 1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("draw_primitive", points, colors, uvs, texture, width);
    }
  }
  %extend {
    void draw_polygon(const Vector2Array& points, const ColorArray& colors, const Vector2Array& uvs = Vector2Array(), Ref<Texture> texture = Ref<Texture>()) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("draw_polygon", points, colors, uvs, texture);
    }
  }
  %extend {
    void draw_colored_polygon(const Vector2Array& points, const Color& color, const Vector2Array& uvs = Vector2Array(), Ref<Texture> texture = Ref<Texture>()) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("draw_colored_polygon", points, color, uvs, texture);
    }
  }
  %extend {
    void draw_string(Ref<Font> font, const Vector2& pos, const String& text, const Color& modulate = Color(1,1,1,1), int clip_w = -1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("draw_string", font, pos, text, modulate, clip_w);
    }
  }
  %extend {
    float draw_char(Ref<Font> font, const Vector2& pos, const String& char_, const String& next, const Color& modulate = Color(1,1,1,1)) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("draw_char", font, pos, char_, next, modulate);
    }
  }
  %extend {
    void draw_set_transform(const Vector2& pos, float rot, const Vector2& scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("draw_set_transform", pos, rot, scale);
    }
  }
  %extend {
    Matrix32 get_transform() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_transform");
    }
  }
  %extend {
    Matrix32 get_global_transform() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_global_transform");
    }
  }
  %extend {
    Matrix32 get_global_transform_with_canvas() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_global_transform_with_canvas");
    }
  }
  %extend {
    Matrix32 get_viewport_transform() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_viewport_transform");
    }
  }
  %extend {
    Rect2 get_viewport_rect() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_viewport_rect");
    }
  }
  %extend {
    Matrix32 get_canvas_transform() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_canvas_transform");
    }
  }
  %extend {
    Vector2 get_local_mouse_pos() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_local_mouse_pos");
    }
  }
  %extend {
    Vector2 get_global_mouse_pos() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_global_mouse_pos");
    }
  }
  %extend {
    RID get_canvas() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_canvas");
    }
  }
  %extend {
    Object* get_world_2d() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_world_2d").operator Object *();
    }
  }
  %extend {
    void set_material(Ref<CanvasItemMaterial> material) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_material", material);
    }
  }
  %extend {
    Ref<CanvasItemMaterial> get_material() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_material").operator Object *()->cast_to<CanvasItemMaterial>();
    }
  }
  %extend {
    void set_use_parent_material(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_use_parent_material", enable);
    }
  }
  %extend {
    bool get_use_parent_material() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_use_parent_material");
    }
  }
  %extend {
    InputEvent make_input_local(const InputEvent& event) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("make_input_local", event);
    }
  }

};
