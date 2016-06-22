/* mPacketPeerStream.i */
%module mPacketPeerStream

%typemap(ctype, out="PacketPeerStream*") Ref<PacketPeerStream> "PacketPeerStream*"
%typemap(out, null="NULL") Ref<PacketPeerStream> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<PacketPeerStream> "PacketPeerStream.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PacketPeerStream> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PacketPeerStream> "PacketPeerStream"
%typemap(csout, excode=SWIGEXCODE) Ref<PacketPeerStream> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PacketPeerStream ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PacketPeerStream;$excode
    return ret;
}

template<class PacketPeerStream> class Ref;%template() Ref<PacketPeerStream>;
%feature("novaluewrapper") Ref<PacketPeerStream>;


%typemap(csbody_derived) PacketPeerStream %{

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

%typemap(cscode) PacketPeerStream %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) PacketPeerStream %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PacketPeerStream;

class PacketPeerStream : public PacketPeer {
public:
  %extend {
    void set_stream_peer(Ref<StreamPeer> peer) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_stream_peer", peer);
    }
  }
  PacketPeerStream();
  %extend {
    ~PacketPeerStream() {
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
