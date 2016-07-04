/* mSkeleton.i */
%module mSkeleton


%typemap(csbody_derived) Skeleton %{
  public static readonly int NOTIFICATION_UPDATE_SKELETON = 50;

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

%typemap(cscode) Skeleton %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Skeleton %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Skeleton;

class Skeleton : public Spatial {
public:
  Skeleton();

%extend {

void add_bone(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "add_bone");
  const void* __args[1] = { &name };
  __method_bind->ptrcall($self, __args, NULL);
}

int find_bone(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "find_bone");
  const void* __args[1] = { &name };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_bone_name(int bone_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "get_bone_name");
  const void* __args[1] = { &bone_idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_bone_parent(int bone_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "get_bone_parent");
  const void* __args[1] = { &bone_idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_bone_parent(int bone_idx, int parent_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "set_bone_parent");
  const void* __args[2] = { &bone_idx, &parent_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_bone_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "get_bone_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void unparent_bone_and_rest(int bone_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "unparent_bone_and_rest");
  const void* __args[1] = { &bone_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

Transform get_bone_rest(int bone_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "get_bone_rest");
  const void* __args[1] = { &bone_idx };
  Transform ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_bone_rest(int bone_idx, const Transform& rest) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "set_bone_rest");
  const void* __args[2] = { &bone_idx, &rest };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_bone_disable_rest(int bone_idx, bool disable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "set_bone_disable_rest");
  const void* __args[2] = { &bone_idx, &disable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_bone_rest_disabled(int bone_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "is_bone_rest_disabled");
  const void* __args[1] = { &bone_idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void bind_child_node_to_bone(int bone_idx, Node* node) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "bind_child_node_to_bone");
  const void* __args[2] = { &bone_idx, node };
  __method_bind->ptrcall($self, __args, NULL);
}

void unbind_child_node_from_bone(int bone_idx, Node* node) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "unbind_child_node_from_bone");
  const void* __args[2] = { &bone_idx, node };
  __method_bind->ptrcall($self, __args, NULL);
}

Array get_bound_child_nodes_to_bone(int bone_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "get_bound_child_nodes_to_bone");
  const void* __args[1] = { &bone_idx };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void clear_bones() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "clear_bones");
  __method_bind->ptrcall($self, NULL, NULL);
}

Transform get_bone_pose(int bone_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "get_bone_pose");
  const void* __args[1] = { &bone_idx };
  Transform ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_bone_pose(int bone_idx, const Transform& pose) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "set_bone_pose");
  const void* __args[2] = { &bone_idx, &pose };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_bone_global_pose(int bone_idx, const Transform& pose) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "set_bone_global_pose");
  const void* __args[2] = { &bone_idx, &pose };
  __method_bind->ptrcall($self, __args, NULL);
}

Transform get_bone_global_pose(int bone_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "get_bone_global_pose");
  const void* __args[1] = { &bone_idx };
  Transform ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Transform get_bone_custom_pose(int bone_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "get_bone_custom_pose");
  const void* __args[1] = { &bone_idx };
  Transform ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_bone_custom_pose(int bone_idx, const Transform& custom_pose) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "set_bone_custom_pose");
  const void* __args[2] = { &bone_idx, &custom_pose };
  __method_bind->ptrcall($self, __args, NULL);
}

Transform get_bone_transform(int bone_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Skeleton", "get_bone_transform");
  const void* __args[1] = { &bone_idx };
  Transform ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

}


};
