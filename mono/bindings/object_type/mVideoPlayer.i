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
  VideoPlayer();

%extend {

void set_stream(VideoStream* stream) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "set_stream");
  const void* __args[1] = { stream };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<VideoStream> get_stream() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "get_stream");
  Ref<VideoStream> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void play() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "play");
  __method_bind->ptrcall($self, NULL, NULL);
}

void stop() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "stop");
  __method_bind->ptrcall($self, NULL, NULL);
}

bool is_playing() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "is_playing");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_paused(bool paused) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "set_paused");
  const void* __args[1] = { &paused };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_paused() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "is_paused");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_volume(float volume) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "set_volume");
  const void* __args[1] = { &volume };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_volume() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "get_volume");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_volume_db(float db) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "set_volume_db");
  const void* __args[1] = { &db };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_volume_db() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "get_volume_db");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_audio_track(int track) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "set_audio_track");
  const void* __args[1] = { &track };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_audio_track() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "get_audio_track");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_stream_name() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "get_stream_name");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_stream_pos() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "get_stream_pos");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_autoplay(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "set_autoplay");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_autoplay() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "has_autoplay");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_expand(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "set_expand");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_expand() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "has_expand");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_buffering_msec(int msec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "set_buffering_msec");
  const void* __args[1] = { &msec };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_buffering_msec() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "get_buffering_msec");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Ref<Texture> get_video_texture() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VideoPlayer", "get_video_texture");
  Ref<Texture> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
