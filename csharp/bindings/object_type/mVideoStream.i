/* mVideoStream.i */
%module mVideoStream

%nodefaultctor VideoStream;
%typemap(ctype, out="VideoStream*") Ref<VideoStream> "VideoStream*"
%typemap(out, null="NULL") Ref<VideoStream> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<VideoStream> "VideoStream.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<VideoStream> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<VideoStream> "VideoStream"
%typemap(csout, excode=SWIGEXCODE) Ref<VideoStream> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    VideoStream ret = InternalHelpers.UnmanagedGetManaged(cPtr) as VideoStream;$excode
    return ret;
}

template<class VideoStream> class Ref;%template() Ref<VideoStream>;
%feature("novaluewrapper") Ref<VideoStream>;


%typemap(csbody_derived) VideoStream %{

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

%typemap(cscode) VideoStream %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) VideoStream %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor VideoStream;

class VideoStream : public Resource {
public:
  %extend {
    ~VideoStream() {
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
