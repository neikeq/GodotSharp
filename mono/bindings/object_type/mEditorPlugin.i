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
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor EditorPlugin;

class EditorPlugin : public Node {
public:
  EditorPlugin();

%extend {

void apply_changes() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "apply_changes");
  __method_bind->ptrcall($self, NULL, NULL);
}

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

Ref<EditorSpatialGizmo> create_spatial_gizmo(Spatial* for_spatial) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "create_spatial_gizmo");
  const void* __args[1] = { for_spatial };
  Ref<EditorSpatialGizmo> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void edit(Object* object) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "edit");
  const void* __args[1] = { object };
  __method_bind->ptrcall($self, __args, NULL);
}

bool forward_input_event(const InputEvent& event) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "forward_input_event");
  const void* __args[1] = { &event };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool forward_spatial_input_event(Camera* camera, const InputEvent& event) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "forward_spatial_input_event");
  const void* __args[2] = { camera, &event };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

StringArray get_breakpoints() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "get_breakpoints");
  StringArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_name() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "get_name");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Dictionary get_state() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "get_state");
  Dictionary ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool handles(Object* object) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "handles");
  const void* __args[1] = { object };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_main_screen() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "has_main_screen");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void make_visible(bool visible) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "make_visible");
  const void* __args[1] = { &visible };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_state(const Dictionary& state) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "set_state");
  const void* __args[1] = { &state };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_control_to_container(int container, Control* control) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "add_control_to_container");
  const void* __args[2] = { &container, control };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_control_to_bottom_panel(Control* control, const String& title) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "add_control_to_bottom_panel");
  const void* __args[2] = { control, &title };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_control_to_dock(int slot, Control* control) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "add_control_to_dock");
  const void* __args[2] = { &slot, control };
  __method_bind->ptrcall($self, __args, NULL);
}

void remove_control_from_docks(Control* control) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "remove_control_from_docks");
  const void* __args[1] = { control };
  __method_bind->ptrcall($self, __args, NULL);
}

void remove_control_from_bottom_panel(Control* control) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "remove_control_from_bottom_panel");
  const void* __args[1] = { control };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_custom_type(const String& type, const String& base, Script* script, Texture* icon) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "add_custom_type");
  const void* __args[4] = { &type, &base, script, icon };
  __method_bind->ptrcall($self, __args, NULL);
}

void remove_custom_type(const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "remove_custom_type");
  const void* __args[1] = { &type };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_import_plugin(EditorImportPlugin* plugin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "add_import_plugin");
  const void* __args[1] = { plugin };
  __method_bind->ptrcall($self, __args, NULL);
}

void remove_import_plugin(EditorImportPlugin* plugin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "remove_import_plugin");
  const void* __args[1] = { plugin };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_export_plugin(EditorExportPlugin* plugin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "add_export_plugin");
  const void* __args[1] = { plugin };
  __method_bind->ptrcall($self, __args, NULL);
}

void remove_export_plugin(EditorExportPlugin* plugin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "remove_export_plugin");
  const void* __args[1] = { plugin };
  __method_bind->ptrcall($self, __args, NULL);
}

Control* get_base_control() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "get_base_control");
  Control* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

UndoRedo* get_undo_redo() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "get_undo_redo");
  UndoRedo* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

EditorSelection* get_selection() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "get_selection");
  EditorSelection* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Ref<EditorSettings> get_editor_settings() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorPlugin", "get_editor_settings");
  Ref<EditorSettings> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
