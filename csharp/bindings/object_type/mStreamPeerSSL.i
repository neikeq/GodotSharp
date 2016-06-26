/* mStreamPeerSSL.i */
%module mStreamPeerSSL

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

int accept(StreamPeer* stream) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeerSSL", "accept");
  const void* __args[1] = { stream };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int connect(StreamPeer* stream, bool validate_certs = false, const String& for_hostname = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeerSSL", "connect");
  const void* __args[3] = { stream, &validate_certs, &for_hostname };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_status() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeerSSL", "get_status");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void disconnect() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeerSSL", "disconnect");
  __method_bind->ptrcall($self, NULL, NULL);
}

StreamPeerSSL() { return StreamPeerSSL::create(); }

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
