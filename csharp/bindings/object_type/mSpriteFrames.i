/* mSpriteFrames.i */
%module mSpriteFrames


%typemap(csbody_derived) SpriteFrames %{

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

%typemap(cscode) SpriteFrames %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) SpriteFrames %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor SpriteFrames;

class SpriteFrames : public Resource {
public:
  %extend {
    void add_animation(const String& anim) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_animation", anim);
    }
  }
  %extend {
    bool has_animation(const String& anim) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_animation", anim);
    }
  }
  %extend {
    void remove_animation(const String& anim) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_animation", anim);
    }
  }
  %extend {
    void rename_animation(const String& anim, const String& newname) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("rename_animation", anim, newname);
    }
  }
  %extend {
    void set_animation_speed(const String& anim, float speed) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_animation_speed", anim, speed);
    }
  }
  %extend {
    float get_animation_speed(const String& anim) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_animation_speed", anim);
    }
  }
  %extend {
    void set_animation_loop(const String& anim, bool loop) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_animation_loop", anim, loop);
    }
  }
  %extend {
    bool get_animation_loop(const String& anim) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_animation_loop", anim);
    }
  }
  %extend {
    void add_frame(const String& anim, Object* frame, int atpos = -1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_frame", anim, frame, atpos);
    }
  }
  %extend {
    int get_frame_count(const String& anim) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_frame_count", anim);
    }
  }
  %extend {
    Object* get_frame(const String& anim, int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_frame", anim, idx).operator Object *();
    }
  }
  %extend {
    void set_frame(const String& anim, int idx, Object* txt) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_frame", anim, idx, txt);
    }
  }
  %extend {
    void remove_frame(const String& anim, int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_frame", anim, idx);
    }
  }
  %extend {
    void clear(const String& anim) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear", anim);
    }
  }
  %extend {
    void clear_all() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_all");
    }
  }
  SpriteFrames();

};
