using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Hyper-text transfer protocol client. Supports SSL and SSL server certificate verification.
    /// Can be reused to connect to different hosts and make many requests.
    /// </summary>
    public class HTTPClient : Reference
    {
        public const int METHOD_GET = 0;
        public const int METHOD_HEAD = 1;
        public const int METHOD_POST = 2;
        public const int METHOD_PUT = 3;
        public const int METHOD_DELETE = 4;
        public const int METHOD_OPTIONS = 5;
        public const int METHOD_TRACE = 6;
        public const int METHOD_CONNECT = 7;
        public const int METHOD_MAX = 8;
        public const int STATUS_DISCONNECTED = 0;
        public const int STATUS_RESOLVING = 1;
        public const int STATUS_CANT_RESOLVE = 2;
        public const int STATUS_CONNECTING = 3;
        public const int STATUS_CANT_CONNECT = 4;
        public const int STATUS_CONNECTED = 5;
        public const int STATUS_REQUESTING = 6;
        public const int STATUS_BODY = 7;
        public const int STATUS_CONNECTION_ERROR = 8;
        public const int STATUS_SSL_HANDSHAKE_ERROR = 9;
        public const int RESPONSE_CONTINUE = 100;
        public const int RESPONSE_SWITCHING_PROTOCOLS = 101;
        public const int RESPONSE_PROCESSING = 102;
        public const int RESPONSE_OK = 200;
        public const int RESPONSE_CREATED = 201;
        public const int RESPONSE_ACCEPTED = 202;
        public const int RESPONSE_NON_AUTHORITATIVE_INFORMATION = 203;
        public const int RESPONSE_NO_CONTENT = 204;
        public const int RESPONSE_RESET_CONTENT = 205;
        public const int RESPONSE_PARTIAL_CONTENT = 206;
        public const int RESPONSE_MULTI_STATUS = 207;
        public const int RESPONSE_IM_USED = 226;
        public const int RESPONSE_MULTIPLE_CHOICES = 300;
        public const int RESPONSE_MOVED_PERMANENTLY = 301;
        public const int RESPONSE_FOUND = 302;
        public const int RESPONSE_SEE_OTHER = 303;
        public const int RESPONSE_NOT_MODIFIED = 304;
        public const int RESPONSE_USE_PROXY = 305;
        public const int RESPONSE_TEMPORARY_REDIRECT = 307;
        public const int RESPONSE_BAD_REQUEST = 400;
        public const int RESPONSE_UNAUTHORIZED = 401;
        public const int RESPONSE_PAYMENT_REQUIRED = 402;
        public const int RESPONSE_FORBIDDEN = 403;
        public const int RESPONSE_NOT_FOUND = 404;
        public const int RESPONSE_METHOD_NOT_ALLOWED = 405;
        public const int RESPONSE_NOT_ACCEPTABLE = 406;
        public const int RESPONSE_PROXY_AUTHENTICATION_REQUIRED = 407;
        public const int RESPONSE_REQUEST_TIMEOUT = 408;
        public const int RESPONSE_CONFLICT = 409;
        public const int RESPONSE_GONE = 410;
        public const int RESPONSE_LENGTH_REQUIRED = 411;
        public const int RESPONSE_PRECONDITION_FAILED = 412;
        public const int RESPONSE_REQUEST_ENTITY_TOO_LARGE = 413;
        public const int RESPONSE_REQUEST_URI_TOO_LONG = 414;
        public const int RESPONSE_UNSUPPORTED_MEDIA_TYPE = 415;
        public const int RESPONSE_REQUESTED_RANGE_NOT_SATISFIABLE = 416;
        public const int RESPONSE_EXPECTATION_FAILED = 417;
        public const int RESPONSE_UNPROCESSABLE_ENTITY = 422;
        public const int RESPONSE_LOCKED = 423;
        public const int RESPONSE_FAILED_DEPENDENCY = 424;
        public const int RESPONSE_UPGRADE_REQUIRED = 426;
        public const int RESPONSE_INTERNAL_SERVER_ERROR = 500;
        public const int RESPONSE_NOT_IMPLEMENTED = 501;
        public const int RESPONSE_BAD_GATEWAY = 502;
        public const int RESPONSE_SERVICE_UNAVAILABLE = 503;
        public const int RESPONSE_GATEWAY_TIMEOUT = 504;
        public const int RESPONSE_HTTP_VERSION_NOT_SUPPORTED = 505;
        public const int RESPONSE_INSUFFICIENT_STORAGE = 507;
        public const int RESPONSE_NOT_EXTENDED = 510;

        private const string nativeName = "HTTPClient";

        public HTTPClient() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_HTTPClient_Ctor(this);
        }

        internal HTTPClient(bool memoryOwn) : base(memoryOwn) {}

        ~HTTPClient()
        {
            Dispose();
        }

        public override void Dispose()
        {
            lock (this)
            {
                if (ptr != IntPtr.Zero)
                {
                    if (memoryOwn)
                    {
                        memoryOwn = false;
                    NativeCalls.godot_icall_HTTPClient_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "connect");

        public Error connect(string host, int port, bool use_ssl = false, bool verify_host = true, int arg4 = 3)
        {
            int ret = NativeCalls.godot_icall_5_244(method_bind_0, Object.GetPtr(this), host, port, use_ssl, verify_host, arg4);
            return (Error)ret;
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_connection");

        /// <summary>
        /// Set connection to use, for this client.
        /// </summary>
        public void set_connection(StreamPeer connection)
        {
            NativeCalls.godot_icall_1_21(method_bind_1, Object.GetPtr(this), Object.GetPtr(connection));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connection");

        /// <summary>
        /// Return current connection.
        /// </summary>
        public StreamPeer get_connection()
        {
            return NativeCalls.godot_icall_0_245(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "request_raw");

        /// <summary>
        /// Sends a raw request to the connected host. The url is what is normally behind the hostname, i.e. in [code]http://somehost.com/index.php[/code], url would be "index.php".
        /// Headers are HTTP request headers.
        /// Sends body raw, as a byte array, does not encode it in any way.
        /// </summary>
        public int request_raw(int method, string url, List<string> headers, List<byte> body)
        {
            return NativeCalls.godot_icall_4_246(method_bind_3, Object.GetPtr(this), method, url, headers.ToArray(), body.ToArray());
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "request");

        /// <summary>
        /// Sends a request to the connected host. The url is what is normally behind the hostname, i.e. in [code]http://somehost.com/index.php[/code], url would be "index.php".
        /// Headers are HTTP request headers.
        /// To create a POST request with query strings to push to the server, do:
        /// [codeblock]
        /// var fields = {"username" : "user", "password" : "pass"}
        /// var queryString = httpClient.query_string_from_dict(fields)
        /// var headers = ["Content-Type: application/x-www-form-urlencoded", "Content-Length: " + str(queryString.length())]
        /// var result = httpClient.request(httpClient.METHOD_POST, "index.php", headers, queryString)
        /// [/codeblock]
        /// </summary>
        public int request(int method, string url, List<string> headers, string body = "")
        {
            return NativeCalls.godot_icall_4_247(method_bind_4, Object.GetPtr(this), method, url, headers.ToArray(), body);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "send_body_text");

        /// <summary>
        /// Stub function
        /// </summary>
        public int send_body_text(string body)
        {
            return NativeCalls.godot_icall_1_63(method_bind_5, Object.GetPtr(this), body);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "send_body_data");

        /// <summary>
        /// Stub function
        /// </summary>
        public int send_body_data(List<byte> body)
        {
            return NativeCalls.godot_icall_1_248(method_bind_6, Object.GetPtr(this), body.ToArray());
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "close");

        /// <summary>
        /// Cloces the current connection, allows for reusal of [HTTPClient].
        /// </summary>
        public void close()
        {
            NativeCalls.godot_icall_0_7(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_response");

        /// <summary>
        /// Return whether this [HTTPClient] has a response available.
        /// </summary>
        public bool has_response()
        {
            return NativeCalls.godot_icall_0_14(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_response_chunked");

        /// <summary>
        /// Return whether this [HTTPClient] has a response that is chunked.
        /// </summary>
        public bool is_response_chunked()
        {
            return NativeCalls.godot_icall_0_14(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_response_code");

        /// <summary>
        /// Return the HTTP status code of the response.
        /// </summary>
        public int get_response_code()
        {
            return NativeCalls.godot_icall_0_0(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_response_headers");

        /// <summary>
        /// Return the response headers.
        /// </summary>
        public List<string> get_response_headers()
        {
            string[] ret = NativeCalls.godot_icall_0_51(method_bind_11, Object.GetPtr(this));
            return new List<string>(ret);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_response_headers_as_dictionary");

        /// <summary>
        /// Returns all response headers as dictionary where the case-sensitivity of the keys and values is kept like the server delivers it. A value is a simple String, this string can have more than one value where "; " is used as separator.
        /// Structure: ("key":"value1; value2")
        /// Example: (content-length:12), (Content-Type:application/json; charset=UTF-8)
        /// </summary>
        public Dictionary<object, object> get_response_headers_as_dictionary()
        {
            return NativeCalls.godot_icall_0_249(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_response_body_length");

        /// <summary>
        /// Return the response's body length.
        /// </summary>
        public int get_response_body_length()
        {
            return NativeCalls.godot_icall_0_0(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "read_response_body_chunk");

        /// <summary>
        /// Reads one chunk from the response.
        /// </summary>
        public List<byte> read_response_body_chunk()
        {
            byte[] ret = NativeCalls.godot_icall_0_102(method_bind_14, Object.GetPtr(this));
            return new List<byte>(ret);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_read_chunk_size");

        /// <summary>
        /// Sets the size of the buffer used and maximum bytes to read per iteration. see [method read_response_body_chunk]
        /// </summary>
        public void set_read_chunk_size(int bytes)
        {
            NativeCalls.godot_icall_1_4(method_bind_15, Object.GetPtr(this), bytes);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_blocking_mode");

        /// <summary>
        /// If set to true, execution will block until all data is read from the response.
        /// </summary>
        public void set_blocking_mode(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_16, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_blocking_mode_enabled");

        /// <summary>
        /// Return whether blocking mode is enabled.
        /// </summary>
        public bool is_blocking_mode_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_status");

        /// <summary>
        /// Returns a STATUS_* enum constant. Need to call [method poll] in order to get status updates.
        /// </summary>
        public int get_status()
        {
            return NativeCalls.godot_icall_0_0(method_bind_18, Object.GetPtr(this));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "poll");

        /// <summary>
        /// This needs to be called in order to have any request processed. Check results with [method get_status]
        /// </summary>
        public Error poll()
        {
            int ret = NativeCalls.godot_icall_0_250(method_bind_19, Object.GetPtr(this));
            return (Error)ret;
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "query_string_from_dict");

        /// <summary>
        /// Generates a GET/POST application/x-www-form-urlencoded style query string from a provided dictionary, e.g.:
        /// [codeblock]
        /// var fields = {"username": "user", "password": "pass"}
        /// String queryString = httpClient.query_string_from_dict(fields)
        /// returns:= "username=user&password=pass"
        /// [/codeblock]
        /// </summary>
        public string query_string_from_dict(Dictionary<object, object> fields)
        {
            return NativeCalls.godot_icall_1_251(method_bind_20, Object.GetPtr(this), fields);
        }
    }
}
