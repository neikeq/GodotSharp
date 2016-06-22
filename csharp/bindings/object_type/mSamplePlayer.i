/* mSamplePlayer.i */
%module mSamplePlayer

%typemap(out) SamplePlayer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SamplePlayer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) SamplePlayer %{
  public static readonly int FILTER_NONE = 0;
  public static readonly int FILTER_LOWPASS = 1;
  public static readonly int FILTER_BANDPASS = 2;
  public static readonly int FILTER_HIPASS = 3;
  public static readonly int FILTER_NOTCH = 4;
  public static readonly int FILTER_PEAK = 5;
  public static readonly int FILTER_BANDLIMIT = 6;
  public static readonly int FILTER_LOW_SHELF = 7;
  public static readonly int FILTER_HIGH_SHELF = 8;
  public static readonly int REVERB_SMALL = 0;
  public static readonly int REVERB_MEDIUM = 1;
  public static readonly int REVERB_LARGE = 2;
  public static readonly int REVERB_HALL = 3;
  public static readonly int INVALID_VOICE_ID = -1;

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

%typemap(cscode) SamplePlayer %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) SamplePlayer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SamplePlayer;

class SamplePlayer : public Node {
public:
  %extend {
    void set_sample_library(Ref<SampleLibrary> library) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_sample_library", library);
    }
  }
  %extend {
    Ref<SampleLibrary> get_sample_library() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_sample_library").operator Object *()->cast_to<SampleLibrary>();
    }
  }
  %extend {
    void set_polyphony(int max_voices) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_polyphony", max_voices);
    }
  }
  %extend {
    int get_polyphony() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_polyphony");
    }
  }
  %extend {
    int play(const String& name, bool unique = false) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("play", name, unique);
    }
  }
  %extend {
    void stop(int voice) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("stop", voice);
    }
  }
  %extend {
    void stop_all() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("stop_all");
    }
  }
  %extend {
    void set_mix_rate(int voice, int hz) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_mix_rate", voice, hz);
    }
  }
  %extend {
    void set_pitch_scale(int voice, float ratio) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_pitch_scale", voice, ratio);
    }
  }
  %extend {
    void set_volume(int voice, float volume) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_volume", voice, volume);
    }
  }
  %extend {
    void set_volume_db(int voice, float db) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_volume_db", voice, db);
    }
  }
  %extend {
    void set_pan(int voice, float pan, float depth = 0, float height = 0) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_pan", voice, pan, depth, height);
    }
  }
  %extend {
    void set_filter(int voice, int type, float cutoff_hz, float resonance, float gain = 0) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_filter", voice, type, cutoff_hz, resonance, gain);
    }
  }
  %extend {
    void set_chorus(int voice, float send) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_chorus", voice, send);
    }
  }
  %extend {
    void set_reverb(int voice, int room_type, float send) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_reverb", voice, room_type, send);
    }
  }
  %extend {
    int get_mix_rate(int voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_mix_rate", voice);
    }
  }
  %extend {
    float get_pitch_scale(int voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pitch_scale", voice);
    }
  }
  %extend {
    float get_volume(int voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_volume", voice);
    }
  }
  %extend {
    float get_volume_db(int voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_volume_db", voice);
    }
  }
  %extend {
    float get_pan(int voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pan", voice);
    }
  }
  %extend {
    float get_pan_depth(int voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pan_depth", voice);
    }
  }
  %extend {
    float get_pan_height(int voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pan_height", voice);
    }
  }
  %extend {
    int get_filter_type(int voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_filter_type", voice);
    }
  }
  %extend {
    float get_filter_cutoff(int voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_filter_cutoff", voice);
    }
  }
  %extend {
    float get_filter_resonance(int voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_filter_resonance", voice);
    }
  }
  %extend {
    float get_filter_gain(int voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_filter_gain", voice);
    }
  }
  %extend {
    float get_chorus(int voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_chorus", voice);
    }
  }
  %extend {
    int get_reverb_room(int voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_reverb_room", voice);
    }
  }
  %extend {
    float get_reverb(int voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_reverb", voice);
    }
  }
  %extend {
    void set_default_pitch_scale(float ratio) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_default_pitch_scale", ratio);
    }
  }
  %extend {
    void set_default_volume(float volume) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_default_volume", volume);
    }
  }
  %extend {
    void set_default_volume_db(float db) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_default_volume_db", db);
    }
  }
  %extend {
    void set_default_pan(float pan, float depth = 0, float height = 0) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_default_pan", pan, depth, height);
    }
  }
  %extend {
    void set_default_filter(int type, float cutoff_hz, float resonance, float gain = 0) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_default_filter", type, cutoff_hz, resonance, gain);
    }
  }
  %extend {
    void set_default_chorus(float send) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_default_chorus", send);
    }
  }
  %extend {
    void set_default_reverb(int room_type, float send) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_default_reverb", room_type, send);
    }
  }
  %extend {
    float get_default_pitch_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_default_pitch_scale");
    }
  }
  %extend {
    float get_default_volume() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_default_volume");
    }
  }
  %extend {
    float get_default_volume_db() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_default_volume_db");
    }
  }
  %extend {
    float get_default_pan() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_default_pan");
    }
  }
  %extend {
    float get_default_pan_depth() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_default_pan_depth");
    }
  }
  %extend {
    float get_default_pan_height() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_default_pan_height");
    }
  }
  %extend {
    int get_default_filter_type() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_default_filter_type");
    }
  }
  %extend {
    float get_default_filter_cutoff() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_default_filter_cutoff");
    }
  }
  %extend {
    float get_default_filter_resonance() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_default_filter_resonance");
    }
  }
  %extend {
    float get_default_filter_gain() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_default_filter_gain");
    }
  }
  %extend {
    float get_default_chorus() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_default_chorus");
    }
  }
  %extend {
    int get_default_reverb_room() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_default_reverb_room");
    }
  }
  %extend {
    float get_default_reverb() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_default_reverb");
    }
  }
  %extend {
    bool is_active() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_active");
    }
  }
  %extend {
    bool is_voice_active(int voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_voice_active", voice);
    }
  }
  SamplePlayer();

};
