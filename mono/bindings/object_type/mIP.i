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
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor IP;

class IP : public Object {
public:

%extend {

String resolve_hostname(const String& host) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("IP", "resolve_hostname");
  const void* __args[1] = { &host };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int resolve_hostname_queue_item(const String& host) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("IP", "resolve_hostname_queue_item");
  const void* __args[1] = { &host };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_resolve_item_status(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("IP", "get_resolve_item_status");
  const void* __args[1] = { &id };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_resolve_item_address(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("IP", "get_resolve_item_address");
  const void* __args[1] = { &id };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void erase_resolve_item(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("IP", "erase_resolve_item");
  const void* __args[1] = { &id };
  __method_bind->ptrcall($self, __args, NULL);
}

Array get_local_addresses() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("IP", "get_local_addresses");
  Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

static IP* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("IP")->cast_to<IP>(); }

}


};
