/* mObject.i */
%module mObject

%define VARIANT_ARG_LIST const Variant& p_arg1 = Variant(), const Variant& p_arg2 = Variant(), const Variant& p_arg3 = Variant(), const Variant& p_arg4 = Variant(), const Variant& p_arg5 = Variant() %enddef


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
  Variant call(const String& p_name, VARIANT_ARG_LIST);
  void call_deferred(const String& p_method, VARIANT_ARG_LIST);
  Variant callv(const String& p_method, const Array& p_args);
  Object();

%extend {

void _get(const String& property) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "_get");
  const void* __args[1] = { &property };
  __method_bind->ptrcall($self, __args, NULL);
}

Array _get_property_list() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "_get_property_list");
  Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void _init() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "_init");
  __method_bind->ptrcall($self, NULL, NULL);
}

void _notification(int what) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "_notification");
  const void* __args[1] = { &what };
  __method_bind->ptrcall($self, __args, NULL);
}

void _set(const String& property, const Variant& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "_set");
  const void* __args[2] = { &property, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void free() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "free");
  __method_bind->ptrcall($self, NULL, NULL);
}

String get_type() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "get_type");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_type(const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "is_type");
  const void* __args[1] = { &type };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set(const String& property, const Variant& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "set");
  const void* __args[2] = { &property, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void get(const String& property) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "get");
  const void* __args[1] = { &property };
  __method_bind->ptrcall($self, __args, NULL);
}

Array get_property_list() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "get_property_list");
  Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Array get_method_list() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "get_method_list");
  Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void notification(int what, bool reversed = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "notification");
  const void* __args[2] = { &what, &reversed };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_instance_ID() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "get_instance_ID");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_script(Script* script) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "set_script");
  const void* __args[1] = { script };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Script> get_script() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "get_script");
  Ref<Script> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_meta(const String& name, const Variant& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "set_meta");
  const void* __args[2] = { &name, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void get_meta(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "get_meta");
  const void* __args[1] = { &name };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_meta(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "has_meta");
  const void* __args[1] = { &name };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

StringArray get_meta_list() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "get_meta_list");
  StringArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_user_signal(const String& signal, const Array& arguments_ = Array()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "add_user_signal");
  const void* __args[2] = { &signal, &arguments_ };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_user_signal(const String& signal) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "has_user_signal");
  const void* __args[1] = { &signal };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void emit_signal(const String& signal, const Variant& arg0_ = Variant(), const Variant& arg1_ = Variant(), const Variant& arg2_ = Variant(), const Variant& arg3_ = Variant(), const Variant& arg4_ = Variant()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "emit_signal");
  const void* __args[6] = { &signal, &arg0_, &arg1_, &arg2_, &arg3_, &arg4_ };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_method(const String& method) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "has_method");
  const void* __args[1] = { &method };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array get_signal_list() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "get_signal_list");
  Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Array get_signal_connection_list(const String& signal) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "get_signal_connection_list");
  const void* __args[1] = { &signal };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int connect(const String& signal, Object* target, const String& method, const Array& binds = Array(), int flags = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "connect");
  const void* __args[5] = { &signal, target, &method, &binds, &flags };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void disconnect(const String& signal, Object* target, const String& method) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "disconnect");
  const void* __args[3] = { &signal, target, &method };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_connected(const String& signal, Object* target, const String& method) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "is_connected");
  const void* __args[3] = { &signal, target, &method };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_block_signals(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "set_block_signals");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_blocking_signals() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "is_blocking_signals");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_message_translation(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "set_message_translation");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool can_translate_messages() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "can_translate_messages");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void property_list_changed_notify() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "property_list_changed_notify");
  __method_bind->ptrcall($self, NULL, NULL);
}

String XL_MESSAGE(const String& message) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "XL_MESSAGE");
  const void* __args[1] = { &message };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String tr(const String& message) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "tr");
  const void* __args[1] = { &message };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_queued_for_deletion() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Object", "is_queued_for_deletion");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
