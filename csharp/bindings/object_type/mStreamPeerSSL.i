/* mStreamPeerSSL.i */
%module mStreamPeerSSL


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

};
