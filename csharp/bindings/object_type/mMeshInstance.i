/* mMeshInstance.i */
%module mMeshInstance


%typemap(csbody_derived) MeshInstance %{

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

%typemap(cscode) MeshInstance %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) MeshInstance %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor MeshInstance;

class MeshInstance : public GeometryInstance {
public:
  MeshInstance();

%extend {

void set_mesh(Mesh* mesh) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshInstance", "set_mesh");
  const void* __args[1] = { mesh };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Mesh> get_mesh() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshInstance", "get_mesh");
  Ref<Mesh> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_skeleton_path(const NodePath& skeleton_path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshInstance", "set_skeleton_path");
  const void* __args[1] = { &skeleton_path };
  __method_bind->ptrcall($self, __args, NULL);
}

NodePath get_skeleton_path() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshInstance", "get_skeleton_path");
  NodePath ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

AABB get_aabb() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshInstance", "get_aabb");
  AABB ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void create_trimesh_collision() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshInstance", "create_trimesh_collision");
  __method_bind->ptrcall($self, NULL, NULL);
}

void create_convex_collision() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshInstance", "create_convex_collision");
  __method_bind->ptrcall($self, NULL, NULL);
}

}


};
