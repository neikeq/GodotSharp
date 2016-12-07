using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// A Node with the ability to send HTTP requests. Uses a [HTTPClient] internally, supports HTTPS.
    /// Can be used to make HTTP requests or download files via HTTP.
    /// </summary>
    public class HTTPRequest : Node
    {
        /// <summary>
        /// Request successful.
        /// </summary>
        public const int RESULT_SUCCESS = 0;
        public const int RESULT_CHUNKED_BODY_SIZE_MISMATCH = 1;
        /// <summary>
        /// Request failed while connecting.
        /// </summary>
        public const int RESULT_CANT_CONNECT = 2;
        /// <summary>
        /// Request failed while resolving.
        /// </summary>
        public const int RESULT_CANT_RESOLVE = 3;
        /// <summary>
        /// Request failed due to connection(read/write) error.
        /// </summary>
        public const int RESULT_CONNECTION_ERROR = 4;
        /// <summary>
        /// Request failed on SSL handshake.
        /// </summary>
        public const int RESULT_SSL_HANDSHAKE_ERROR = 5;
        /// <summary>
        /// Request does not have a response(yet).
        /// </summary>
        public const int RESULT_NO_RESPONSE = 6;
        /// <summary>
        /// Request exceded it's maximum size limit, see [method set_body_size_limit].
        /// </summary>
        public const int RESULT_BODY_SIZE_LIMIT_EXCEEDED = 7;
        /// <summary>
        /// Request failed. (unused)
        /// </summary>
        public const int RESULT_REQUEST_FAILED = 8;
        /// <summary>
        /// HTTPRequest couldn't open the download file.
        /// </summary>
        public const int RESULT_DOWNLOAD_FILE_CANT_OPEN = 9;
        /// <summary>
        /// HTTPRequest couldn't write to the download file.
        /// </summary>
        public const int RESULT_DOWNLOAD_FILE_WRITE_ERROR = 10;
        /// <summary>
        /// Request reached it's maximum redirect limit, see [method set_max_redirects].
        /// </summary>
        public const int RESULT_REDIRECT_LIMIT_REACHED = 11;

        private const string nativeName = "HTTPRequest";

        public HTTPRequest() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_HTTPRequest_Ctor(this);
        }

        internal HTTPRequest(bool memoryOwn) : base(memoryOwn) {}

        ~HTTPRequest()
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
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "request");

        public int request(string url, List<string> custom_headers = null, bool ssl_validate_domain = true, int method = 0, string request_data = "")
        {
            List<string> custom_headers_in = custom_headers != null ? custom_headers : new List<string>();
            return NativeCalls.godot_icall_5_252(method_bind_0, Object.GetPtr(this), url, custom_headers_in.ToArray(), ssl_validate_domain, method, request_data);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cancel_request");

        /// <summary>
        /// Cancel the current request.
        /// </summary>
        public void cancel_request()
        {
            NativeCalls.godot_icall_0_7(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_http_client_status");

        /// <summary>
        /// Return the current status of the underlying [HTTPClient].
        /// </summary>
        public int get_http_client_status()
        {
            return NativeCalls.godot_icall_0_0(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_use_threads");

        /// <summary>
        /// Make this HTTPRequest use threads.
        /// </summary>
        public void set_use_threads(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_3, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_using_threads");

        /// <summary>
        /// Whether this request is using threads.
        /// </summary>
        public bool is_using_threads()
        {
            return NativeCalls.godot_icall_0_14(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_body_size_limit");

        /// <summary>
        /// Set the response body size limit.
        /// </summary>
        public void set_body_size_limit(int bytes)
        {
            NativeCalls.godot_icall_1_4(method_bind_5, Object.GetPtr(this), bytes);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_body_size_limit");

        /// <summary>
        /// Return current body size limit.
        /// </summary>
        public int get_body_size_limit()
        {
            return NativeCalls.godot_icall_0_0(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_max_redirects");

        /// <summary>
        /// Set the maximum amount of redirects the request will follow.
        /// </summary>
        public void set_max_redirects(int amount)
        {
            NativeCalls.godot_icall_1_4(method_bind_7, Object.GetPtr(this), amount);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_max_redirects");

        /// <summary>
        /// Return the maximum amount of redirects that will be followed.
        /// </summary>
        public int get_max_redirects()
        {
            return NativeCalls.godot_icall_0_0(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_download_file");

        /// <summary>
        /// Set the file to download into. Outputs the response body into the file.
        /// </summary>
        public void set_download_file(string path)
        {
            NativeCalls.godot_icall_1_18(method_bind_9, Object.GetPtr(this), path);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_download_file");

        /// <summary>
        /// Return the file this request will download into.
        /// </summary>
        public string get_download_file()
        {
            return NativeCalls.godot_icall_0_19(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_downloaded_bytes");

        /// <summary>
        /// Return the amount of bytes this HTTPRequest downloaded.
        /// </summary>
        public int get_downloaded_bytes()
        {
            return NativeCalls.godot_icall_0_0(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_body_size");

        /// <summary>
        /// Return the response body length.
        /// </summary>
        public int get_body_size()
        {
            return NativeCalls.godot_icall_0_0(method_bind_12, Object.GetPtr(this));
        }
    }
}
