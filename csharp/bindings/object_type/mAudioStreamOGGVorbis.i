/* mAudioStreamOGGVorbis.i */
%module mAudioStreamOGGVorbis

%typemap(ctype, out="AudioStreamOGGVorbis*") Ref<AudioStreamOGGVorbis> "AudioStreamOGGVorbis*"
%typemap(out, null="NULL") Ref<AudioStreamOGGVorbis> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<AudioStreamOGGVorbis> "AudioStreamOGGVorbis.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<AudioStreamOGGVorbis> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<AudioStreamOGGVorbis> "AudioStreamOGGVorbis"
%typemap(csout, excode=SWIGEXCODE) Ref<AudioStreamOGGVorbis> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    AudioStreamOGGVorbis ret = InternalHelpers.UnmanagedGetManaged(cPtr) as AudioStreamOGGVorbis;$excode
    return ret;
}

template<class AudioStreamOGGVorbis> class Ref;%template() Ref<AudioStreamOGGVorbis>;
%feature("novaluewrapper") Ref<AudioStreamOGGVorbis>;


%typemap(csbody_derived) AudioStreamOGGVorbis %{

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

%typemap(cscode) AudioStreamOGGVorbis %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) AudioStreamOGGVorbis %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor AudioStreamOGGVorbis;

class AudioStreamOGGVorbis : public AudioStream {
public:
  AudioStreamOGGVorbis();
  %extend {
    ~AudioStreamOGGVorbis() {
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
