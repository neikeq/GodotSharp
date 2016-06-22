/* mAudioStreamOpus.i */
%module mAudioStreamOpus

%typemap(ctype, out="AudioStreamOpus*") Ref<AudioStreamOpus> "AudioStreamOpus*"
%typemap(out, null="NULL") Ref<AudioStreamOpus> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<AudioStreamOpus> "AudioStreamOpus.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<AudioStreamOpus> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<AudioStreamOpus> "AudioStreamOpus"
%typemap(csout, excode=SWIGEXCODE) Ref<AudioStreamOpus> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    AudioStreamOpus ret = InternalHelpers.UnmanagedGetManaged(cPtr) as AudioStreamOpus;$excode
    return ret;
}

template<class AudioStreamOpus> class Ref;%template() Ref<AudioStreamOpus>;
%feature("novaluewrapper") Ref<AudioStreamOpus>;


%typemap(csbody_derived) AudioStreamOpus %{

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

%typemap(cscode) AudioStreamOpus %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) AudioStreamOpus %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor AudioStreamOpus;

class AudioStreamOpus : public AudioStream {
public:
  AudioStreamOpus();
  %extend {
    ~AudioStreamOpus() {
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
