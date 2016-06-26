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
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "sample_create");
  const void* __args[3] = { &format, &stereo, &length };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void sample_set_description(const RID& sample, const String& description) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "sample_set_description");
  const void* __args[2] = { &sample, &description };
  __method_bind->ptrcall($self, __args, NULL);
}

String sample_get_description(const RID& sample) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "sample_get_description");
  const void* __args[1] = { &sample };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int sample_get_format(const RID& sample) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "sample_get_format");
  const void* __args[1] = { &sample };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool sample_is_stereo(const RID& sample) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "sample_is_stereo");
  const void* __args[1] = { &sample };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int sample_get_length(const RID& sample) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "sample_get_length");
  const void* __args[1] = { &sample };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void sample_set_signed_data(const RID& sample, const RealArray& data) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "sample_set_signed_data");
  const void* __args[2] = { &sample, &data };
  __method_bind->ptrcall($self, __args, NULL);
}

void sample_set_data(const RID& sample, const RawArray& data) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "sample_set_data");
  const void* __args[2] = { &sample, &data };
  __method_bind->ptrcall($self, __args, NULL);
}

RawArray sample_get_data(const RID& sample) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "sample_get_data");
  const void* __args[1] = { &sample };
  RawArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void sample_set_mix_rate(const RID& sample, int mix_rate) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "sample_set_mix_rate");
  const void* __args[2] = { &sample, &mix_rate };
  __method_bind->ptrcall($self, __args, NULL);
}

int sample_get_mix_rate(const RID& sample) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "sample_get_mix_rate");
  const void* __args[1] = { &sample };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void sample_set_loop_format(const RID& sample, int loop_format) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "sample_set_loop_format");
  const void* __args[2] = { &sample, &loop_format };
  __method_bind->ptrcall($self, __args, NULL);
}

int sample_get_loop_format(const RID& sample) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "sample_get_loop_format");
  const void* __args[1] = { &sample };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void sample_set_loop_begin(const RID& sample, int pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "sample_set_loop_begin");
  const void* __args[2] = { &sample, &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

int sample_get_loop_begin(const RID& sample) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "sample_get_loop_begin");
  const void* __args[1] = { &sample };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void sample_set_loop_end(const RID& sample, int pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "sample_set_loop_end");
  const void* __args[2] = { &sample, &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

int sample_get_loop_end(const RID& sample) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "sample_get_loop_end");
  const void* __args[1] = { &sample };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID voice_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void voice_play(const RID& voice, const RID& sample) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_play");
  const void* __args[2] = { &voice, &sample };
  __method_bind->ptrcall($self, __args, NULL);
}

void voice_set_volume(const RID& voice, float volume) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_set_volume");
  const void* __args[2] = { &voice, &volume };
  __method_bind->ptrcall($self, __args, NULL);
}

void voice_set_pan(const RID& voice, float pan, float depth = 0, float height = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_set_pan");
  const void* __args[4] = { &voice, &pan, &depth, &height };
  __method_bind->ptrcall($self, __args, NULL);
}

void voice_set_filter(const RID& voice, int type, float cutoff, float resonance, float gain = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_set_filter");
  const void* __args[5] = { &voice, &type, &cutoff, &resonance, &gain };
  __method_bind->ptrcall($self, __args, NULL);
}

void voice_set_chorus(const RID& voice, float chorus) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_set_chorus");
  const void* __args[2] = { &voice, &chorus };
  __method_bind->ptrcall($self, __args, NULL);
}

void voice_set_reverb(const RID& voice, int room, float reverb) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_set_reverb");
  const void* __args[3] = { &voice, &room, &reverb };
  __method_bind->ptrcall($self, __args, NULL);
}

void voice_set_mix_rate(const RID& voice, int rate) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_set_mix_rate");
  const void* __args[2] = { &voice, &rate };
  __method_bind->ptrcall($self, __args, NULL);
}

void voice_set_positional(const RID& voice, bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_set_positional");
  const void* __args[2] = { &voice, &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

float voice_get_volume(const RID& voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_get_volume");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float voice_get_pan(const RID& voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_get_pan");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float voice_get_pan_height(const RID& voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_get_pan_height");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float voice_get_pan_depth(const RID& voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_get_pan_depth");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int voice_get_filter_type(const RID& voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_get_filter_type");
  const void* __args[1] = { &voice };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float voice_get_filter_cutoff(const RID& voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_get_filter_cutoff");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float voice_get_filter_resonance(const RID& voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_get_filter_resonance");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float voice_get_chorus(const RID& voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_get_chorus");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int voice_get_reverb_type(const RID& voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_get_reverb_type");
  const void* __args[1] = { &voice };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float voice_get_reverb(const RID& voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_get_reverb");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int voice_get_mix_rate(const RID& voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_get_mix_rate");
  const void* __args[1] = { &voice };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool voice_is_positional(const RID& voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_is_positional");
  const void* __args[1] = { &voice };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void voice_stop(const RID& voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "voice_stop");
  const void* __args[1] = { &voice };
  __method_bind->ptrcall($self, __args, NULL);
}

void free_rid(const RID& rid) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "free_rid");
  const void* __args[1] = { &rid };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_stream_global_volume_scale(float scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "set_stream_global_volume_scale");
  const void* __args[1] = { &scale };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_stream_global_volume_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "get_stream_global_volume_scale");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_fx_global_volume_scale(float scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "set_fx_global_volume_scale");
  const void* __args[1] = { &scale };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_fx_global_volume_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "get_fx_global_volume_scale");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_event_voice_global_volume_scale(float scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "set_event_voice_global_volume_scale");
  const void* __args[1] = { &scale };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_event_voice_global_volume_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioServer", "get_event_voice_global_volume_scale");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

static AudioServer* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("AudioServer")->cast_to<AudioServer>(); }

}


};
