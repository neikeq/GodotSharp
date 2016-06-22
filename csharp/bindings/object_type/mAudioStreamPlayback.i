/* mAudioStreamPlayback.i */
%module mAudioStreamPlayback

%nodefaultctor AudioStreamPlayback;
%typemap(ctype, out="AudioStreamPlayback*") Ref<AudioStreamPlayback> "AudioStreamPlayback*"
%typemap(out, null="NULL") Ref<AudioStreamPlayback> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<AudioStreamPlayback> "AudioStreamPlayback.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<AudioStreamPlayback> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<AudioStreamPlayback> "AudioStreamPlayback"
%typemap(csout, excode=SWIGEXCODE) Ref<AudioStreamPlayback> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    AudioStreamPlayback ret = InternalHelpers.UnmanagedGetManaged(cPtr) as AudioStreamPlayback;$excode
    return ret;
}

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
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("play", from_pos_sec);
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
    int get_loop_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_loop_count");
    }
  }
  %extend {
    void seek_pos(float pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("seek_pos", pos);
    }
  }
  %extend {
    float get_pos() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pos");
    }
  }
  %extend {
    float get_length() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_length");
    }
  }
  %extend {
    int get_channels() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_channels");
    }
  }
  %extend {
    int get_mix_rate() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_mix_rate");
    }
  }
  %extend {
    int get_minimum_buffer_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_minimum_buffer_size");
    }
  }
  %extend {
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
