/* mAnimatedSprite.i */
%module mAnimatedSprite


%typemap(csbody_derived) AnimatedSprite %{

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

%typemap(cscode) AnimatedSprite %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) AnimatedSprite %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor AnimatedSprite;

class AnimatedSprite : public Node2D {
public:
  AnimatedSprite();

%extend {

void set_sprite_frames(SpriteFrames* sprite_frames) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "set_sprite_frames");
  const void* __args[1] = { sprite_frames };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<SpriteFrames> get_sprite_frames() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "get_sprite_frames");
  Ref<SpriteFrames> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_animation(const String& animation) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "set_animation");
  const void* __args[1] = { &animation };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_animation() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "get_animation");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void play(const String& anim = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "play");
  const void* __args[1] = { &anim };
  __method_bind->ptrcall($self, __args, NULL);
}

void stop() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "stop");
  __method_bind->ptrcall($self, NULL, NULL);
}

bool is_playing() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "is_playing");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_centered(bool centered) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "set_centered");
  const void* __args[1] = { &centered };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_centered() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "is_centered");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_offset(const Vector2& offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "set_offset");
  const void* __args[1] = { &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "get_offset");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_flip_h(bool flip_h) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "set_flip_h");
  const void* __args[1] = { &flip_h };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_flipped_h() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "is_flipped_h");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_flip_v(bool flip_v) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "set_flip_v");
  const void* __args[1] = { &flip_v };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_flipped_v() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "is_flipped_v");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_frame(int frame) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "set_frame");
  const void* __args[1] = { &frame };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_frame() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "get_frame");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_modulate(const Color& modulate) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "set_modulate");
  const void* __args[1] = { &modulate };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_modulate() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite", "get_modulate");
  Color ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
