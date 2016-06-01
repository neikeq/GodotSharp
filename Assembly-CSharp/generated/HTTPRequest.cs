/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class HTTPRequest : Node {
  public static readonly int RESULT_SUCCESS = 0;
  public static readonly int RESULT_CHUNKED_BODY_SIZE_MISMATCH = 1;
  public static readonly int RESULT_CANT_CONNECT = 2;
  public static readonly int RESULT_CANT_RESOLVE = 3;
  public static readonly int RESULT_CONNECTION_ERROR = 4;
  public static readonly int RESULT_SSL_HANDSHAKE_ERROR = 5;
  public static readonly int RESULT_NO_RESPONSE = 6;
  public static readonly int RESULT_BODY_SIZE_LIMIT_EXCEEDED = 7;
  public static readonly int RESULT_REQUEST_FAILED = 8;
  public static readonly int RESULT_REDIRECT_LIMIT_REACHED = 11;
  public static readonly int RESULT_DOWNLOAD_FILE_WRITE_ERROR = 10;

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal HTTPRequest(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.HTTPRequest_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected HTTPRequest(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.HTTPRequest_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(HTTPRequest obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          throw new global::System.MethodAccessException("C++ destructor does not have public access");
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public int request(string url, SWIGTYPE_p_StringArray custom_headers, bool ssl_validate_domain) {
    int ret = GodotEnginePINVOKE.HTTPRequest_request__SWIG_0(swigCPtr, url, SWIGTYPE_p_StringArray.getCPtr(custom_headers), ssl_validate_domain);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public int request(string url, SWIGTYPE_p_StringArray custom_headers) {
    int ret = GodotEnginePINVOKE.HTTPRequest_request__SWIG_1(swigCPtr, url, SWIGTYPE_p_StringArray.getCPtr(custom_headers));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public int request(string url) {
    int ret = GodotEnginePINVOKE.HTTPRequest_request__SWIG_2(swigCPtr, url);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void cancel_request() {
    GodotEnginePINVOKE.HTTPRequest_cancel_request(swigCPtr);
  }

  public int get_http_client_status() {
    int ret = GodotEnginePINVOKE.HTTPRequest_get_http_client_status(swigCPtr);
    return ret;
  }

  public void set_use_threads(bool enable) {
    GodotEnginePINVOKE.HTTPRequest_set_use_threads(swigCPtr, enable);
  }

  public bool is_using_threads() {
    bool ret = GodotEnginePINVOKE.HTTPRequest_is_using_threads(swigCPtr);
    return ret;
  }

  public void set_body_size_limit(int bytes) {
    GodotEnginePINVOKE.HTTPRequest_set_body_size_limit(swigCPtr, bytes);
  }

  public int get_body_size_limit() {
    int ret = GodotEnginePINVOKE.HTTPRequest_get_body_size_limit(swigCPtr);
    return ret;
  }

  public void set_max_redirects(int amount) {
    GodotEnginePINVOKE.HTTPRequest_set_max_redirects(swigCPtr, amount);
  }

  public int get_max_redirects() {
    int ret = GodotEnginePINVOKE.HTTPRequest_get_max_redirects(swigCPtr);
    return ret;
  }

  public void set_download_file(string path) {
    GodotEnginePINVOKE.HTTPRequest_set_download_file(swigCPtr, path);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public string get_download_file() {
    string ret = GodotEnginePINVOKE.HTTPRequest_get_download_file(swigCPtr);
    return ret;
  }

  public int get_downloaded_bytes() {
    int ret = GodotEnginePINVOKE.HTTPRequest_get_downloaded_bytes(swigCPtr);
    return ret;
  }

  public int get_body_size() {
    int ret = GodotEnginePINVOKE.HTTPRequest_get_body_size(swigCPtr);
    return ret;
  }

  public HTTPRequest() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_HTTPRequest());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}
