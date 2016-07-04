/* mAnimationPlayer.i */
%module mAnimationPlayer


%typemap(csbody_derived) AnimationPlayer %{
  public static readonly int ANIMATION_PROCESS_FIXED = 0;
  public static readonly int ANIMATION_PROCESS_IDLE = 1;

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

%typemap(cscode) AnimationPlayer %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) AnimationPlayer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor AnimationPlayer;

class AnimationPlayer : public Node {
public:
  AnimationPlayer();

%extend {

int add_animation(const String& name, Animation* animation) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "add_animation");
  const void* __args[2] = { &name, animation };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void remove_animation(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "remove_animation");
  const void* __args[1] = { &name };
  __method_bind->ptrcall($self, __args, NULL);
}

void rename_animation(const String& name, const String& newname) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "rename_animation");
  const void* __args[2] = { &name, &newname };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_animation(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "has_animation");
  const void* __args[1] = { &name };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Ref<Animation> get_animation(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "get_animation");
  const void* __args[1] = { &name };
  Ref<Animation> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

StringArray get_animation_list() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "get_animation_list");
  StringArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void animation_set_next(const String& anim_from, const String& anim_to) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "animation_set_next");
  const void* __args[2] = { &anim_from, &anim_to };
  __method_bind->ptrcall($self, __args, NULL);
}

String animation_get_next(const String& anim_from) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "animation_get_next");
  const void* __args[1] = { &anim_from };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_blend_time(const String& anim_from, const String& anim_to, float sec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "set_blend_time");
  const void* __args[3] = { &anim_from, &anim_to, &sec };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_blend_time(const String& anim_from, const String& anim_to) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "get_blend_time");
  const void* __args[2] = { &anim_from, &anim_to };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_default_blend_time(float sec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "set_default_blend_time");
  const void* __args[1] = { &sec };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_default_blend_time() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "get_default_blend_time");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void play(const String& name = "", float custom_blend = -1, float custom_speed = 1, bool from_end = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "play");
  const void* __args[4] = { &name, &custom_blend, &custom_speed, &from_end };
  __method_bind->ptrcall($self, __args, NULL);
}

void play_backwards(const String& name = "", float custom_blend = -1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "play_backwards");
  const void* __args[2] = { &name, &custom_blend };
  __method_bind->ptrcall($self, __args, NULL);
}

void stop(bool reset = true) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "stop");
  const void* __args[1] = { &reset };
  __method_bind->ptrcall($self, __args, NULL);
}

void stop_all() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "stop_all");
  __method_bind->ptrcall($self, NULL, NULL);
}

bool is_playing() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "is_playing");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_current_animation(const String& anim) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "set_current_animation");
  const void* __args[1] = { &anim };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_current_animation() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "get_current_animation");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void queue(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "queue");
  const void* __args[1] = { &name };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear_queue() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "clear_queue");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_active(bool active) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "set_active");
  const void* __args[1] = { &active };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_active() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "is_active");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_speed(float speed) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "set_speed");
  const void* __args[1] = { &speed };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_speed() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "get_speed");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_autoplay(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "set_autoplay");
  const void* __args[1] = { &name };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_autoplay() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "get_autoplay");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_root(const NodePath& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "set_root");
  const void* __args[1] = { &path };
  __method_bind->ptrcall($self, __args, NULL);
}

NodePath get_root() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "get_root");
  NodePath ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void seek(float pos_sec, bool update = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "seek");
  const void* __args[2] = { &pos_sec, &update };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_pos() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "get_pos");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String find_animation(Animation* animation) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "find_animation");
  const void* __args[1] = { animation };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void clear_caches() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "clear_caches");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_animation_process_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "set_animation_process_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_animation_process_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "get_animation_process_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_current_animation_pos() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "get_current_animation_pos");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_current_animation_length() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "get_current_animation_length");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void advance(float delta) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationPlayer", "advance");
  const void* __args[1] = { &delta };
  __method_bind->ptrcall($self, __args, NULL);
}

}


};
