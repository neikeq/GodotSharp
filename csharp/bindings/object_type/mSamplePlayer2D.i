/* mSamplePlayer2D.i */
%module mSamplePlayer2D


%typemap(csbody_derived) SamplePlayer2D %{
  public static readonly int INVALID_VOICE = -1;
  public static readonly int NEXT_VOICE = -2;

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

%typemap(cscode) SamplePlayer2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) SamplePlayer2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SamplePlayer2D;

class SamplePlayer2D : public SoundPlayer2D {
public:
  SamplePlayer2D();

%extend {

void set_sample_library(SampleLibrary* library) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer2D", "set_sample_library");
  const void* __args[1] = { library };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<SampleLibrary> get_sample_library() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer2D", "get_sample_library");
  Ref<SampleLibrary> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_polyphony(int max_voices) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer2D", "set_polyphony");
  const void* __args[1] = { &max_voices };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_polyphony() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer2D", "get_polyphony");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int play(const String& sample, int voice = -2) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer2D", "play");
  const void* __args[2] = { &sample, &voice };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void voice_set_pitch_scale(int voice, float ratio) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer2D", "voice_set_pitch_scale");
  const void* __args[2] = { &voice, &ratio };
  __method_bind->ptrcall($self, __args, NULL);
}

void voice_set_volume_scale_db(int voice, float db) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer2D", "voice_set_volume_scale_db");
  const void* __args[2] = { &voice, &db };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_voice_active(int voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer2D", "is_voice_active");
  const void* __args[1] = { &voice };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void stop_voice(int voice) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer2D", "stop_voice");
  const void* __args[1] = { &voice };
  __method_bind->ptrcall($self, __args, NULL);
}

void stop_all() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer2D", "stop_all");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_random_pitch_scale(float val) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer2D", "set_random_pitch_scale");
  const void* __args[1] = { &val };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_random_pitch_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SamplePlayer2D", "get_random_pitch_scale");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
