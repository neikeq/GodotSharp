/* mTCP_Server.i */
%module mTCP_Server


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

};
