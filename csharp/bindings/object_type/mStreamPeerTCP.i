/* mStreamPeerTCP.i */
%module mStreamPeerTCP


%typemap(csbody_derived) StreamPeerTCP %{
  public static readonly int STATUS_NONE = 0;
  public static readonly int STATUS_CONNECTING = 1;
  public static readonly int STATUS_CONNECTED = 2;
  public static readonly int STATUS_ERROR = 3;

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

%typemap(cscode) StreamPeerTCP %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) StreamPeerTCP %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor StreamPeerTCP;

class StreamPeerTCP : public StreamPeer {
public:
  %extend {
    int connect(const String& host, int port) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("connect", host, port);
    }
  }
  %extend {
    bool is_connected() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_connected");
    }
  }
  %extend {
    int get_status() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_status");
    }
  }
  %extend {
    String get_connected_host() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connected_host");
    }
  }
  %extend {
    int get_connected_port() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connected_port");
    }
  }
  %extend {
    void disconnect() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("disconnect");
    }
  }
  %extend {
    StreamPeerTCP() { return StreamPeerTCP::create(); }
  }

};
