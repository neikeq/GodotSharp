/* mSpriteBase3D.i */
%module mSpriteBase3D

%nodefaultctor SpriteBase3D;

%typemap(csbody_derived) SpriteBase3D %{
  public static readonly int FLAG_TRANSPARENT = 0;
  public static readonly int FLAG_SHADED = 1;
  public static readonly int FLAG_MAX = 2;
  public static readonly int ALPHA_CUT_DISABLED = 0;
  public static readonly int ALPHA_CUT_DISCARD = 1;
  public static readonly int ALPHA_CUT_OPAQUE_PREPASS = 2;

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

%typemap(cscode) SpriteBase3D %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) SpriteBase3D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SpriteBase3D;

class SpriteBase3D : public GeometryInstance {
public:

%extend {

void set_centered(bool centered) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "set_centered");
  const void* __args[1] = { &centered };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_centered() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "is_centered");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_offset(const Vector2& offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "set_offset");
  const void* __args[1] = { &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "get_offset");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_flip_h(bool flip_h) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "set_flip_h");
  const void* __args[1] = { &flip_h };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_flipped_h() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "is_flipped_h");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_flip_v(bool flip_v) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "set_flip_v");
  const void* __args[1] = { &flip_v };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_flipped_v() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "is_flipped_v");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_modulate(const Color& modulate) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "set_modulate");
  const void* __args[1] = { &modulate };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_modulate() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "get_modulate");
  Color ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_opacity(float opacity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "set_opacity");
  const void* __args[1] = { &opacity };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_opacity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "get_opacity");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_pixel_size(float pixel_size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "set_pixel_size");
  const void* __args[1] = { &pixel_size };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_pixel_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "get_pixel_size");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_axis(int axis) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "set_axis");
  const void* __args[1] = { &axis };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_axis() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "get_axis");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_draw_flag(int flag, bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "set_draw_flag");
  const void* __args[2] = { &flag, &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_draw_flag(int flag) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "get_draw_flag");
  const void* __args[1] = { &flag };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_alpha_cut_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "set_alpha_cut_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_alpha_cut_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "get_alpha_cut_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Rect2 get_item_rect() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteBase3D", "get_item_rect");
  Rect2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
