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
    int play(const String& sample, int voice = -2) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("play", sample, voice);
    }
  }
  %extend {
    void voice_set_pitch_scale(int voice, float ratio) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("voice_set_pitch_scale", voice, ratio);
    }
  }
  %extend {
    void voice_set_volume_scale_db(int voice, float db) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("voice_set_volume_scale_db", voice, db);
    }
  }
  %extend {
    bool is_voice_active(int voice) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_voice_active", voice);
    }
  }
  %extend {
    void stop_voice(int voice) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("stop_voice", voice);
    }
  }
  %extend {
    void stop_all() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("stop_all");
    }
  }
  %extend {
    void set_random_pitch_scale(float val) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_random_pitch_scale", val);
    }
  }
  %extend {
    float get_random_pitch_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_random_pitch_scale");
    }
  }
  SamplePlayer2D();

};
