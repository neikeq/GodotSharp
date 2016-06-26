/* mHTTPClient.i */
%module mHTTPClient

template<class HTTPClient> class Ref;%template() Ref<HTTPClient>;
%feature("novaluewrapper") Ref<HTTPClient>;


%typemap(csbody_derived) HTTPClient %{
  public static readonly int METHOD_GET = 0;
  public static readonly int METHOD_HEAD = 1;
  public static readonly int METHOD_POST = 2;
  public static readonly int METHOD_PUT = 3;
  public static readonly int METHOD_DELETE = 4;
  public static readonly int METHOD_OPTIONS = 5;
  public static readonly int METHOD_TRACE = 6;
  public static readonly int METHOD_CONNECT = 7;
  public static readonly int METHOD_MAX = 8;
  public static readonly int STATUS_DISCONNECTED = 0;
  public static readonly int STATUS_RESOLVING = 1;
  public static readonly int STATUS_CANT_RESOLVE = 2;
  public static readonly int STATUS_CONNECTING = 3;
  public static readonly int STATUS_CANT_CONNECT = 4;
  public static readonly int STATUS_CONNECTED = 5;
  public static readonly int STATUS_REQUESTING = 6;
  public static readonly int STATUS_BODY = 7;
  public static readonly int STATUS_CONNECTION_ERROR = 8;
  public static readonly int STATUS_SSL_HANDSHAKE_ERROR = 9;
  public static readonly int RESPONSE_CONTINUE = 100;
  public static readonly int RESPONSE_SWITCHING_PROTOCOLS = 101;
  public static readonly int RESPONSE_PROCESSING = 102;
  public static readonly int RESPONSE_OK = 200;
  public static readonly int RESPONSE_CREATED = 201;
  public static readonly int RESPONSE_ACCEPTED = 202;
  public static readonly int RESPONSE_NON_AUTHORITATIVE_INFORMATION = 203;
  public static readonly int RESPONSE_NO_CONTENT = 204;
  public static readonly int RESPONSE_RESET_CONTENT = 205;
  public static readonly int RESPONSE_PARTIAL_CONTENT = 206;
  public static readonly int RESPONSE_MULTI_STATUS = 207;
  public static readonly int RESPONSE_IM_USED = 226;
  public static readonly int RESPONSE_MULTIPLE_CHOICES = 300;
  public static readonly int RESPONSE_MOVED_PERMANENTLY = 301;
  public static readonly int RESPONSE_FOUND = 302;
  public static readonly int RESPONSE_SEE_OTHER = 303;
  public static readonly int RESPONSE_NOT_MODIFIED = 304;
  public static readonly int RESPONSE_USE_PROXY = 305;
  public static readonly int RESPONSE_TEMPORARY_REDIRECT = 307;
  public static readonly int RESPONSE_BAD_REQUEST = 400;
  public static readonly int RESPONSE_UNAUTHORIZED = 401;
  public static readonly int RESPONSE_PAYMENT_REQUIRED = 402;
  public static readonly int RESPONSE_FORBIDDEN = 403;
  public static readonly int RESPONSE_NOT_FOUND = 404;
  public static readonly int RESPONSE_METHOD_NOT_ALLOWED = 405;
  public static readonly int RESPONSE_NOT_ACCEPTABLE = 406;
  public static readonly int RESPONSE_PROXY_AUTHENTICATION_REQUIRED = 407;
  public static readonly int RESPONSE_REQUEST_TIMEOUT = 408;
  public static readonly int RESPONSE_CONFLICT = 409;
  public static readonly int RESPONSE_GONE = 410;
  public static readonly int RESPONSE_LENGTH_REQUIRED = 411;
  public static readonly int RESPONSE_PRECONDITION_FAILED = 412;
  public static readonly int RESPONSE_REQUEST_ENTITY_TOO_LARGE = 413;
  public static readonly int RESPONSE_REQUEST_URI_TOO_LONG = 414;
  public static readonly int RESPONSE_UNSUPPORTED_MEDIA_TYPE = 415;
  public static readonly int RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE = 416;
  public static readonly int RESPONSE_EXPECTATION_FAILED = 417;
  public static readonly int RESPONSE_UNPROCESSABLE_ENTITY = 422;
  public static readonly int RESPONSE_LOCKED = 423;
  public static readonly int RESPONSE_FAILED_DEPENDENCY = 424;
  public static readonly int RESPONSE_UPGRADE_REQUIRED = 426;
  public static readonly int RESPONSE_INTERNAL_SERVER_ERROR = 500;
  public static readonly int RESPONSE_NOT_IMPLEMENTED = 501;
  public static readonly int RESPONSE_BAD_GATEWAY = 502;
  public static readonly int RESPONSE_SERVICE_UNAVAILABLE = 503;
  public static readonly int RESPONSE_GATEWAY_TIMEOUT = 504;
  public static readonly int RESPONSE_HTTP_VERSION_NOT_SUPPORTED = 505;
  public static readonly int RESPONSE_INSUFFICIENT_STORAGE = 507;
  public static readonly int RESPONSE_NOT_EXTENDED = 510;

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

%typemap(cscode) HTTPClient %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) HTTPClient %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor HTTPClient;

class HTTPClient : public Reference {
public:
  HTTPClient();

%extend {

int connect(const String& host, int port, bool use_ssl = false, bool verify_host = true) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "connect");
  const void* __args[4] = { &host, &port, &use_ssl, &verify_host };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_connection(StreamPeer* connection) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "set_connection");
  const void* __args[1] = { connection };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<StreamPeer> get_connection() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "get_connection");
  Ref<StreamPeer> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int request_raw(int method, const String& url, const StringArray& headers, const RawArray& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "request_raw");
  const void* __args[4] = { &method, &url, &headers, &body };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int request(int method, const String& url, const StringArray& headers, const String& body = "") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "request");
  const void* __args[4] = { &method, &url, &headers, &body };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int send_body_text(const String& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "send_body_text");
  const void* __args[1] = { &body };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int send_body_data(const RawArray& body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "send_body_data");
  const void* __args[1] = { &body };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void close() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "close");
  __method_bind->ptrcall($self, NULL, NULL);
}

bool has_response() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "has_response");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_response_chunked() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "is_response_chunked");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_response_code() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "get_response_code");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

StringArray get_response_headers() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "get_response_headers");
  StringArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Dictionary get_response_headers_as_dictionary() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "get_response_headers_as_dictionary");
  Dictionary ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_response_body_length() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "get_response_body_length");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RawArray read_response_body_chunk() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "read_response_body_chunk");
  RawArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_read_chunk_size(int bytes) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "set_read_chunk_size");
  const void* __args[1] = { &bytes };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_blocking_mode(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "set_blocking_mode");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_blocking_mode_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "is_blocking_mode_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_status() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "get_status");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int poll() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "poll");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String query_string_from_dict(const Dictionary& fields) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HTTPClient", "query_string_from_dict");
  const void* __args[1] = { &fields };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~HTTPClient() {
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
