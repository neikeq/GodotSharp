/* mSceneTree.i */
%module mSceneTree


%typemap(csbody_derived) SceneTree %{
  public static readonly int GROUP_CALL_DEFAULT = 0;
  public static readonly int GROUP_CALL_REVERSE = 1;
  public static readonly int GROUP_CALL_REALTIME = 2;
  public static readonly int GROUP_CALL_UNIQUE = 4;
  public static readonly int STRETCH_MODE_DISABLED = 0;
  public static readonly int STRETCH_MODE_2D = 1;
  public static readonly int STRETCH_MODE_VIEWPORT = 2;
  public static readonly int STRETCH_ASPECT_IGNORE = 0;
  public static readonly int STRETCH_ASPECT_KEEP = 1;
  public static readonly int STRETCH_ASPECT_KEEP_WIDTH = 2;
  public static readonly int STRETCH_ASPECT_KEEP_HEIGHT = 3;

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

%typemap(cscode) SceneTree %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) SceneTree %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SceneTree;

class SceneTree : public MainLoop {
public:
  SceneTree();

%extend {

void notify_group(int call_flags, const String& group, int notification) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "notify_group");
  const void* __args[3] = { &call_flags, &group, &notification };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_group(int call_flags, const String& group, const String& property, const Variant& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "set_group");
  const void* __args[4] = { &call_flags, &group, &property, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

Array get_nodes_in_group(const String& group) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "get_nodes_in_group");
  const void* __args[1] = { &group };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Viewport* get_root() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "get_root");
  Viewport* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool has_group(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "has_group");
  const void* __args[1] = { &name };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_auto_accept_quit(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "set_auto_accept_quit");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_editor_hint(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "set_editor_hint");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_editor_hint() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "is_editor_hint");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_debug_collisions_hint(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "set_debug_collisions_hint");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_debugging_collisions_hint() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "is_debugging_collisions_hint");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_debug_navigation_hint(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "set_debug_navigation_hint");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_debugging_navigation_hint() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "is_debugging_navigation_hint");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_edited_scene_root(Object* scene) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "set_edited_scene_root");
  const void* __args[1] = { scene };
  __method_bind->ptrcall($self, __args, NULL);
}

Object* get_edited_scene_root() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "get_edited_scene_root");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_pause(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "set_pause");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_paused() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "is_paused");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_input_as_handled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "set_input_as_handled");
  __method_bind->ptrcall($self, NULL, NULL);
}

int get_node_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "get_node_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_frame() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "get_frame");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void quit() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "quit");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_screen_stretch(int mode, int aspect, const Vector2& minsize) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "set_screen_stretch");
  const void* __args[3] = { &mode, &aspect, &minsize };
  __method_bind->ptrcall($self, __args, NULL);
}

void queue_delete(Object* obj) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "queue_delete");
  const void* __args[1] = { obj };
  __method_bind->ptrcall($self, __args, NULL);
}

void call_group(int flags, const String& group, const String& method, const Variant& arg0_ = Variant(), const Variant& arg1_ = Variant(), const Variant& arg2_ = Variant(), const Variant& arg3_ = Variant(), const Variant& arg4_ = Variant()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "call_group");
  const void* __args[8] = { &flags, &group, &method, &arg0_, &arg1_, &arg2_, &arg3_, &arg4_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_current_scene(Node* child_node) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "set_current_scene");
  const void* __args[1] = { child_node };
  __method_bind->ptrcall($self, __args, NULL);
}

Node* get_current_scene() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "get_current_scene");
  Node* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int change_scene(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "change_scene");
  const void* __args[1] = { &path };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int change_scene_to(PackedScene* packed_scene) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "change_scene_to");
  const void* __args[1] = { packed_scene };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int reload_current_scene() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneTree", "reload_current_scene");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
