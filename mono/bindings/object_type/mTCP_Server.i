/* mTCP_Server.i */
%module mTCP_Server

template<class TCP_Server> class Ref;%template() Ref<TCP_Server>;
%feature("novaluewrapper") Ref<TCP_Server>;


%typemap(csbody_derived) TCP_Server %{

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

%typemap(cscode) TCP_Server %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) TCP_Server %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor TCP_Server;

class TCP_Server : public Reference {
public:

%extend {

int listen(int port, const StringArray& accepted_hosts = StringArray()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TCP_Server", "listen");
  const void* __args[2] = { &port, &accepted_hosts };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_connection_available() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TCP_Server", "is_connection_available");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Object* take_connection() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TCP_Server", "take_connection");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void stop() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TCP_Server", "stop");
  __method_bind->ptrcall($self, NULL, NULL);
}

TCP_Server() { return TCP_Server::create(); }

~TCP_Server() {
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
