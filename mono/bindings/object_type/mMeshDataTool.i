/* mMeshDataTool.i */
%module mMeshDataTool

template<class MeshDataTool> class Ref;%template() Ref<MeshDataTool>;
%feature("novaluewrapper") Ref<MeshDataTool>;


%typemap(csbody_derived) MeshDataTool %{

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

%typemap(cscode) MeshDataTool %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) MeshDataTool %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor MeshDataTool;

class MeshDataTool : public Reference {
public:
  MeshDataTool();

%extend {

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

int create_from_surface(Object* mesh, int surface) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "create_from_surface");
  const void* __args[2] = { mesh, &surface };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int commit_to_surface(Object* mesh) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "commit_to_surface");
  const void* __args[1] = { mesh };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_format() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_format");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_vertex_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_vertex_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_edge_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_edge_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_face_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_face_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_vertex(int idx, const Vector3& vertex) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "set_vertex");
  const void* __args[2] = { &idx, &vertex };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_vertex(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_vertex");
  const void* __args[1] = { &idx };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_vertex_normal(int idx, const Vector3& normal) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "set_vertex_normal");
  const void* __args[2] = { &idx, &normal };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_vertex_normal(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_vertex_normal");
  const void* __args[1] = { &idx };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_vertex_tangent(int idx, const Plane& tangent) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "set_vertex_tangent");
  const void* __args[2] = { &idx, &tangent };
  __method_bind->ptrcall($self, __args, NULL);
}

Plane get_vertex_tangent(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_vertex_tangent");
  const void* __args[1] = { &idx };
  Plane ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_vertex_uv(int idx, const Vector2& uv) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "set_vertex_uv");
  const void* __args[2] = { &idx, &uv };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_vertex_uv(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_vertex_uv");
  const void* __args[1] = { &idx };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_vertex_uv2(int idx, const Vector2& uv2) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "set_vertex_uv2");
  const void* __args[2] = { &idx, &uv2 };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_vertex_uv2(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_vertex_uv2");
  const void* __args[1] = { &idx };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_vertex_color(int idx, const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "set_vertex_color");
  const void* __args[2] = { &idx, &color };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_vertex_color(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_vertex_color");
  const void* __args[1] = { &idx };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_vertex_bones(int idx, const IntArray& bones) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "set_vertex_bones");
  const void* __args[2] = { &idx, &bones };
  __method_bind->ptrcall($self, __args, NULL);
}

IntArray get_vertex_bones(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_vertex_bones");
  const void* __args[1] = { &idx };
  IntArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_vertex_weights(int idx, const RealArray& weights) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "set_vertex_weights");
  const void* __args[2] = { &idx, &weights };
  __method_bind->ptrcall($self, __args, NULL);
}

RealArray get_vertex_weights(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_vertex_weights");
  const void* __args[1] = { &idx };
  RealArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_vertex_meta(int idx, const Variant& meta) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "set_vertex_meta");
  const void* __args[2] = { &idx, &meta };
  __method_bind->ptrcall($self, __args, NULL);
}

void get_vertex_meta(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_vertex_meta");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

IntArray get_vertex_edges(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_vertex_edges");
  const void* __args[1] = { &idx };
  IntArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

IntArray get_vertex_faces(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_vertex_faces");
  const void* __args[1] = { &idx };
  IntArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_edge_vertex(int idx, int vertex) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_edge_vertex");
  const void* __args[2] = { &idx, &vertex };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

IntArray get_edge_faces(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_edge_faces");
  const void* __args[1] = { &idx };
  IntArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_edge_meta(int idx, const Variant& meta) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "set_edge_meta");
  const void* __args[2] = { &idx, &meta };
  __method_bind->ptrcall($self, __args, NULL);
}

void get_edge_meta(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_edge_meta");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_face_vertex(int idx, int vertex) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_face_vertex");
  const void* __args[2] = { &idx, &vertex };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_face_edge(int idx, int edge) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_face_edge");
  const void* __args[2] = { &idx, &edge };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_face_meta(int idx, const Variant& meta) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "set_face_meta");
  const void* __args[2] = { &idx, &meta };
  __method_bind->ptrcall($self, __args, NULL);
}

void get_face_meta(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_face_meta");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_face_normal(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_face_normal");
  const void* __args[1] = { &idx };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_material(Material* material) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "set_material");
  const void* __args[1] = { material };
  __method_bind->ptrcall($self, __args, NULL);
}

Object* get_material() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshDataTool", "get_material");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~MeshDataTool() {
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
