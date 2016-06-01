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
  %extend {
    void notify_group(int call_flags, const String& group, int notification) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("notify_group", call_flags, group, notification);
    }
  }
  %extend {
    void set_group(int call_flags, const String& group, const String& property, const Variant& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_group", call_flags, group, property, value);
    }
  }
  %extend {
    Array get_nodes_in_group(const String& group) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_nodes_in_group", group);
    }
  }
  %extend {
    Viewport* get_root() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_root").operator Object *()->cast_to<Viewport>();
    }
  }
  %extend {
    bool has_group(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_group", name);
    }
  }
  %extend {
    void set_auto_accept_quit(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_auto_accept_quit", enabled);
    }
  }
  %extend {
    void set_editor_hint(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_editor_hint", enable);
    }
  }
  %extend {
    bool is_editor_hint() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_editor_hint");
    }
  }
  %extend {
    void set_debug_collisions_hint(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_debug_collisions_hint", enable);
    }
  }
  %extend {
    bool is_debugging_collisions_hint() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_debugging_collisions_hint");
    }
  }
  %extend {
    void set_debug_navigation_hint(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_debug_navigation_hint", enable);
    }
  }
  %extend {
    bool is_debugging_navigation_hint() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_debugging_navigation_hint");
    }
  }
  %extend {
    void set_edited_scene_root(Object* scene) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_edited_scene_root", scene);
    }
  }
  %extend {
    Object* get_edited_scene_root() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_edited_scene_root").operator Object *();
    }
  }
  %extend {
    void set_pause(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_pause", enable);
    }
  }
  %extend {
    bool is_paused() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_paused");
    }
  }
  %extend {
    void set_input_as_handled() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_input_as_handled");
    }
  }
  %extend {
    int get_node_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_count");
    }
  }
  %extend {
    int get_frame() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_frame");
    }
  }
  %extend {
    void quit() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("quit");
    }
  }
  %extend {
    void set_screen_stretch(int mode, int aspect, const Vector2& minsize) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_screen_stretch", mode, aspect, minsize);
    }
  }
  %extend {
    void queue_delete(Object* obj) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("queue_delete", obj);
    }
  }
  %extend {
    void call_group(int flags, const String& group, const String& method, const Variant& arg0_ = Variant(), const Variant& arg1_ = Variant(), const Variant& arg2_ = Variant(), const Variant& arg3_ = Variant(), const Variant& arg4_ = Variant()) {
  Variant::CallError err;
Variant arg_0_ = Variant(flags);
Variant arg_1_ = Variant(group);
Variant arg_2_ = Variant(method);
Variant arg_3_ = Variant(arg0_);
Variant arg_4_ = Variant(arg1_);
Variant arg_5_ = Variant(arg2_);
Variant arg_6_ = Variant(arg3_);
Variant arg_7_ = Variant(arg4_);
Variant *args_[8] = { &arg_0_, &arg_1_, &arg_2_, &arg_3_, &arg_4_, &arg_5_, &arg_6_, &arg_7_ };
$self->call("call_group", (const Variant **) args_, 8, err);
    }
  }
  %extend {
    void set_current_scene(Node* child_node) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_current_scene", child_node);
    }
  }
  %extend {
    Node* get_current_scene() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_current_scene").operator Object *()->cast_to<Node>();
    }
  }
  %extend {
    int change_scene(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("change_scene", path);
    }
  }
  %extend {
    int change_scene_to(Ref<PackedScene> packed_scene) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("change_scene_to", packed_scene);
    }
  }
  %extend {
    int reload_current_scene() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("reload_current_scene");
    }
  }
  SceneTree();

};
