/* mEditorPlugin.i */
%module mEditorPlugin


%typemap(csbody_derived) EditorPlugin %{
  public static readonly int CONTAINER_TOOLBAR = 0;
  public static readonly int CONTAINER_SPATIAL_EDITOR_MENU = 1;
  public static readonly int CONTAINER_SPATIAL_EDITOR_SIDE = 2;
  public static readonly int CONTAINER_SPATIAL_EDITOR_BOTTOM = 3;
  public static readonly int CONTAINER_CANVAS_EDITOR_MENU = 4;
  public static readonly int CONTAINER_CANVAS_EDITOR_SIDE = 5;
  public static readonly int CONTAINER_PROPERTY_EDITOR_BOTTOM = 7;
  public static readonly int DOCK_SLOT_LEFT_UL = 0;
  public static readonly int DOCK_SLOT_LEFT_BL = 1;
  public static readonly int DOCK_SLOT_LEFT_UR = 2;
  public static readonly int DOCK_SLOT_LEFT_BR = 3;
  public static readonly int DOCK_SLOT_RIGHT_UL = 4;
  public static readonly int DOCK_SLOT_RIGHT_BL = 5;
  public static readonly int DOCK_SLOT_RIGHT_UR = 6;
  public static readonly int DOCK_SLOT_RIGHT_BR = 7;
  public static readonly int DOCK_SLOT_MAX = 8;

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

%typemap(cscode) EditorPlugin %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) EditorPlugin %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor EditorPlugin;

class EditorPlugin : public Node {
public:
  %extend {
    void apply_changes() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("apply_changes");
    }
  }
  %extend {
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  %extend {
    Ref<EditorSpatialGizmo> create_spatial_gizmo(Spatial* for_spatial) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("create_spatial_gizmo", for_spatial).operator Object *()->cast_to<EditorSpatialGizmo>();
    }
  }
  %extend {
    void edit(Object* object) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("edit", object);
    }
  }
  %extend {
    bool forward_input_event(const InputEvent& event) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("forward_input_event", event);
    }
  }
  %extend {
    bool forward_spatial_input_event(Camera* camera, const InputEvent& event) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("forward_spatial_input_event", camera, event);
    }
  }
  %extend {
    StringArray get_breakpoints() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_breakpoints");
    }
  }
  %extend {
    String get_name() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_name");
    }
  }
  %extend {
    Dictionary get_state() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_state");
    }
  }
  %extend {
    bool handles(Object* object) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("handles", object);
    }
  }
  %extend {
    bool has_main_screen() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_main_screen");
    }
  }
  %extend {
    void make_visible(bool visible) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("make_visible", visible);
    }
  }
  %extend {
    void set_state(const Dictionary& state) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_state", state);
    }
  }
  %extend {
    void add_control_to_container(int container, Control* control) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_control_to_container", container, control);
    }
  }
  %extend {
    void add_control_to_bottom_panel(Control* control, const String& title) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_control_to_bottom_panel", control, title);
    }
  }
  %extend {
    void add_control_to_dock(int slot, Control* control) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_control_to_dock", slot, control);
    }
  }
  %extend {
    void remove_control_from_docks(Control* control) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_control_from_docks", control);
    }
  }
  %extend {
    void remove_control_from_bottom_panel(Control* control) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_control_from_bottom_panel", control);
    }
  }
  %extend {
    void add_custom_type(const String& type, const String& base, Ref<Script> script, Ref<Texture> icon) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_custom_type", type, base, script, icon);
    }
  }
  %extend {
    void remove_custom_type(const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_custom_type", type);
    }
  }
  %extend {
    void add_import_plugin(Ref<EditorImportPlugin> plugin) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_import_plugin", plugin);
    }
  }
  %extend {
    void remove_import_plugin(Ref<EditorImportPlugin> plugin) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_import_plugin", plugin);
    }
  }
  %extend {
    void add_export_plugin(Ref<EditorExportPlugin> plugin) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_export_plugin", plugin);
    }
  }
  %extend {
    void remove_export_plugin(Ref<EditorExportPlugin> plugin) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_export_plugin", plugin);
    }
  }
  %extend {
    Control* get_base_control() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_base_control").operator Object *()->cast_to<Control>();
    }
  }
  %extend {
    UndoRedo* get_undo_redo() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_undo_redo").operator Object *()->cast_to<UndoRedo>();
    }
  }
  %extend {
    EditorSelection* get_selection() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_selection").operator Object *()->cast_to<EditorSelection>();
    }
  }
  %extend {
    Ref<EditorSettings> get_editor_settings() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_editor_settings").operator Object *()->cast_to<EditorSettings>();
    }
  }
  EditorPlugin();

};
