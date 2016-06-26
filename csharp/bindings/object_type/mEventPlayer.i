/* mEventPlayer.i */
%module mEventPlayer


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
  EventPlayer();

%extend {

void set_stream(EventStream* stream) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "set_stream");
  const void* __args[1] = { stream };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<EventStream> get_stream() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "get_stream");
  Ref<EventStream> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void play() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "play");
  __method_bind->ptrcall($self, NULL, NULL);
}

void stop() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "stop");
  __method_bind->ptrcall($self, NULL, NULL);
}

bool is_playing() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "is_playing");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_paused(bool paused) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "set_paused");
  const void* __args[1] = { &paused };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_paused() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "is_paused");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_loop(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "set_loop");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_loop() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "has_loop");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_volume(float volume) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "set_volume");
  const void* __args[1] = { &volume };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_volume() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "get_volume");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_pitch_scale(float pitch_scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "set_pitch_scale");
  const void* __args[1] = { &pitch_scale };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_pitch_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "get_pitch_scale");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_tempo_scale(float tempo_scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "set_tempo_scale");
  const void* __args[1] = { &tempo_scale };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_tempo_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "get_tempo_scale");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_volume_db(float db) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "set_volume_db");
  const void* __args[1] = { &db };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_volume_db() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "get_volume_db");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_stream_name() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "get_stream_name");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_loop_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "get_loop_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_pos() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "get_pos");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void seek_pos(float time) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "seek_pos");
  const void* __args[1] = { &time };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_length() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "get_length");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_autoplay(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "set_autoplay");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_autoplay() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "has_autoplay");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_channel_volume(int channel, float channel_volume) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "set_channel_volume");
  const void* __args[2] = { &channel, &channel_volume };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_channel_volume(int channel) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "get_channel_volume");
  const void* __args[1] = { &channel };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float get_channel_last_note_time(int channel) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EventPlayer", "get_channel_last_note_time");
  const void* __args[1] = { &channel };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

}


};
