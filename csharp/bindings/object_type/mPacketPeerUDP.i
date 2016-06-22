/* mPacketPeerUDP.i */
%module mPacketPeerUDP

%typemap(ctype, out="PacketPeerUDP*") Ref<PacketPeerUDP> "PacketPeerUDP*"
%typemap(out, null="NULL") Ref<PacketPeerUDP> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<PacketPeerUDP> "PacketPeerUDP.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PacketPeerUDP> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PacketPeerUDP> "PacketPeerUDP"
%typemap(csout, excode=SWIGEXCODE) Ref<PacketPeerUDP> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PacketPeerUDP ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PacketPeerUDP;$excode
    return ret;
}

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
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("listen", port, recv_buf_size);
    }
  }
  %extend {
    void close() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("close");
    }
  }
  %extend {
    int wait() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("wait");
    }
  }
  %extend {
    bool is_listening() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_listening");
    }
  }
  %extend {
    String get_packet_ip() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_packet_ip");
    }
  }
  %extend {
    int get_packet_address() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_packet_address");
    }
  }
  %extend {
    int get_packet_port() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_packet_port");
    }
  }
  %extend {
    int set_send_address(const String& host, int port) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("set_send_address", host, port);
    }
  }
  %extend {
    PacketPeerUDP() { return PacketPeerUDP::create(); }
  }
  %extend {
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
