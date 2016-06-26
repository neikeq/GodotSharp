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
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CanvasItem;

class CanvasItem : public Node {
public:

%extend {

void _draw() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "_draw");
  __method_bind->ptrcall($self, NULL, NULL);
}

void edit_set_state(const Variant& state) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "edit_set_state");
  const void* __args[1] = { &state };
  __method_bind->ptrcall($self, __args, NULL);
}

Variant edit_get_state() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "edit_get_state");
  Variant ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void edit_set_rect(const Rect2& rect) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "edit_set_rect");
  const void* __args[1] = { &rect };
  __method_bind->ptrcall($self, __args, NULL);
}

void edit_rotate(float degrees) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "edit_rotate");
  const void* __args[1] = { &degrees };
  __method_bind->ptrcall($self, __args, NULL);
}

Rect2 get_item_rect() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_item_rect");
  Rect2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Rect2 get_item_and_children_rect() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_item_and_children_rect");
  Rect2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID get_canvas_item() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_canvas_item");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_visible() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "is_visible");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_hidden() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "is_hidden");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void show() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "show");
  __method_bind->ptrcall($self, NULL, NULL);
}

void hide() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "hide");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_hidden(bool hidden) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "set_hidden");
  const void* __args[1] = { &hidden };
  __method_bind->ptrcall($self, __args, NULL);
}

void update() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "update");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_as_toplevel(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "set_as_toplevel");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_set_as_toplevel() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "is_set_as_toplevel");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_blend_mode(int blend_mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "set_blend_mode");
  const void* __args[1] = { &blend_mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_blend_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_blend_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_light_mask(int light_mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "set_light_mask");
  const void* __args[1] = { &light_mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_light_mask() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_light_mask");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_opacity(float opacity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "set_opacity");
  const void* __args[1] = { &opacity };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_opacity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_opacity");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_self_opacity(float self_opacity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "set_self_opacity");
  const void* __args[1] = { &self_opacity };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_self_opacity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_self_opacity");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_draw_behind_parent(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "set_draw_behind_parent");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_draw_behind_parent_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "is_draw_behind_parent_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void draw_line(const Vector2& from, const Vector2& to, const Color& color, float width = 1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "draw_line");
  const void* __args[4] = { &from, &to, &color, &width };
  __method_bind->ptrcall($self, __args, NULL);
}

void draw_rect(const Rect2& rect, const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "draw_rect");
  const void* __args[2] = { &rect, &color };
  __method_bind->ptrcall($self, __args, NULL);
}

void draw_circle(const Vector2& pos, float radius, const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "draw_circle");
  const void* __args[3] = { &pos, &radius, &color };
  __method_bind->ptrcall($self, __args, NULL);
}

void draw_texture(Texture* texture, const Vector2& pos, const Color& modulate = Color(1,1,1,1)) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "draw_texture");
  const void* __args[3] = { texture, &pos, &modulate };
  __method_bind->ptrcall($self, __args, NULL);
}

void draw_texture_rect(Texture* texture, const Rect2& rect, bool tile, const Color& modulate = Color(1,1,1,1), bool transpose = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "draw_texture_rect");
  const void* __args[5] = { texture, &rect, &tile, &modulate, &transpose };
  __method_bind->ptrcall($self, __args, NULL);
}

void draw_texture_rect_region(Texture* texture, const Rect2& rect, const Rect2& src_rect, const Color& modulate = Color(1,1,1,1), bool transpose = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "draw_texture_rect_region");
  const void* __args[5] = { texture, &rect, &src_rect, &modulate, &transpose };
  __method_bind->ptrcall($self, __args, NULL);
}

void draw_style_box(StyleBox* style_box, const Rect2& rect) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "draw_style_box");
  const void* __args[2] = { style_box, &rect };
  __method_bind->ptrcall($self, __args, NULL);
}

void draw_primitive(const Vector2Array& points, const ColorArray& colors, const Vector2Array& uvs, Texture* texture = NULL, float width = 1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "draw_primitive");
  const void* __args[5] = { &points, &colors, &uvs, texture, &width };
  __method_bind->ptrcall($self, __args, NULL);
}

void draw_polygon(const Vector2Array& points, const ColorArray& colors, const Vector2Array& uvs = Vector2Array(), Texture* texture = NULL) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "draw_polygon");
  const void* __args[4] = { &points, &colors, &uvs, texture };
  __method_bind->ptrcall($self, __args, NULL);
}

void draw_colored_polygon(const Vector2Array& points, const Color& color, const Vector2Array& uvs = Vector2Array(), Texture* texture = NULL) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "draw_colored_polygon");
  const void* __args[4] = { &points, &color, &uvs, texture };
  __method_bind->ptrcall($self, __args, NULL);
}

void draw_string(Font* font, const Vector2& pos, const String& text, const Color& modulate = Color(1,1,1,1), int clip_w = -1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "draw_string");
  const void* __args[5] = { font, &pos, &text, &modulate, &clip_w };
  __method_bind->ptrcall($self, __args, NULL);
}

float draw_char(Font* font, const Vector2& pos, const String& char_, const String& next, const Color& modulate = Color(1,1,1,1)) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "draw_char");
  const void* __args[5] = { font, &pos, &char_, &next, &modulate };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void draw_set_transform(const Vector2& pos, float rot, const Vector2& scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "draw_set_transform");
  const void* __args[3] = { &pos, &rot, &scale };
  __method_bind->ptrcall($self, __args, NULL);
}

void draw_set_transform_matrix(const Matrix32& xform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "draw_set_transform_matrix");
  const void* __args[1] = { &xform };
  __method_bind->ptrcall($self, __args, NULL);
}

Matrix32 get_transform() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_transform");
  Matrix32 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Matrix32 get_global_transform() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_global_transform");
  Matrix32 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Matrix32 get_global_transform_with_canvas() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_global_transform_with_canvas");
  Matrix32 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Matrix32 get_viewport_transform() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_viewport_transform");
  Matrix32 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Rect2 get_viewport_rect() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_viewport_rect");
  Rect2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Matrix32 get_canvas_transform() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_canvas_transform");
  Matrix32 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_local_mouse_pos() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_local_mouse_pos");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_global_mouse_pos() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_global_mouse_pos");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID get_canvas() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_canvas");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Object* get_world_2d() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_world_2d");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_material(CanvasItemMaterial* material) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "set_material");
  const void* __args[1] = { material };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<CanvasItemMaterial> get_material() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_material");
  Ref<CanvasItemMaterial> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_use_parent_material(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "set_use_parent_material");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_use_parent_material() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "get_use_parent_material");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

InputEvent make_input_local(const InputEvent& event) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItem", "make_input_local");
  const void* __args[1] = { &event };
  InputEvent ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

}


};
