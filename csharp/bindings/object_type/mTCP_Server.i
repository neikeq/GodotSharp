/* mTCP_Server.i */
%module mTCP_Server

%typemap(ctype, out="TCP_Server*") Ref<TCP_Server> "TCP_Server*"
%typemap(out, null="NULL") Ref<TCP_Server> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<TCP_Server> "TCP_Server.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<TCP_Server> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<TCP_Server> "TCP_Server"
%typemap(csout, excode=SWIGEXCODE) Ref<TCP_Server> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    TCP_Server ret = InternalHelpers.UnmanagedGetManaged(cPtr) as TCP_Server;$excode
    return ret;
}

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
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("listen", port, accepted_hosts);
    }
  }
  %extend {
    bool is_connection_available() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_connection_available");
    }
  }
  %extend {
    Object* take_connection() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("take_connection").operator Object *();
    }
  }
  %extend {
    void stop() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("stop");
    }
  }
  %extend {
    TCP_Server() { return TCP_Server::create(); }
  }
  %extend {
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
