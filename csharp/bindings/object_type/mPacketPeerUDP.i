/* mPacketPeerUDP.i */
%module mPacketPeerUDP

template<class PacketPeerUDP> class Ref;%template() Ref<PacketPeerUDP>;
%feature("novaluewrapper") Ref<PacketPeerUDP>;


%typemap(csbody_derived) PacketPeerUDP %{

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

%typemap(cscode) PacketPeerUDP %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) PacketPeerUDP %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PacketPeerUDP;

class PacketPeerUDP : public PacketPeer {
public:

%extend {

int listen(int port, int recv_buf_size = 65536) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PacketPeerUDP", "listen");
  const void* __args[2] = { &port, &recv_buf_size };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void close() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PacketPeerUDP", "close");
  __method_bind->ptrcall($self, NULL, NULL);
}

int wait() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PacketPeerUDP", "wait");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_listening() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PacketPeerUDP", "is_listening");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_packet_ip() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PacketPeerUDP", "get_packet_ip");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_packet_address() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PacketPeerUDP", "get_packet_address");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_packet_port() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PacketPeerUDP", "get_packet_port");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int set_send_address(const String& host, int port) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PacketPeerUDP", "set_send_address");
  const void* __args[2] = { &host, &port };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

PacketPeerUDP() { return PacketPeerUDP::create(); }

~PacketPeerUDP() {
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
