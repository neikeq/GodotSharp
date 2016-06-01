/* mMeshDataTool.i */
%module mMeshDataTool


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
    }$excode
  }
%}

%nodefaultdtor MeshDataTool;

class MeshDataTool : public Reference {
public:
  %extend {
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  %extend {
    int create_from_surface(Object* mesh, int surface) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("create_from_surface", mesh, surface);
    }
  }
  %extend {
    int commit_to_surface(Object* mesh) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("commit_to_surface", mesh);
    }
  }
  %extend {
    int get_format() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_format");
    }
  }
  %extend {
    int get_vertex_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_vertex_count");
    }
  }
  %extend {
    int get_edge_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_edge_count");
    }
  }
  %extend {
    int get_face_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_face_count");
    }
  }
  %extend {
    void set_vertex(int idx, const Vector3& vertex) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_vertex", idx, vertex);
    }
  }
  %extend {
    Vector3 get_vertex(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_vertex", idx);
    }
  }
  %extend {
    void set_vertex_normal(int idx, const Vector3& normal) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_vertex_normal", idx, normal);
    }
  }
  %extend {
    Vector3 get_vertex_normal(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_vertex_normal", idx);
    }
  }
  %extend {
    void set_vertex_tangent(int idx, const Plane& tangent) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_vertex_tangent", idx, tangent);
    }
  }
  %extend {
    Plane get_vertex_tangent(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_vertex_tangent", idx);
    }
  }
  %extend {
    void set_vertex_uv(int idx, const Vector2& uv) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_vertex_uv", idx, uv);
    }
  }
  %extend {
    Vector2 get_vertex_uv(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_vertex_uv", idx);
    }
  }
  %extend {
    void set_vertex_uv2(int idx, const Vector2& uv2) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_vertex_uv2", idx, uv2);
    }
  }
  %extend {
    Vector2 get_vertex_uv2(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_vertex_uv2", idx);
    }
  }
  %extend {
    void set_vertex_color(int idx, const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_vertex_color", idx, color);
    }
  }
  %extend {
    Color get_vertex_color(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_vertex_color", idx);
    }
  }
  %extend {
    void set_vertex_bones(int idx, const IntArray& bones) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_vertex_bones", idx, bones);
    }
  }
  %extend {
    IntArray get_vertex_bones(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_vertex_bones", idx);
    }
  }
  %extend {
    void set_vertex_weights(int idx, const RealArray& weights) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_vertex_weights", idx, weights);
    }
  }
  %extend {
    RealArray get_vertex_weights(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_vertex_weights", idx);
    }
  }
  %extend {
    void set_vertex_meta(int idx, const Variant& meta) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_vertex_meta", idx, meta);
    }
  }
  %extend {
    void get_vertex_meta(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("get_vertex_meta", idx);
    }
  }
  %extend {
    IntArray get_vertex_edges(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_vertex_edges", idx);
    }
  }
  %extend {
    IntArray get_vertex_faces(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_vertex_faces", idx);
    }
  }
  %extend {
    int get_edge_vertex(int idx, int vertex) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_edge_vertex", idx, vertex);
    }
  }
  %extend {
    IntArray get_edge_faces(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_edge_faces", idx);
    }
  }
  %extend {
    void set_edge_meta(int idx, const Variant& meta) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_edge_meta", idx, meta);
    }
  }
  %extend {
    void get_edge_meta(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("get_edge_meta", idx);
    }
  }
  %extend {
    int get_face_vertex(int idx, int vertex) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_face_vertex", idx, vertex);
    }
  }
  %extend {
    int get_face_edge(int idx, int edge) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_face_edge", idx, edge);
    }
  }
  %extend {
    void set_face_meta(int idx, const Variant& meta) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_face_meta", idx, meta);
    }
  }
  %extend {
    void get_face_meta(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("get_face_meta", idx);
    }
  }
  %extend {
    Vector3 get_face_normal(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_face_normal", idx);
    }
  }
  %extend {
    void set_material(Ref<Material> material) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_material", material);
    }
  }
  %extend {
    Object* get_material() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_material").operator Object *();
    }
  }
  MeshDataTool();

};
