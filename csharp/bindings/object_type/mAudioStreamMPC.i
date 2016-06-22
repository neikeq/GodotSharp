/* mAudioStreamMPC.i */
%module mAudioStreamMPC

%typemap(ctype, out="AudioStreamMPC*") Ref<AudioStreamMPC> "AudioStreamMPC*"
%typemap(out, null="NULL") Ref<AudioStreamMPC> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<AudioStreamMPC> "AudioStreamMPC.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<AudioStreamMPC> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<AudioStreamMPC> "AudioStreamMPC"
%typemap(csout, excode=SWIGEXCODE) Ref<AudioStreamMPC> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    AudioStreamMPC ret = InternalHelpers.UnmanagedGetManaged(cPtr) as AudioStreamMPC;$excode
    return ret;
}

template<class AudioStreamMPC> class Ref;%template() Ref<AudioStreamMPC>;
%feature("novaluewrapper") Ref<AudioStreamMPC>;


%typemap(csbody_derived) AudioStreamMPC %{

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

%typemap(cscode) AudioStreamMPC %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) AudioStreamMPC %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor AudioStreamMPC;

class AudioStreamMPC : public AudioStream {
public:
  AudioStreamMPC();
  %extend {
    ~AudioStreamMPC() {
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
