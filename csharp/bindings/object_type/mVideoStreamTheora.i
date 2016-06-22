/* mVideoStreamTheora.i */
%module mVideoStreamTheora

%typemap(ctype, out="VideoStreamTheora*") Ref<VideoStreamTheora> "VideoStreamTheora*"
%typemap(out, null="NULL") Ref<VideoStreamTheora> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<VideoStreamTheora> "VideoStreamTheora.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<VideoStreamTheora> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<VideoStreamTheora> "VideoStreamTheora"
%typemap(csout, excode=SWIGEXCODE) Ref<VideoStreamTheora> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    VideoStreamTheora ret = InternalHelpers.UnmanagedGetManaged(cPtr) as VideoStreamTheora;$excode
    return ret;
}

template<class VideoStreamTheora> class Ref;%template() Ref<VideoStreamTheora>;
%feature("novaluewrapper") Ref<VideoStreamTheora>;


%typemap(csbody_derived) VideoStreamTheora %{

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

%typemap(cscode) VideoStreamTheora %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) VideoStreamTheora %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor VideoStreamTheora;

class VideoStreamTheora : public VideoStream {
public:
  VideoStreamTheora();
  %extend {
    ~VideoStreamTheora() {
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
