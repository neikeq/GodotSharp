/* mAudioServer.i */
%module mAudioServer

%csmethodmodifiers AudioServer::AudioServer "private"
%csmethodmodifiers AudioServer::SingletonGetInstance "private"
%nodefaultctor AudioServer;

%typemap(csbody_derived) AudioServer %{
  private static $csclassname instance;
  public static readonly int SAMPLE_FORMAT_PCM8 = 0;
  public static readonly int SAMPLE_FORMAT_PCM16 = 1;
  public static readonly int SAMPLE_FORMAT_IMA_ADPCM = 2;
  public static readonly int SAMPLE_LOOP_NONE = 0;
  public static readonly int SAMPLE_LOOP_FORWARD = 1;
  public static readonly int SAMPLE_LOOP_PING_PONG = 2;
  public static readonly int FILTER_NONE = 0;
  public static readonly int FILTER_LOWPASS = 1;
  public static readonly int FILTER_BANDPASS = 2;
  public static readonly int FILTER_HIPASS = 3;
  public static readonly int FILTER_NOTCH = 4;
  public static readonly int FILTER_BANDLIMIT = 6;
  public static readonly int REVERB_SMALL = 0;
  public static readonly int REVERB_MEDIUM = 1;
  public static readonly int REVERB_LARGE = 2;
  public static readonly int REVERB_HALL = 3;

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

%typemap(cscode) AudioServer %{
  public static $csclassname Instance {
    get {
      if (instance == null) {
        instance = SingletonGetInstance();
      }
      return instance;
    }
  }

  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) AudioServer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor AudioServer;

class AudioServer : public Object {
public:
  %extend {
    RID sample_create(int format, bool stereo, int length) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("sample_create", format, stereo, length);
    }
  }
  %extend {
    void sample_set_description(const RID& sample, const String& description) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("sample_set_description", sample, description);
    }
  }
  %extend {
    String sample_get_description(const RID& sample) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("sample_get_description", sample);
    }
  }
  %extend {
    int sample_get_format(const RID& sample) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("sample_get_format", sample);
    }
  }
  %extend {
    bool sample_is_stereo(const RID& sample) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("sample_is_stereo", sample);
    }
  }
  %extend {
    int sample_get_length(const RID& sample) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("sample_get_length", sample);
    }
  }
  %extend {
    void sample_set_signed_data(const RID& sample, const RealArray& data) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("sample_set_signed_data", sample, data);
    }
  }
  %extend {
    void sample_set_data(const RID& sample, const RawArray& data) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("sample_set_data", sample, data);
    }
  }
  %extend {
    RawArray sample_get_data(const RID& sample) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("sample_get_data", sample);
    }
  }
  %extend {
    void sample_set_mix_rate(const RID& sample, int mix_rate) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("sample_set_mix_rate", sample, mix_rate);
    }
  }
  %extend {
    int sample_get_mix_rate(const RID& sample) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("sample_get_mix_rate", sample);
    }
  }
  %extend {
    void sample_set_loop_format(const RID& sample, int loop_format) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("sample_set_loop_format", sample, loop_format);
    }
  }
  %extend {
    int sample_get_loop_format(const RID& sample) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("sample_get_loop_format", sample);
    }
  }
  %extend {
    void sample_set_loop_begin(const RID& sample, int pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("sample_set_loop_begin", sample, pos);
    }
  }
  %extend {
    int sample_get_loop_begin(const RID& sample) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("sample_get_loop_begin", sample);
    }
  }
  %extend {
    void sample_set_loop_end(const RID& sample, int pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("sample_set_loop_end", sample, pos);
    }
  }
  %extend {
    int sample_get_loop_end(const RID& sample) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("sample_get_loop_end", sample);
    }
  }
  %extend {
    RID voice_create() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("voice_create");
    }
  }
  %extend {
    void voice_play(const RID& voice, const RID& sample) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("voice_play", voice, sample);
    }
  }
  %extend {
    void voice_set_volume(const RID& voice, float volume) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("voice_set_volume", voice, volume);
    }
  }
  %extend {
    void voice_set_pan(const RID& voice, float pan, float depth = 0, float height = 0) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("voice_set_pan", voice, pan, depth, height);
    }
  }
  %extend {
    void voice_set_filter(const RID& voice, int type, float cutoff, float resonance, float gain = 0) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("voice_set_filter", voice, type, cutoff, resonance, gain);
    }
  }
  %extend {
    void voice_set_chorus(const RID& voice, float chorus) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("voice_set_chorus", voice, chorus);
    }
  }
  %extend {
    void voice_set_reverb(const RID& voice, int room, float reverb) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("voice_set_reverb", voice, room, reverb);
    }
  }
  %extend {
    void voice_set_mix_rate(const RID& voice, int rate) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("voice_set_mix_rate", voice, rate);
    }
  }
  %extend {
    void voice_set_positional(const RID& voice, bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("voice_set_positional", voice, enabled);
    }
  }
  %extend {
    float voice_get_volume(const RID& voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("voice_get_volume", voice);
    }
  }
  %extend {
    float voice_get_pan(const RID& voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("voice_get_pan", voice);
    }
  }
  %extend {
    float voice_get_pan_height(const RID& voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("voice_get_pan_height", voice);
    }
  }
  %extend {
    float voice_get_pan_depth(const RID& voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("voice_get_pan_depth", voice);
    }
  }
  %extend {
    int voice_get_filter_type(const RID& voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("voice_get_filter_type", voice);
    }
  }
  %extend {
    float voice_get_filter_cutoff(const RID& voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("voice_get_filter_cutoff", voice);
    }
  }
  %extend {
    float voice_get_filter_resonance(const RID& voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("voice_get_filter_resonance", voice);
    }
  }
  %extend {
    float voice_get_chorus(const RID& voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("voice_get_chorus", voice);
    }
  }
  %extend {
    int voice_get_reverb_type(const RID& voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("voice_get_reverb_type", voice);
    }
  }
  %extend {
    float voice_get_reverb(const RID& voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("voice_get_reverb", voice);
    }
  }
  %extend {
    int voice_get_mix_rate(const RID& voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("voice_get_mix_rate", voice);
    }
  }
  %extend {
    bool voice_is_positional(const RID& voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("voice_is_positional", voice);
    }
  }
  %extend {
    void voice_stop(const RID& voice) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("voice_stop", voice);
    }
  }
  %extend {
    void free_rid(const RID& rid) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("free_rid", rid);
    }
  }
  %extend {
    void set_stream_global_volume_scale(float scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_stream_global_volume_scale", scale);
    }
  }
  %extend {
    float get_stream_global_volume_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_stream_global_volume_scale");
    }
  }
  %extend {
    void set_fx_global_volume_scale(float scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_fx_global_volume_scale", scale);
    }
  }
  %extend {
    float get_fx_global_volume_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_fx_global_volume_scale");
    }
  }
  %extend {
    void set_event_voice_global_volume_scale(float scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_event_voice_global_volume_scale", scale);
    }
  }
  %extend {
    float get_event_voice_global_volume_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_event_voice_global_volume_scale");
    }
  }
  %extend {
    static AudioServer* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("AudioServer")->cast_to<AudioServer>(); }
  }

};
