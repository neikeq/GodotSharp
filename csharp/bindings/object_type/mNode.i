/* mNode.i */
%module mNode


%typemap(csbody_derived) Node %{
  public static readonly int NOTIFICATION_ENTER_TREE = 10;
  public static readonly int NOTIFICATION_EXIT_TREE = 11;
  public static readonly int NOTIFICATION_MOVED_IN_PARENT = 12;
  public static readonly int NOTIFICATION_READY = 13;
  public static readonly int NOTIFICATION_FIXED_PROCESS = 16;
  public static readonly int NOTIFICATION_PROCESS = 17;
  public static readonly int NOTIFICATION_PARENTED = 18;
  public static readonly int NOTIFICATION_UNPARENTED = 19;
  public static readonly int NOTIFICATION_PAUSED = 14;
  public static readonly int NOTIFICATION_UNPAUSED = 15;
  public static readonly int NOTIFICATION_INSTANCED = 20;
  public static readonly int NOTIFICATION_DRAG_BEGIN = 21;
  public static readonly int NOTIFICATION_DRAG_END = 22;
  public static readonly int PAUSE_MODE_INHERIT = 0;
  public static readonly int PAUSE_MODE_STOP = 1;
  public static readonly int PAUSE_MODE_PROCESS = 2;

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

%typemap(cscode) Node %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Node %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Node;

class Node : public Object {
public:
  Node();

%extend {

void _enter_tree() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "_enter_tree");
  __method_bind->ptrcall($self, NULL, NULL);
}

void _exit_tree() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "_exit_tree");
  __method_bind->ptrcall($self, NULL, NULL);
}

void _fixed_process(float delta) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "_fixed_process");
  const void* __args[1] = { &delta };
  __method_bind->ptrcall($self, __args, NULL);
}

void _input(const InputEvent& event) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "_input");
  const void* __args[1] = { &event };
  __method_bind->ptrcall($self, __args, NULL);
}

void _process(float delta) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "_process");
  const void* __args[1] = { &delta };
  __method_bind->ptrcall($self, __args, NULL);
}

void _ready() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "_ready");
  __method_bind->ptrcall($self, NULL, NULL);
}

void _unhandled_input(const InputEvent& event) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "_unhandled_input");
  const void* __args[1] = { &event };
  __method_bind->ptrcall($self, __args, NULL);
}

void _unhandled_key_input(const InputEvent& key_event) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "_unhandled_key_input");
  const void* __args[1] = { &key_event };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_name(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "set_name");
  const void* __args[1] = { &name };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_name() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_name");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_child(Node* node, bool legible_unique_name = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "add_child");
  const void* __args[2] = { node, &legible_unique_name };
  __method_bind->ptrcall($self, __args, NULL);
}

void remove_child(Node* node) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "remove_child");
  const void* __args[1] = { node };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_child_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_child_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Array get_children() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_children");
  Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Node* get_child(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_child");
  const void* __args[1] = { &idx };
  Node* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_node(const NodePath& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "has_node");
  const void* __args[1] = { &path };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Node* get_node(const NodePath& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_node");
  const void* __args[1] = { &path };
  Node* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Node* get_parent() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_parent");
  Node* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Node* find_node(const String& mask, bool recursive = true, bool owned = true) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "find_node");
  const void* __args[3] = { &mask, &recursive, &owned };
  Node* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_node_and_resource(const NodePath& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "has_node_and_resource");
  const void* __args[1] = { &path };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array get_node_and_resource(const NodePath& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_node_and_resource");
  const void* __args[1] = { &path };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_inside_tree() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "is_inside_tree");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_a_parent_of(Node* node) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "is_a_parent_of");
  const void* __args[1] = { node };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_greater_than(Node* node) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "is_greater_than");
  const void* __args[1] = { node };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

NodePath get_path() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_path");
  NodePath ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

NodePath get_path_to(Node* node) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_path_to");
  const void* __args[1] = { node };
  NodePath ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void add_to_group(const String& group, bool persistent = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "add_to_group");
  const void* __args[2] = { &group, &persistent };
  __method_bind->ptrcall($self, __args, NULL);
}

void remove_from_group(const String& group) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "remove_from_group");
  const void* __args[1] = { &group };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_in_group(const String& group) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "is_in_group");
  const void* __args[1] = { &group };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void move_child(Node* child_node, int to_pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "move_child");
  const void* __args[2] = { child_node, &to_pos };
  __method_bind->ptrcall($self, __args, NULL);
}

Array get_groups() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_groups");
  Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void raise() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "raise");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_owner(Node* owner) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "set_owner");
  const void* __args[1] = { owner };
  __method_bind->ptrcall($self, __args, NULL);
}

Node* get_owner() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_owner");
  Node* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void remove_and_skip() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "remove_and_skip");
  __method_bind->ptrcall($self, NULL, NULL);
}

int get_index() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_index");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void print_tree() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "print_tree");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_filename(const String& filename) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "set_filename");
  const void* __args[1] = { &filename };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_filename() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_filename");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void propagate_notification(int what) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "propagate_notification");
  const void* __args[1] = { &what };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_fixed_process(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "set_fixed_process");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_fixed_process_delta_time() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_fixed_process_delta_time");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_fixed_processing() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "is_fixed_processing");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_process(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "set_process");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_process_delta_time() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_process_delta_time");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_processing() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "is_processing");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_process_input(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "set_process_input");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_processing_input() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "is_processing_input");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_process_unhandled_input(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "set_process_unhandled_input");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_processing_unhandled_input() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "is_processing_unhandled_input");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_process_unhandled_key_input(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "set_process_unhandled_key_input");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_processing_unhandled_key_input() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "is_processing_unhandled_key_input");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_pause_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "set_pause_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_pause_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_pause_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool can_process() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "can_process");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void print_stray_nodes() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "print_stray_nodes");
  __method_bind->ptrcall($self, NULL, NULL);
}

int get_position_in_parent() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_position_in_parent");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

SceneTree* get_tree() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_tree");
  SceneTree* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Node* duplicate(bool use_instancing = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "duplicate");
  const void* __args[1] = { &use_instancing };
  Node* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void replace_by(Node* node, bool keep_data = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "replace_by");
  const void* __args[2] = { node, &keep_data };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_scene_instance_load_placeholder(bool load_placeholder) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "set_scene_instance_load_placeholder");
  const void* __args[1] = { &load_placeholder };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_scene_instance_load_placeholder() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_scene_instance_load_placeholder");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Object* get_viewport() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "get_viewport");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void queue_free() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node", "queue_free");
  __method_bind->ptrcall($self, NULL, NULL);
}

}


};
