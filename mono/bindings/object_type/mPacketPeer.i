/* mPacketPeer.i */
%module mPacketPeer

%nodefaultctor PacketPeer;
template<class PacketPeer> class Ref;%template() Ref<PacketPeer>;
%feature("novaluewrapper") Ref<PacketPeer>;


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

Variant get_var() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PacketPeer", "get_var");
  Variant ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int put_var(const Variant& var) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PacketPeer", "put_var");
  const void* __args[1] = { &var };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RawArray get_packet() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PacketPeer", "get_packet");
  RawArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int put_packet(const RawArray& buffer) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PacketPeer", "put_packet");
  const void* __args[1] = { &buffer };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_packet_error() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PacketPeer", "get_packet_error");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_available_packet_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PacketPeer", "get_available_packet_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~PacketPeer() {
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
