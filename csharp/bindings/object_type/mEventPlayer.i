/* mEventPlayer.i */
%module mEventPlayer

%typemap(out) EventPlayer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) EventPlayer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) EventPlayer %{

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

%typemap(cscode) EventPlayer %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) EventPlayer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor EventPlayer;

class EventPlayer : public Node {
public:
  %extend {
    void set_stream(Ref<EventStream> stream) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_stream", stream);
    }
  }
  %extend {
    Ref<EventStream> get_stream() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_stream").operator Object *()->cast_to<EventStream>();
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
    void set_pitch_scale(float pitch_scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_pitch_scale", pitch_scale);
    }
  }
  %extend {
    float get_pitch_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pitch_scale");
    }
  }
  %extend {
    void set_tempo_scale(float tempo_scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_tempo_scale", tempo_scale);
    }
  }
  %extend {
    float get_tempo_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_tempo_scale");
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
    float get_length() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_length");
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
    void set_channel_volume(int channel, float channel_volume) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_channel_volume", channel, channel_volume);
    }
  }
  %extend {
    float get_channel_volume(int channel) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_channel_volume", channel);
    }
  }
  %extend {
    float get_channel_last_note_time(int channel) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_channel_last_note_time", channel);
    }
  }
  EventPlayer();

};
