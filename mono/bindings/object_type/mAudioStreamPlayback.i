/* mAudioStreamPlayback.i */
%module mAudioStreamPlayback

%nodefaultctor AudioStreamPlayback;
template<class AudioStreamPlayback> class Ref;%template() Ref<AudioStreamPlayback>;
%feature("novaluewrapper") Ref<AudioStreamPlayback>;


%typemap(csbody_derived) AudioStreamPlayback %{

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

%typemap(cscode) AudioStreamPlayback %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) AudioStreamPlayback %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor AudioStreamPlayback;

class AudioStreamPlayback : public Reference {
public:

%extend {

void play(float from_pos_sec = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioStreamPlayback", "play");
  const void* __args[1] = { &from_pos_sec };
  __method_bind->ptrcall($self, __args, NULL);
}

void stop() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioStreamPlayback", "stop");
  __method_bind->ptrcall($self, NULL, NULL);
}

bool is_playing() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioStreamPlayback", "is_playing");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_loop(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioStreamPlayback", "set_loop");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_loop() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioStreamPlayback", "has_loop");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_loop_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioStreamPlayback", "get_loop_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void seek_pos(float pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioStreamPlayback", "seek_pos");
  const void* __args[1] = { &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_pos() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioStreamPlayback", "get_pos");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_length() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioStreamPlayback", "get_length");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_channels() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioStreamPlayback", "get_channels");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_mix_rate() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioStreamPlayback", "get_mix_rate");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_minimum_buffer_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AudioStreamPlayback", "get_minimum_buffer_size");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~AudioStreamPlayback() {
  if ($self->get_script_instance()) {
    CSharpInstance *cs_instance = dynamic_cast<CSharpInstance*>($self->get_script_instance());
    if (cs_instance) {
      cs_instance->mono_object_disposed();
      return;
    }
  }
  if ($self->unreference()) {
    memdelete($self);
  }
}

}


};
