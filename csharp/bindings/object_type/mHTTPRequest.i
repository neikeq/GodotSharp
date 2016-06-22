/* mHTTPRequest.i */
%module mHTTPRequest

%typemap(out) HTTPRequest "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) HTTPRequest* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


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
  %extend {
    int request(const String& url, const StringArray& custom_headers = StringArray(), bool ssl_validate_domain = true) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("request", url, custom_headers, ssl_validate_domain);
    }
  }
  %extend {
    void cancel_request() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("cancel_request");
    }
  }
  %extend {
    int get_http_client_status() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_http_client_status");
    }
  }
  %extend {
    void set_use_threads(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_use_threads", enable);
    }
  }
  %extend {
    bool is_using_threads() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_using_threads");
    }
  }
  %extend {
    void set_body_size_limit(int bytes) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_body_size_limit", bytes);
    }
  }
  %extend {
    int get_body_size_limit() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_body_size_limit");
    }
  }
  %extend {
    void set_max_redirects(int amount) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_max_redirects", amount);
    }
  }
  %extend {
    int get_max_redirects() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_max_redirects");
    }
  }
  %extend {
    void set_download_file(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_download_file", path);
    }
  }
  %extend {
    String get_download_file() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_download_file");
    }
  }
  %extend {
    int get_downloaded_bytes() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_downloaded_bytes");
    }
  }
  %extend {
    int get_body_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_body_size");
    }
  }
  HTTPRequest();

};
