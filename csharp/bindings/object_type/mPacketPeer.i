/* mPacketPeer.i */
%module mPacketPeer

%nodefaultctor PacketPeer;

%typemap(csbody_derived) PacketPeer %{

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

%typemap(cscode) PacketPeer %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) PacketPeer %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PacketPeer;

class PacketPeer : public Reference {
public:
  %extend {
    void get_var() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("get_var");
    }
  }
  %extend {
    int put_var(const Variant& var) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("put_var", var);
    }
  }
  %extend {
    RawArray get_packet() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_packet");
    }
  }
  %extend {
    int put_packet(const RawArray& buffer) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("put_packet", buffer);
    }
  }
  %extend {
    int get_packet_error() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_packet_error");
    }
  }
  %extend {
    int get_available_packet_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_available_packet_count");
    }
  }

};
