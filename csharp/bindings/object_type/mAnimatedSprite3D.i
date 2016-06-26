/* mAnimatedSprite3D.i */
%module mAnimatedSprite3D


%typemap(csbody_derived) AnimatedSprite3D %{

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

%typemap(cscode) AnimatedSprite3D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) AnimatedSprite3D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor AnimatedSprite3D;

class AnimatedSprite3D : public SpriteBase3D {
public:
  AnimatedSprite3D();

%extend {

void set_sprite_frames(SpriteFrames* sprite_frames) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite3D", "set_sprite_frames");
  const void* __args[1] = { sprite_frames };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<SpriteFrames> get_sprite_frames() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite3D", "get_sprite_frames");
  Ref<SpriteFrames> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_animation(const String& animation) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite3D", "set_animation");
  const void* __args[1] = { &animation };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_animation() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite3D", "get_animation");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void play(const String& anim = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite3D", "play");
  const void* __args[1] = { &anim };
  __method_bind->ptrcall($self, __args, NULL);
}

void stop() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite3D", "stop");
  __method_bind->ptrcall($self, NULL, NULL);
}

bool is_playing() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite3D", "is_playing");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_frame(int frame) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite3D", "set_frame");
  const void* __args[1] = { &frame };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_frame() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimatedSprite3D", "get_frame");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
