/* mHTTPRequest.i */
%module mHTTPRequest


%typemap(csbody_derived) HTTPRequest %{
  public static readonly int RESULT_SUCCESS = 0;
  public static readonly int RESULT_CHUNKED_BODY_SIZE_MISMATCH = 1;
  public static readonly int RESULT_CANT_CONNECT = 2;
  public static readonly int RESULT_CANT_RESOLVE = 3;
  public static readonly int RESULT_CONNECTION_ERROR = 4;
  public static readonly int RESULT_SSL_HANDSHAKE_ERROR = 5;
  public static readonly int RESULT_NO_RESPONSE = 6;
  public static readonly int RESULT_BODY_SIZE_LIMIT_EXCEEDED = 7;
  public static readonly int RESULT_REQUEST_FAILED = 8;
  public static readonly int RESULT_DOWNLOAD_FILE_CANT_OPEN = 9;
  public static readonly int RESULT_DOWNLOAD_FILE_WRITE_ERROR = 10;
  public static readonly int RESULT_REDIRECT_LIMIT_REACHED = 11;

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

%typemap(cscode) HTTPRequest %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) HTTPRequest %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor HTTPRequest;

class HTTPRequest : public Node {
public:
  HTTPRequest();

%extend {

int request(const String& url, const StringArray& custom_headers = StringArray(), bool ssl_validate_domain = true) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPRequest", "request");
  const void* __args[3] = { &url, &custom_headers, &ssl_validate_domain };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void cancel_request() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPRequest", "cancel_request");
  __method_bind->ptrcall($self, NULL, NULL);
}

int get_http_client_status() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPRequest", "get_http_client_status");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_use_threads(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPRequest", "set_use_threads");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_using_threads() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPRequest", "is_using_threads");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_body_size_limit(int bytes) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPRequest", "set_body_size_limit");
  const void* __args[1] = { &bytes };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_body_size_limit() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPRequest", "get_body_size_limit");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_max_redirects(int amount) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPRequest", "set_max_redirects");
  const void* __args[1] = { &amount };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_max_redirects() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPRequest", "get_max_redirects");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_download_file(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPRequest", "set_download_file");
  const void* __args[1] = { &path };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_download_file() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPRequest", "get_download_file");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_downloaded_bytes() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPRequest", "get_downloaded_bytes");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_body_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPRequest", "get_body_size");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
