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
    }$excode
  }
%}

%nodefaultdtor Node;

class Node : public Object {
public:
  %extend {
    void _enter_tree() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_enter_tree");
    }
  }
  %extend {
    void _exit_tree() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_exit_tree");
    }
  }
  %extend {
    void _fixed_process(float delta) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_fixed_process", delta);
    }
  }
  %extend {
    void _input(const InputEvent& event) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_input", event);
    }
  }
  %extend {
    void _process(float delta) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_process", delta);
    }
  }
  %extend {
    void _ready() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_ready");
    }
  }
  %extend {
    void _unhandled_input(const InputEvent& event) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_unhandled_input", event);
    }
  }
  %extend {
    void _unhandled_key_input(const InputEvent& key_event) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_unhandled_key_input", key_event);
    }
  }
  %extend {
    void set_name(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_name", name);
    }
  }
  %extend {
    String get_name() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_name");
    }
  }
  %extend {
    void add_child(Node* node, bool legible_unique_name = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_child", node, legible_unique_name);
    }
  }
  %extend {
    void remove_child(Node* node) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_child", node);
    }
  }
  %extend {
    int get_child_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_child_count");
    }
  }
  %extend {
    Array get_children() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_children");
    }
  }
  %extend {
    Node* get_child(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_child", idx).operator Object *()->cast_to<Node>();
    }
  }
  %extend {
    bool has_node(const NodePath& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_node", path);
    }
  }
  %extend {
    Node* get_node(const NodePath& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node", path).operator Object *()->cast_to<Node>();
    }
  }
  %extend {
    Node* get_parent() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_parent").operator Object *()->cast_to<Node>();
    }
  }
  %extend {
    Node* find_node(const String& mask, bool recursive = true, bool owned = true) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("find_node", mask, recursive, owned).operator Object *()->cast_to<Node>();
    }
  }
  %extend {
    bool has_node_and_resource(const NodePath& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_node_and_resource", path);
    }
  }
  %extend {
    Array get_node_and_resource(const NodePath& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_and_resource", path);
    }
  }
  %extend {
    bool is_inside_tree() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_inside_tree");
    }
  }
  %extend {
    bool is_a_parent_of(Node* node) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_a_parent_of", node);
    }
  }
  %extend {
    bool is_greater_than(Node* node) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_greater_than", node);
    }
  }
  %extend {
    NodePath get_path() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_path");
    }
  }
  %extend {
    NodePath get_path_to(Node* node) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_path_to", node);
    }
  }
  %extend {
    void add_to_group(const String& group, bool persistent = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_to_group", group, persistent);
    }
  }
  %extend {
    void remove_from_group(const String& group) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_from_group", group);
    }
  }
  %extend {
    bool is_in_group(const String& group) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_in_group", group);
    }
  }
  %extend {
    void move_child(Node* child_node, int to_pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("move_child", child_node, to_pos);
    }
  }
  %extend {
    Array get_groups() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_groups");
    }
  }
  %extend {
    void raise() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("raise");
    }
  }
  %extend {
    void set_owner(Node* owner) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_owner", owner);
    }
  }
  %extend {
    Node* get_owner() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_owner").operator Object *()->cast_to<Node>();
    }
  }
  %extend {
    void remove_and_skip() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_and_skip");
    }
  }
  %extend {
    int get_index() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_index");
    }
  }
  %extend {
    void print_tree() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("print_tree");
    }
  }
  %extend {
    void set_filename(const String& filename) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_filename", filename);
    }
  }
  %extend {
    String get_filename() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_filename");
    }
  }
  %extend {
    void propagate_notification(int what) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("propagate_notification", what);
    }
  }
  %extend {
    void set_fixed_process(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_fixed_process", enable);
    }
  }
  %extend {
    float get_fixed_process_delta_time() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_fixed_process_delta_time");
    }
  }
  %extend {
    bool is_fixed_processing() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_fixed_processing");
    }
  }
  %extend {
    void set_process(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_process", enable);
    }
  }
  %extend {
    float get_process_delta_time() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_process_delta_time");
    }
  }
  %extend {
    bool is_processing() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_processing");
    }
  }
  %extend {
    void set_process_input(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_process_input", enable);
    }
  }
  %extend {
    bool is_processing_input() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_processing_input");
    }
  }
  %extend {
    void set_process_unhandled_input(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_process_unhandled_input", enable);
    }
  }
  %extend {
    bool is_processing_unhandled_input() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_processing_unhandled_input");
    }
  }
  %extend {
    void set_process_unhandled_key_input(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_process_unhandled_key_input", enable);
    }
  }
  %extend {
    bool is_processing_unhandled_key_input() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_processing_unhandled_key_input");
    }
  }
  %extend {
    void set_pause_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_pause_mode", mode);
    }
  }
  %extend {
    int get_pause_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pause_mode");
    }
  }
  %extend {
    bool can_process() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("can_process");
    }
  }
  %extend {
    void print_stray_nodes() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("print_stray_nodes");
    }
  }
  %extend {
    int get_position_in_parent() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_position_in_parent");
    }
  }
  %extend {
    SceneTree* get_tree() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_tree").operator Object *()->cast_to<SceneTree>();
    }
  }
  %extend {
    Node* duplicate(bool use_instancing = false) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("duplicate", use_instancing).operator Object *()->cast_to<Node>();
    }
  }
  %extend {
    void replace_by(Node* node, bool keep_data = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("replace_by", node, keep_data);
    }
  }
  %extend {
    void set_scene_instance_load_placeholder(bool load_placeholder) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_scene_instance_load_placeholder", load_placeholder);
    }
  }
  %extend {
    bool get_scene_instance_load_placeholder() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_scene_instance_load_placeholder");
    }
  }
  %extend {
    Object* get_viewport() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_viewport").operator Object *();
    }
  }
  %extend {
    void queue_free() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("queue_free");
    }
  }
  Node();

};
