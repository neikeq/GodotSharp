/* mIP.i */
%module mIP

%csmethodmodifiers IP::IP "private"
%csmethodmodifiers IP::SingletonGetInstance "private"
%nodefaultctor IP;

%typemap(csbody_derived) IP %{
  private static $csclassname instance;
  public static readonly int RESOLVER_STATUS_NONE = 0;
  public static readonly int RESOLVER_STATUS_WAITING = 1;
  public static readonly int RESOLVER_STATUS_DONE = 2;
  public static readonly int RESOLVER_STATUS_ERROR = 3;
  public static readonly int RESOLVER_MAX_QUERIES = 32;
  public static readonly int RESOLVER_INVALID_ID = -1;

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

%typemap(cscode) IP %{
  public static $csclassname Instance {
    get {
      if (instance == null) {
        instance = SingletonGetInstance();
      }
      return instance;
    }
  }

  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) IP %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor IP;

class IP : public Object {
public:
  %extend {
    String resolve_hostname(const String& host) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("resolve_hostname", host);
    }
  }
  %extend {
    int resolve_hostname_queue_item(const String& host) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("resolve_hostname_queue_item", host);
    }
  }
  %extend {
    int get_resolve_item_status(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_resolve_item_status", id);
    }
  }
  %extend {
    String get_resolve_item_address(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_resolve_item_address", id);
    }
  }
  %extend {
    void erase_resolve_item(int id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("erase_resolve_item", id);
    }
  }
  %extend {
    Array get_local_addresses() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_local_addresses");
    }
  }
  %extend {
    static IP* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("IP")->cast_to<IP>(); }
  }

};
