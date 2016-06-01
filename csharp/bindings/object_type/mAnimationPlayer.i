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
  %extend {
    int add_animation(const String& name, Ref<Animation> animation) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("add_animation", name, animation);
    }
  }
  %extend {
    void remove_animation(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_animation", name);
    }
  }
  %extend {
    void rename_animation(const String& name, const String& newname) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("rename_animation", name, newname);
    }
  }
  %extend {
    bool has_animation(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_animation", name);
    }
  }
  %extend {
    Ref<Animation> get_animation(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_animation", name).operator Object *()->cast_to<Animation>();
    }
  }
  %extend {
    StringArray get_animation_list() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_animation_list");
    }
  }
  %extend {
    void animation_set_next(const String& anim_from, const String& anim_to) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("animation_set_next", anim_from, anim_to);
    }
  }
  %extend {
    String animation_get_next(const String& anim_from) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("animation_get_next", anim_from);
    }
  }
  %extend {
    void set_blend_time(const String& anim_from, const String& anim_to, float sec) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_blend_time", anim_from, anim_to, sec);
    }
  }
  %extend {
    float get_blend_time(const String& anim_from, const String& anim_to) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_blend_time", anim_from, anim_to);
    }
  }
  %extend {
    void set_default_blend_time(float sec) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_default_blend_time", sec);
    }
  }
  %extend {
    float get_default_blend_time() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_default_blend_time");
    }
  }
  %extend {
    void play(const String& name = "", float custom_blend = -1, float custom_speed = 1, bool from_end = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("play", name, custom_blend, custom_speed, from_end);
    }
  }
  %extend {
    void play_backwards(const String& name = "", float custom_blend = -1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("play_backwards", name, custom_blend);
    }
  }
  %extend {
    void stop(bool reset = true) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("stop", reset);
    }
  }
  %extend {
    void stop_all() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("stop_all");
    }
  }
  %extend {
    bool is_playing() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_playing");
    }
  }
  %extend {
    void set_current_animation(const String& anim) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_current_animation", anim);
    }
  }
  %extend {
    String get_current_animation() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_current_animation");
    }
  }
  %extend {
    void queue(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("queue", name);
    }
  }
  %extend {
    void clear_queue() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_queue");
    }
  }
  %extend {
    void set_active(bool active) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_active", active);
    }
  }
  %extend {
    bool is_active() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_active");
    }
  }
  %extend {
    void set_speed(float speed) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_speed", speed);
    }
  }
  %extend {
    float get_speed() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_speed");
    }
  }
  %extend {
    void set_autoplay(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_autoplay", name);
    }
  }
  %extend {
    String get_autoplay() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_autoplay");
    }
  }
  %extend {
    void set_root(const NodePath& path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_root", path);
    }
  }
  %extend {
    NodePath get_root() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_root");
    }
  }
  %extend {
    void seek(float pos_sec, bool update = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("seek", pos_sec, update);
    }
  }
  %extend {
    float get_pos() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pos");
    }
  }
  %extend {
    String find_animation(Ref<Animation> animation) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("find_animation", animation);
    }
  }
  %extend {
    void clear_caches() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_caches");
    }
  }
  %extend {
    void set_animation_process_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_animation_process_mode", mode);
    }
  }
  %extend {
    int get_animation_process_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_animation_process_mode");
    }
  }
  %extend {
    float get_current_animation_pos() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_current_animation_pos");
    }
  }
  %extend {
    float get_current_animation_length() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_current_animation_length");
    }
  }
  %extend {
    void advance(float delta) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("advance", delta);
    }
  }
  AnimationPlayer();

};
