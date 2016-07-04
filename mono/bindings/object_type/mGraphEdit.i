/* mGraphEdit.i */
%module mGraphEdit


%typemap(csbody_derived) GraphEdit %{

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

%typemap(cscode) GraphEdit %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) GraphEdit %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor GraphEdit;

class GraphEdit : public Control {
public:
  GraphEdit();

%extend {

int connect_node(const String& from, int from_port, const String& to, int to_port) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphEdit", "connect_node");
  const void* __args[4] = { &from, &from_port, &to, &to_port };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_node_connected(const String& from, int from_port, const String& to, int to_port) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphEdit", "is_node_connected");
  const void* __args[4] = { &from, &from_port, &to, &to_port };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void disconnect_node(const String& from, int from_port, const String& to, int to_port) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphEdit", "disconnect_node");
  const void* __args[4] = { &from, &from_port, &to, &to_port };
  __method_bind->ptrcall($self, __args, NULL);
}

Array get_connection_list() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphEdit", "get_connection_list");
  Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_scroll_ofs() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphEdit", "get_scroll_ofs");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_zoom(float p_zoom) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphEdit", "set_zoom");
  const void* __args[1] = { &p_zoom };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_zoom() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphEdit", "get_zoom");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_right_disconnects(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphEdit", "set_right_disconnects");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_right_disconnects_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphEdit", "is_right_disconnects_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
