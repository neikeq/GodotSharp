/* mVideoPlayer.i */
%module mVideoPlayer


%typemap(csbody_derived) VideoPlayer %{

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

%typemap(cscode) VideoPlayer %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) VideoPlayer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor VideoPlayer;

class VideoPlayer : public Control {
public:
  %extend {
    void set_stream(Ref<VideoStream> stream) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_stream", stream);
    }
  }
  %extend {
    Ref<VideoStream> get_stream() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_stream").operator Object *()->cast_to<VideoStream>();
    }
  }
  %extend {
    void play() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("play");
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
    void set_audio_track(int track) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_audio_track", track);
    }
  }
  %extend {
    int get_audio_track() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_audio_track");
    }
  }
  %extend {
    String get_stream_name() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_stream_name");
    }
  }
  %extend {
    float get_stream_pos() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_stream_pos");
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
    void set_expand(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_expand", enable);
    }
  }
  %extend {
    bool has_expand() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_expand");
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
    Ref<Texture> get_video_texture() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_video_texture").operator Object *()->cast_to<Texture>();
    }
  }
  VideoPlayer();

};
