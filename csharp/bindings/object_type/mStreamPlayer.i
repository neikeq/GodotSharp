/* mStreamPlayer.i */
%module mStreamPlayer


%typemap(csbody_derived) StreamPlayer %{

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

%typemap(cscode) StreamPlayer %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) StreamPlayer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor StreamPlayer;

class StreamPlayer : public Node {
public:
  %extend {
    void set_stream(Ref<AudioStream> stream) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_stream", stream);
    }
  }
  %extend {
    Ref<AudioStream> get_stream() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_stream").operator Object *()->cast_to<AudioStream>();
    }
  }
  %extend {
    void play(float offset = 0) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("play", offset);
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
    void set_paused(bool paused) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_paused", paused);
    }
  }
  %extend {
    bool is_paused() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_paused");
    }
  }
  %extend {
    void set_loop(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_loop", enabled);
    }
  }
  %extend {
    bool has_loop() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_loop");
    }
  }
  %extend {
    void set_volume(float volume) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_volume", volume);
    }
  }
  %extend {
    float get_volume() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_volume");
    }
  }
  %extend {
    void set_volume_db(float db) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_volume_db", db);
    }
  }
  %extend {
    float get_volume_db() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_volume_db");
    }
  }
  %extend {
    void set_buffering_msec(int msec) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_buffering_msec", msec);
    }
  }
  %extend {
    int get_buffering_msec() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_buffering_msec");
    }
  }
  %extend {
    void set_loop_restart_time(float secs) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_loop_restart_time", secs);
    }
  }
  %extend {
    float get_loop_restart_time() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_loop_restart_time");
    }
  }
  %extend {
    String get_stream_name() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_stream_name");
    }
  }
  %extend {
    int get_loop_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_loop_count");
    }
  }
  %extend {
    float get_pos() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pos");
    }
  }
  %extend {
    void seek_pos(float time) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("seek_pos", time);
    }
  }
  %extend {
    void set_autoplay(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_autoplay", enabled);
    }
  }
  %extend {
    bool has_autoplay() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_autoplay");
    }
  }
  %extend {
    float get_length() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_length");
    }
  }
  StreamPlayer();

};
