/* mStreamPeerSSL.i */
%module mStreamPeerSSL

%typemap(ctype, out="StreamPeerSSL*") Ref<StreamPeerSSL> "StreamPeerSSL*"
%typemap(out, null="NULL") Ref<StreamPeerSSL> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<StreamPeerSSL> "StreamPeerSSL.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<StreamPeerSSL> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<StreamPeerSSL> "StreamPeerSSL"
%typemap(csout, excode=SWIGEXCODE) Ref<StreamPeerSSL> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    StreamPeerSSL ret = InternalHelpers.UnmanagedGetManaged(cPtr) as StreamPeerSSL;$excode
    return ret;
}

template<class StreamPeerSSL> class Ref;%template() Ref<StreamPeerSSL>;
%feature("novaluewrapper") Ref<StreamPeerSSL>;


%typemap(csbody_derived) StreamPeerSSL %{
  public static readonly int STATUS_DISCONNECTED = 0;
  public static readonly int STATUS_CONNECTED = 1;
  public static readonly int STATUS_ERROR_NO_CERTIFICATE = 2;
  public static readonly int STATUS_ERROR_HOSTNAME_MISMATCH = 3;

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

%typemap(cscode) StreamPeerSSL %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) StreamPeerSSL %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor StreamPeerSSL;

class StreamPeerSSL : public StreamPeer {
public:
  %extend {
    int accept(Ref<StreamPeer> stream) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("accept", stream);
    }
  }
  %extend {
    int connect(Ref<StreamPeer> stream, bool validate_certs = false, const String& for_hostname = "") {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("connect", stream, validate_certs, for_hostname);
    }
  }
  %extend {
    int get_status() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_status");
    }
  }
  %extend {
    void disconnect() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("disconnect");
    }
  }
  %extend {
    StreamPeerSSL() { return StreamPeerSSL::create(); }
  }
  %extend {
    ~StreamPeerSSL() {
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
