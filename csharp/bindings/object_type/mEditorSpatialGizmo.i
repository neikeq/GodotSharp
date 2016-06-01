/* mEditorSpatialGizmo.i */
%module mEditorSpatialGizmo


%typemap(csbody_derived) EditorSpatialGizmo %{

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

%typemap(cscode) EditorSpatialGizmo %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) EditorSpatialGizmo %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor EditorSpatialGizmo;

class EditorSpatialGizmo : public SpatialGizmo {
public:
  %extend {
    void commit_handle(int index, const Variant& restore, bool cancel) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("commit_handle", index, restore, cancel);
    }
  }
  %extend {
    String get_handle_name(int index) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_handle_name", index);
    }
  }
  %extend {
    Variant get_handle_value(int index) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_handle_value", index);
    }
  }
  %extend {
    void redraw() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("redraw");
    }
  }
  %extend {
    void set_handle(int index, Camera* camera, const Vector2& point) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_handle", index, camera, point);
    }
  }
  %extend {
    void add_lines(const Vector3Array& lines, Ref<Material> material, bool billboard = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_lines", lines, material, billboard);
    }
  }
  %extend {
    void add_mesh(Ref<Mesh> mesh, bool billboard = false, const RID& skeleton = RID()) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_mesh", mesh, billboard, skeleton);
    }
  }
  %extend {
    void add_collision_segments(const Vector3Array& segments) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_collision_segments", segments);
    }
  }
  %extend {
    void add_collision_triangles(TriangleMesh* triangles) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_collision_triangles", triangles);
    }
  }
  %extend {
    void add_unscaled_billboard(Ref<Material> material, float default_scale = 1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_unscaled_billboard", material, default_scale);
    }
  }
  %extend {
    void add_handles(const Vector3Array& handles, bool billboard = false, bool secondary = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_handles", handles, billboard, secondary);
    }
  }
  %extend {
    void set_spatial_node(Spatial* node) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_spatial_node", node);
    }
  }
  EditorSpatialGizmo();

};
