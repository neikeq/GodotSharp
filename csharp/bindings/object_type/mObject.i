/* mObject.i */
%module mObject

%define VARIANT_ARG_LIST const Variant& p_arg1 = Variant(), const Variant& p_arg2 = Variant(), const Variant& p_arg3 = Variant(), const Variant& p_arg4 = Variant(), const Variant& p_arg5 = Variant() %enddef

%typemap(out) Object "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Object* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody) Object %{
  public static readonly int NOTIFICATION_POSTINITIALIZE = 0;
  public static readonly int NOTIFICATION_PREDELETE = 1;
  public static readonly int CONNECT_DEFERRED = 1;
  public static readonly int CONNECT_PERSIST = 2;
  public static readonly int CONNECT_ONESHOT = 4;

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  protected bool swigCMemOwn;
  
  internal $csclassname(global::System.IntPtr cPtr, bool cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  protected $csclassname(bool cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;  	
  }
  
  internal void internal_init(global::System.IntPtr cPtr) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr($csclassname obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }
%}

%typemap(cscode) Object %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Object %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Object;

class Object {
public:
  %extend {
    void _get(const String& property) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_get", property);
    }
  }
  %extend {
    Array _get_property_list() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("_get_property_list");
    }
  }
  %extend {
    void _init() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_init");
    }
  }
  %extend {
    void _notification(int what) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_notification", what);
    }
  }
  %extend {
    void _set(const String& property, const Variant& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_set", property, value);
    }
  }
  %extend {
    void free() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("free");
    }
  }
  %extend {
    String get_type() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_type");
    }
  }
  %extend {
    bool is_type(const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_type", type);
    }
  }
  %extend {
    void set(const String& property, const Variant& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set", property, value);
    }
  }
  %extend {
    void get(const String& property) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("get", property);
    }
  }
  %extend {
    Array get_property_list() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_property_list");
    }
  }
  %extend {
    Array get_method_list() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_method_list");
    }
  }
  %extend {
    void notification(int what, bool reversed = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("notification", what, reversed);
    }
  }
  %extend {
    int get_instance_ID() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_instance_ID");
    }
  }
  %extend {
    void set_script(Ref<Script> script) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_script", script);
    }
  }
  %extend {
    Ref<Script> get_script() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_script").operator Object *()->cast_to<Script>();
    }
  }
  %extend {
    void set_meta(const String& name, const Variant& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_meta", name, value);
    }
  }
  %extend {
    void get_meta(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("get_meta", name);
    }
  }
  %extend {
    bool has_meta(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_meta", name);
    }
  }
  %extend {
    StringArray get_meta_list() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_meta_list");
    }
  }
  %extend {
    void add_user_signal(const String& signal, const Array& arguments_ = Array()) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_user_signal", signal, arguments_);
    }
  }
  %extend {
    bool has_user_signal(const String& signal) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_user_signal", signal);
    }
  }
  %extend {
    void emit_signal(const String& signal, const Variant& arg0_ = Variant(), const Variant& arg1_ = Variant(), const Variant& arg2_ = Variant(), const Variant& arg3_ = Variant(), const Variant& arg4_ = Variant()) {
  Variant::CallError err;
Variant arg_0_ = Variant(signal);
Variant arg_1_ = Variant(arg0_);
Variant arg_2_ = Variant(arg1_);
Variant arg_3_ = Variant(arg2_);
Variant arg_4_ = Variant(arg3_);
Variant arg_5_ = Variant(arg4_);
Variant *args_[6] = { &arg_0_, &arg_1_, &arg_2_, &arg_3_, &arg_4_, &arg_5_ };
$self->call("emit_signal", (const Variant **) args_, 6, err);
    }
  }
  %extend {
    bool has_method(const String& method) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_method", method);
    }
  }
  %extend {
    Array get_signal_list() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_signal_list");
    }
  }
  %extend {
    Array get_signal_connection_list(const String& signal) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_signal_connection_list", signal);
    }
  }
  %extend {
    int connect(const String& signal, Object* target, const String& method, const Array& binds = Array(), int flags = 0) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("connect", signal, target, method, binds, flags);
    }
  }
  %extend {
    void disconnect(const String& signal, Object* target, const String& method) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("disconnect", signal, target, method);
    }
  }
  %extend {
    bool is_connected(const String& signal, Object* target, const String& method) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_connected", signal, target, method);
    }
  }
  %extend {
    void set_block_signals(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_block_signals", enable);
    }
  }
  %extend {
    bool is_blocking_signals() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_blocking_signals");
    }
  }
  %extend {
    void set_message_translation(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_message_translation", enable);
    }
  }
  %extend {
    bool can_translate_messages() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("can_translate_messages");
    }
  }
  %extend {
    void property_list_changed_notify() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("property_list_changed_notify");
    }
  }
  %extend {
    String XL_MESSAGE(const String& message) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("XL_MESSAGE", message);
    }
  }
  %extend {
    String tr(const String& message) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("tr", message);
    }
  }
  %extend {
    bool is_queued_for_deletion() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_queued_for_deletion");
    }
  }

  Variant call(const String& p_name, VARIANT_ARG_LIST);
  void call_deferred(const String& p_method, VARIANT_ARG_LIST);
  Variant callv(const String& p_method, const Array& p_args);
  Object();

};
