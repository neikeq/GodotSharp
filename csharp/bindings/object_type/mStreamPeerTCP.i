/* mStreamPeerTCP.i */
%module mStreamPeerTCP

%typemap(ctype, out="StreamPeerTCP*") Ref<StreamPeerTCP> "StreamPeerTCP*"
%typemap(out, null="NULL") Ref<StreamPeerTCP> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<StreamPeerTCP> "StreamPeerTCP.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<StreamPeerTCP> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<StreamPeerTCP> "StreamPeerTCP"
%typemap(csout, excode=SWIGEXCODE) Ref<StreamPeerTCP> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    StreamPeerTCP ret = InternalHelpers.UnmanagedGetManaged(cPtr) as StreamPeerTCP;$excode
    return ret;
}

template<class StreamPeerTCP> class Ref;%template() Ref<StreamPeerTCP>;
%feature("novaluewrapper") Ref<StreamPeerTCP>;


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
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
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
  %extend {
    ~StreamPeerTCP() {
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
