/* mGraphNode.i */
%module mGraphNode


%typemap(csbody_derived) GraphNode %{

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

%typemap(cscode) GraphNode %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) GraphNode %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor GraphNode;

class GraphNode : public Container {
public:
  GraphNode();

%extend {

void set_title(const String& title) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "set_title");
  const void* __args[1] = { &title };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_title() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "get_title");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_slot(int idx, bool enable_left, int type_left, const Color& color_left, bool enable_right, int type_right, const Color& color_right) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "set_slot");
  const void* __args[7] = { &idx, &enable_left, &type_left, &color_left, &enable_right, &type_right, &color_right };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear_slot(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "clear_slot");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear_all_slots() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "clear_all_slots");
  __method_bind->ptrcall($self, NULL, NULL);
}

bool is_slot_enabled_left(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "is_slot_enabled_left");
  const void* __args[1] = { &idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_slot_type_left(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "get_slot_type_left");
  const void* __args[1] = { &idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Color get_slot_color_left(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "get_slot_color_left");
  const void* __args[1] = { &idx };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_slot_enabled_right(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "is_slot_enabled_right");
  const void* __args[1] = { &idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_slot_type_right(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "get_slot_type_right");
  const void* __args[1] = { &idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Color get_slot_color_right(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "get_slot_color_right");
  const void* __args[1] = { &idx };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_offset(const Vector2& offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "set_offset");
  const void* __args[1] = { &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "get_offset");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_connection_output_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "get_connection_output_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_connection_input_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "get_connection_input_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_connection_output_pos(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "get_connection_output_pos");
  const void* __args[1] = { &idx };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_connection_output_type(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "get_connection_output_type");
  const void* __args[1] = { &idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Color get_connection_output_color(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "get_connection_output_color");
  const void* __args[1] = { &idx };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 get_connection_input_pos(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "get_connection_input_pos");
  const void* __args[1] = { &idx };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_connection_input_type(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "get_connection_input_type");
  const void* __args[1] = { &idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Color get_connection_input_color(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "get_connection_input_color");
  const void* __args[1] = { &idx };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_show_close_button(bool show) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "set_show_close_button");
  const void* __args[1] = { &show };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_close_button_visible() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GraphNode", "is_close_button_visible");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
