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
  %extend {
    void set_mesh(Ref<Mesh> mesh) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_mesh", mesh);
    }
  }
  %extend {
    Ref<Mesh> get_mesh() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_mesh").operator Object *()->cast_to<Mesh>();
    }
  }
  %extend {
    void set_skeleton_path(const NodePath& skeleton_path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_skeleton_path", skeleton_path);
    }
  }
  %extend {
    NodePath get_skeleton_path() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_skeleton_path");
    }
  }
  %extend {
    AABB get_aabb() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_aabb");
    }
  }
  %extend {
    void create_trimesh_collision() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("create_trimesh_collision");
    }
  }
  %extend {
    void create_convex_collision() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("create_convex_collision");
    }
  }
  MeshInstance();

};
