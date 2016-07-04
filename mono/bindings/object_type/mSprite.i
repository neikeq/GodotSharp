/* mSprite.i */
%module mSprite


%typemap(csbody_derived) Sprite %{

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

%typemap(cscode) Sprite %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Sprite %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Sprite;

class Sprite : public Node2D {
public:
  Sprite();

%extend {

void set_texture(Texture* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "set_texture");
  const void* __args[1] = { texture };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Texture> get_texture() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "get_texture");
  Ref<Texture> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_centered(bool centered) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "set_centered");
  const void* __args[1] = { &centered };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_centered() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "is_centered");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_offset(const Vector2& offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "set_offset");
  const void* __args[1] = { &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "get_offset");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_flip_h(bool flip_h) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "set_flip_h");
  const void* __args[1] = { &flip_h };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_flipped_h() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "is_flipped_h");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_flip_v(bool flip_v) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "set_flip_v");
  const void* __args[1] = { &flip_v };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_flipped_v() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "is_flipped_v");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_region(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "set_region");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_region() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "is_region");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_region_rect(const Rect2& rect) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "set_region_rect");
  const void* __args[1] = { &rect };
  __method_bind->ptrcall($self, __args, NULL);
}

Rect2 get_region_rect() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "get_region_rect");
  Rect2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_frame(int frame) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "set_frame");
  const void* __args[1] = { &frame };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_frame() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "get_frame");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_vframes(int vframes) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "set_vframes");
  const void* __args[1] = { &vframes };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_vframes() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "get_vframes");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_hframes(int hframes) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "set_hframes");
  const void* __args[1] = { &hframes };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_hframes() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "get_hframes");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_modulate(const Color& modulate) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "set_modulate");
  const void* __args[1] = { &modulate };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_modulate() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite", "get_modulate");
  Color ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
