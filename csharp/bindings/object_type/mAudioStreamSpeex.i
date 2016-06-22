/* mAudioStreamSpeex.i */
%module mAudioStreamSpeex

%typemap(ctype, out="AudioStreamSpeex*") Ref<AudioStreamSpeex> "AudioStreamSpeex*"
%typemap(out, null="NULL") Ref<AudioStreamSpeex> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<AudioStreamSpeex> "AudioStreamSpeex.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<AudioStreamSpeex> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<AudioStreamSpeex> "AudioStreamSpeex"
%typemap(csout, excode=SWIGEXCODE) Ref<AudioStreamSpeex> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    AudioStreamSpeex ret = InternalHelpers.UnmanagedGetManaged(cPtr) as AudioStreamSpeex;$excode
    return ret;
}

template<class AudioStreamSpeex> class Ref;%template() Ref<AudioStreamSpeex>;
%feature("novaluewrapper") Ref<AudioStreamSpeex>;


%typemap(csbody_derived) AudioStreamSpeex %{

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

%typemap(cscode) AudioStreamSpeex %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) AudioStreamSpeex %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor AudioStreamSpeex;

class AudioStreamSpeex : public AudioStream {
public:
  AudioStreamSpeex();
  %extend {
    ~AudioStreamSpeex() {
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
