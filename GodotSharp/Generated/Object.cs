using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Base class for all non built-in types. Everything not a built-in type starts the inheritance chain from this class.
    /// Objects do not manage memory, if inheriting from one the object will most likely have to be deleted manually (call the [method free] function from the script or delete from C++).
    /// Some derivates add memory management, such as [Reference] (which keeps a reference count and deletes itself automatically when no longer referenced) and [Node], which deletes the children tree when deleted.
    /// Objects export properties, which are mainly useful for storage and editing, but not really so much in programming. Properties are exported in [method _get_property_list] and handled in [method _get] and [method _set]. However, scripting languages and C++ have simpler means to export them.
    /// Objects also receive notifications ([method _notification]). Notifications are a simple way to notify the object about simple events, so they can all be handled together.
    /// </summary>
    public class Object : IDisposable
    {
        /// <summary>
        /// Called right when the object is initialized. Not available in script.
        /// </summary>
        public const int NOTIFICATION_POSTINITIALIZE = 0;
        /// <summary>
        /// Called before the object is about to be deleted.
        /// </summary>
        public const int NOTIFICATION_PREDELETE = 1;
        /// <summary>
        /// Connect a signal in deferred mode. This way, signal emissions are stored in a queue, then set on idle time.
        /// </summary>
        public const int CONNECT_DEFERRED = 1;
        /// <summary>
        /// Persisting connections are saved when the object is serialized to file.
        /// </summary>
        public const int CONNECT_PERSIST = 2;
        /// <summary>
        /// One short connections disconnect themselves after emission.
        /// </summary>
        public const int CONNECT_ONESHOT = 4;

        private const string nativeName = "Object";
        internal IntPtr ptr;
        internal bool memoryOwn;

        public Object() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Object_Ctor(this);
        }

        internal Object(bool memoryOwn)
        {
            this.memoryOwn = memoryOwn;
        }

        public bool HasValidHandle()
        {
            return ptr == IntPtr.Zero;
        }

        internal static IntPtr GetPtr(Object instance)
        {
            return instance == null ? IntPtr.Zero : instance.ptr;
        }

        ~Object()
        {
            Dispose();
        }

        public virtual void Dispose()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "free");

        public void free()
        {
            NativeCalls.godot_icall_0_7(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_type");

        /// <summary>
        /// Return the type of the object as a string.
        /// </summary>
        public string get_type()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_type");

        /// <summary>
        /// Check the type of the object against a string (including inheritance).
        /// </summary>
        public bool is_type(string type)
        {
            return NativeCalls.godot_icall_1_49(method_bind_2, Object.GetPtr(this), type);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set");

        /// <summary>
        /// Set property into the object.
        /// </summary>
        public void @set(string property, object @value)
        {
            NativeCalls.godot_icall_2_146(method_bind_3, Object.GetPtr(this), property, @value);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get");

        /// <summary>
        /// Get a property from the object.
        /// </summary>
        public void @get(string property)
        {
            NativeCalls.godot_icall_1_18(method_bind_4, Object.GetPtr(this), property);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_property_list");

        /// <summary>
        /// Return the list of properties as an array of dictionaries, dictionaries contain: name:String, type:int (see TYPE_* enum in globals) and optionally: hint:int (see PROPERTY_HINT_* in globals), hint_string:String, usage:int (see PROPERTY_USAGE_* in globals).
        /// </summary>
        public List<object> get_property_list()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_5, Object.GetPtr(this));
            return new List<object>(ret);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_method_list");

        public List<object> get_method_list()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_6, Object.GetPtr(this));
            return new List<object>(ret);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "notification");

        /// <summary>
        /// Notify the object of something.
        /// </summary>
        public void notification(int what, bool reversed = false)
        {
            NativeCalls.godot_icall_2_32(method_bind_7, Object.GetPtr(this), what, reversed);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_instance_ID");

        /// <summary>
        /// Return the instance ID. All objects have a unique instance ID.
        /// </summary>
        public int get_instance_ID()
        {
            return NativeCalls.godot_icall_0_0(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_script");

        /// <summary>
        /// Set a script into the object, scripts extend the object functionality.
        /// </summary>
        public void set_script(Script script)
        {
            NativeCalls.godot_icall_1_21(method_bind_9, Object.GetPtr(this), Object.GetPtr(script));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_script");

        /// <summary>
        /// Return the object script (or null if it doesn't have one).
        /// </summary>
        public Script get_script()
        {
            return NativeCalls.godot_icall_0_321(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_meta");

        /// <summary>
        /// Set a metadata into the object. Metadata is serialized. Metadata can be [i]anything[/i].
        /// </summary>
        public void set_meta(string name, object @value)
        {
            NativeCalls.godot_icall_2_146(method_bind_11, Object.GetPtr(this), name, @value);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_meta");

        /// <summary>
        /// Return a metadata from the object.
        /// </summary>
        public void get_meta(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_12, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_meta");

        /// <summary>
        /// Return true if a metadata is found with the requested name.
        /// </summary>
        public bool has_meta(string name)
        {
            return NativeCalls.godot_icall_1_49(method_bind_13, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_meta_list");

        /// <summary>
        /// Return the list of metadata in the object.
        /// </summary>
        public List<string> get_meta_list()
        {
            string[] ret = NativeCalls.godot_icall_0_51(method_bind_14, Object.GetPtr(this));
            return new List<string>(ret);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_user_signal");

        /// <summary>
        /// Add a user signal (can be added anytime). Arguments are optional, but can be added as an array of dictionaries, each containing "name" and "type" (from [@Global Scope] TYPE_*).
        /// <param name="arguments">If the param is null, then the default value is new List<object>()</param>
        /// </summary>
        public void add_user_signal(string signal, List<object> arguments = null)
        {
            List<object> arguments_in = arguments != null ? arguments : new List<object>();
            NativeCalls.godot_icall_2_322(method_bind_15, Object.GetPtr(this), signal, arguments_in.ToArray());
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_user_signal");

        public bool has_user_signal(string signal)
        {
            return NativeCalls.godot_icall_1_49(method_bind_16, Object.GetPtr(this), signal);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "emit_signal");

        public void emit_signal(string signal, params object[] @args)
        {
            NativeCalls.godot_icall_2_316(method_bind_17, Object.GetPtr(this), signal, @args);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "call");

        public object call(string method, params object[] @args)
        {
            return NativeCalls.godot_icall_2_323(method_bind_18, Object.GetPtr(this), method, @args);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "call_deferred");

        public void call_deferred(string method, params object[] @args)
        {
            NativeCalls.godot_icall_2_316(method_bind_19, Object.GetPtr(this), method, @args);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "callv");

        public object callv(string method, List<object> arg_array)
        {
            return NativeCalls.godot_icall_2_324(method_bind_20, Object.GetPtr(this), method, arg_array.ToArray());
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_method");

        public bool has_method(string method)
        {
            return NativeCalls.godot_icall_1_49(method_bind_21, Object.GetPtr(this), method);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_signal_list");

        /// <summary>
        /// Return the list of signals as an array of dictionaries.
        /// </summary>
        public List<object> get_signal_list()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_22, Object.GetPtr(this));
            return new List<object>(ret);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_signal_connection_list");

        public List<object> get_signal_connection_list(string signal)
        {
            object[] ret = NativeCalls.godot_icall_1_262(method_bind_23, Object.GetPtr(this), signal);
            return new List<object>(ret);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "connect");

        /// <summary>
        /// Connect a signal to a method at a target (member function). Binds are optional and are passed as extra arguments to the call. Flags specify optional deferred or one shot connections, see enum CONNECT_*. A signal can only be connected once to a method, and it will throw an error if already connected. If you want to avoid this, use [method is_connected] to check.
        /// <param name="binds">If the param is null, then the default value is new List<object>()</param>
        /// </summary>
        public int connect(string signal, Object target, string method, List<object> binds = null, int flags = 0)
        {
            List<object> binds_in = binds != null ? binds : new List<object>();
            return NativeCalls.godot_icall_5_325(method_bind_24, Object.GetPtr(this), signal, Object.GetPtr(target), method, binds_in.ToArray(), flags);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "disconnect");

        /// <summary>
        /// Disconnect a signal from a method.
        /// </summary>
        public void disconnect(string signal, Object target, string method)
        {
            NativeCalls.godot_icall_3_326(method_bind_25, Object.GetPtr(this), signal, Object.GetPtr(target), method);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_connected");

        /// <summary>
        /// Return true if a connection exists for a given signal and target/method.
        /// </summary>
        public bool is_connected(string signal, Object target, string method)
        {
            return NativeCalls.godot_icall_3_327(method_bind_26, Object.GetPtr(this), signal, Object.GetPtr(target), method);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_block_signals");

        /// <summary>
        /// If set to true, signal emission is blocked.
        /// </summary>
        public void set_block_signals(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_27, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_blocking_signals");

        /// <summary>
        /// Return true if signal emission blocking is enabled.
        /// </summary>
        public bool is_blocking_signals()
        {
            return NativeCalls.godot_icall_0_14(method_bind_28, Object.GetPtr(this));
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_message_translation");

        /// <summary>
        /// Set true if this object can translate strings (in calls to tr() ). Default is true.
        /// </summary>
        public void set_message_translation(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_29, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "can_translate_messages");

        /// <summary>
        /// Return true if this object can translate strings.
        /// </summary>
        public bool can_translate_messages()
        {
            return NativeCalls.godot_icall_0_14(method_bind_30, Object.GetPtr(this));
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "property_list_changed_notify");

        public void property_list_changed_notify()
        {
            NativeCalls.godot_icall_0_7(method_bind_31, Object.GetPtr(this));
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "XL_MESSAGE");

        /// <summary>
        /// Deprecated, will go away.
        /// </summary>
        public string XL_MESSAGE(string message)
        {
            return NativeCalls.godot_icall_1_52(method_bind_32, Object.GetPtr(this), message);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tr");

        /// <summary>
        /// Translate a message. Only works in message translation is enabled (which is by default). See [method set_message_translation].
        /// </summary>
        public string tr(string message)
        {
            return NativeCalls.godot_icall_1_52(method_bind_33, Object.GetPtr(this), message);
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_queued_for_deletion");

        public bool is_queued_for_deletion()
        {
            return NativeCalls.godot_icall_0_14(method_bind_34, Object.GetPtr(this));
        }
    }
}
