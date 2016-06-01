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
  %extend {
    void set_sprite_frames(Ref<SpriteFrames> sprite_frames) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_sprite_frames", sprite_frames);
    }
  }
  %extend {
    Ref<SpriteFrames> get_sprite_frames() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_sprite_frames").operator Object *()->cast_to<SpriteFrames>();
    }
  }
  %extend {
    void set_animation(const String& animation) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_animation", animation);
    }
  }
  %extend {
    String get_animation() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_animation");
    }
  }
  %extend {
    void play(const String& anim = "") {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("play", anim);
    }
  }
  %extend {
    void stop() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("stop");
    }
  }
  %extend {
    bool is_playing() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_playing");
    }
  }
  %extend {
    void set_centered(bool centered) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_centered", centered);
    }
  }
  %extend {
    bool is_centered() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_centered");
    }
  }
  %extend {
    void set_offset(const Vector2& offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_offset", offset);
    }
  }
  %extend {
    Vector2 get_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_offset");
    }
  }
  %extend {
    void set_flip_h(bool flip_h) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_flip_h", flip_h);
    }
  }
  %extend {
    bool is_flipped_h() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_flipped_h");
    }
  }
  %extend {
    void set_flip_v(bool flip_v) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_flip_v", flip_v);
    }
  }
  %extend {
    bool is_flipped_v() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_flipped_v");
    }
  }
  %extend {
    void set_frame(int frame) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_frame", frame);
    }
  }
  %extend {
    int get_frame() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_frame");
    }
  }
  %extend {
    void set_modulate(const Color& modulate) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_modulate", modulate);
    }
  }
  %extend {
    Color get_modulate() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_modulate");
    }
  }
  AnimatedSprite();

};
