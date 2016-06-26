/* mSamplePlayer.i */
%module mSamplePlayer


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
  SamplePlayer();

%extend {

void set_sample_library(SampleLibrary* library) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "set_sample_library");
  const void* __args[1] = { library };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<SampleLibrary> get_sample_library() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_sample_library");
  Ref<SampleLibrary> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_polyphony(int max_voices) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "set_polyphony");
  const void* __args[1] = { &max_voices };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_polyphony() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_polyphony");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int play(const String& name, bool unique = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "play");
  const void* __args[2] = { &name, &unique };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void stop(int voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "stop");
  const void* __args[1] = { &voice };
  __method_bind->ptrcall($self, __args, NULL);
}

void stop_all() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "stop_all");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_mix_rate(int voice, int hz) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "set_mix_rate");
  const void* __args[2] = { &voice, &hz };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_pitch_scale(int voice, float ratio) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "set_pitch_scale");
  const void* __args[2] = { &voice, &ratio };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_volume(int voice, float volume) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "set_volume");
  const void* __args[2] = { &voice, &volume };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_volume_db(int voice, float db) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "set_volume_db");
  const void* __args[2] = { &voice, &db };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_pan(int voice, float pan, float depth = 0, float height = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "set_pan");
  const void* __args[4] = { &voice, &pan, &depth, &height };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_filter(int voice, int type, float cutoff_hz, float resonance, float gain = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "set_filter");
  const void* __args[5] = { &voice, &type, &cutoff_hz, &resonance, &gain };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_chorus(int voice, float send) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "set_chorus");
  const void* __args[2] = { &voice, &send };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_reverb(int voice, int room_type, float send) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "set_reverb");
  const void* __args[3] = { &voice, &room_type, &send };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_mix_rate(int voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_mix_rate");
  const void* __args[1] = { &voice };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float get_pitch_scale(int voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_pitch_scale");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float get_volume(int voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_volume");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float get_volume_db(int voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_volume_db");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float get_pan(int voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_pan");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float get_pan_depth(int voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_pan_depth");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float get_pan_height(int voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_pan_height");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_filter_type(int voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_filter_type");
  const void* __args[1] = { &voice };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float get_filter_cutoff(int voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_filter_cutoff");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float get_filter_resonance(int voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_filter_resonance");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float get_filter_gain(int voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_filter_gain");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float get_chorus(int voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_chorus");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_reverb_room(int voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_reverb_room");
  const void* __args[1] = { &voice };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float get_reverb(int voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_reverb");
  const void* __args[1] = { &voice };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_default_pitch_scale(float ratio) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "set_default_pitch_scale");
  const void* __args[1] = { &ratio };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_default_volume(float volume) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "set_default_volume");
  const void* __args[1] = { &volume };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_default_volume_db(float db) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "set_default_volume_db");
  const void* __args[1] = { &db };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_default_pan(float pan, float depth = 0, float height = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "set_default_pan");
  const void* __args[3] = { &pan, &depth, &height };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_default_filter(int type, float cutoff_hz, float resonance, float gain = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "set_default_filter");
  const void* __args[4] = { &type, &cutoff_hz, &resonance, &gain };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_default_chorus(float send) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "set_default_chorus");
  const void* __args[1] = { &send };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_default_reverb(int room_type, float send) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "set_default_reverb");
  const void* __args[2] = { &room_type, &send };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_default_pitch_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_default_pitch_scale");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_default_volume() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_default_volume");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_default_volume_db() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_default_volume_db");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_default_pan() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_default_pan");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_default_pan_depth() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_default_pan_depth");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_default_pan_height() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_default_pan_height");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_default_filter_type() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_default_filter_type");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_default_filter_cutoff() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_default_filter_cutoff");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_default_filter_resonance() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_default_filter_resonance");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_default_filter_gain() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_default_filter_gain");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_default_chorus() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_default_chorus");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_default_reverb_room() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_default_reverb_room");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_default_reverb() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "get_default_reverb");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_active() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "is_active");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_voice_active(int voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer", "is_voice_active");
  const void* __args[1] = { &voice };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

}


};
