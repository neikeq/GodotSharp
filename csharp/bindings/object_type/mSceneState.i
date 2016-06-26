/* mSceneState.i */
%module mSceneState

%nodefaultctor SceneState;
template<class SceneState> class Ref;%template() Ref<SceneState>;
%feature("novaluewrapper") Ref<SceneState>;


%typemap(csbody_derived) SceneState %{

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

%typemap(cscode) SceneState %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) SceneState %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SceneState;

class SceneState : public Reference {
public:

%extend {

int get_node_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "get_node_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_node_type(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "get_node_type");
  const void* __args[1] = { &idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_node_name(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "get_node_name");
  const void* __args[1] = { &idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

NodePath get_node_path(int idx, bool for_parent = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "get_node_path");
  const void* __args[2] = { &idx, &for_parent };
  NodePath ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

NodePath get_node_owner_path(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "get_node_owner_path");
  const void* __args[1] = { &idx };
  NodePath ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_node_instance_placeholder(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "is_node_instance_placeholder");
  const void* __args[1] = { &idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_node_instance_placeholder(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "get_node_instance_placeholder");
  const void* __args[1] = { &idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Ref<PackedScene> get_node_instance(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "get_node_instance");
  const void* __args[1] = { &idx };
  Ref<PackedScene> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

StringArray get_node_groups(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "get_node_groups");
  const void* __args[1] = { &idx };
  StringArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_node_property_count(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "get_node_property_count");
  const void* __args[1] = { &idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_node_property_name(int idx, int prop_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "get_node_property_name");
  const void* __args[2] = { &idx, &prop_idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void get_node_property_value(int idx, int prop_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "get_node_property_value");
  const void* __args[2] = { &idx, &prop_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_connection_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "get_connection_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

NodePath get_connection_source(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "get_connection_source");
  const void* __args[1] = { &idx };
  NodePath ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_connection_signal(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "get_connection_signal");
  const void* __args[1] = { &idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

NodePath get_connection_target(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "get_connection_target");
  const void* __args[1] = { &idx };
  NodePath ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_connection_method(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "get_connection_method");
  const void* __args[1] = { &idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_connection_flags(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "get_connection_flags");
  const void* __args[1] = { &idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array get_connection_binds(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SceneState", "get_connection_binds");
  const void* __args[1] = { &idx };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~SceneState() {
  if ($self->get_script_instance()) {
    CSharpInstance *cs_instance = dynamic_cast<CSharpInstance*>($self->get_script_instance());
    if (cs_instance) {
      cs_instance->mono_object_disposed();
      return;
    }
  }
  if ($self->unreference()) {
    memdelete($self);
  }
}

}


};
