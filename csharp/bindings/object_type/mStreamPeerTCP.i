/* mStreamPeerTCP.i */
%module mStreamPeerTCP

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
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeerTCP", "connect");
  const void* __args[2] = { &host, &port };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_connected() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeerTCP", "is_connected");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_status() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeerTCP", "get_status");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_connected_host() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeerTCP", "get_connected_host");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_connected_port() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeerTCP", "get_connected_port");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void disconnect() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeerTCP", "disconnect");
  __method_bind->ptrcall($self, NULL, NULL);
}

StreamPeerTCP() { return StreamPeerTCP::create(); }

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
