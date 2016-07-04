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
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor StreamPlayer;

class StreamPlayer : public Node {
public:
  StreamPlayer();

%extend {

void set_stream(AudioStream* stream) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "set_stream");
  const void* __args[1] = { stream };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<AudioStream> get_stream() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "get_stream");
  Ref<AudioStream> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void play(float offset = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "play");
  const void* __args[1] = { &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

void stop() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "stop");
  __method_bind->ptrcall($self, NULL, NULL);
}

bool is_playing() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "is_playing");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_paused(bool paused) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "set_paused");
  const void* __args[1] = { &paused };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_paused() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "is_paused");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_loop(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "set_loop");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_loop() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "has_loop");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_volume(float volume) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "set_volume");
  const void* __args[1] = { &volume };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_volume() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "get_volume");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_volume_db(float db) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "set_volume_db");
  const void* __args[1] = { &db };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_volume_db() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "get_volume_db");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_buffering_msec(int msec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "set_buffering_msec");
  const void* __args[1] = { &msec };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_buffering_msec() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "get_buffering_msec");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_loop_restart_time(float secs) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "set_loop_restart_time");
  const void* __args[1] = { &secs };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_loop_restart_time() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "get_loop_restart_time");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_stream_name() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "get_stream_name");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_loop_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "get_loop_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_pos() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "get_pos");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void seek_pos(float time) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "seek_pos");
  const void* __args[1] = { &time };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_autoplay(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "set_autoplay");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_autoplay() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "has_autoplay");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_length() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPlayer", "get_length");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
