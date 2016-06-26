/* mEditorSpatialGizmo.i */
%module mEditorSpatialGizmo

template<class EditorSpatialGizmo> class Ref;%template() Ref<EditorSpatialGizmo>;
%feature("novaluewrapper") Ref<EditorSpatialGizmo>;


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
  EditorSpatialGizmo();

%extend {

void commit_handle(int index, const Variant& restore, bool cancel) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSpatialGizmo", "commit_handle");
  const void* __args[3] = { &index, &restore, &cancel };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_handle_name(int index) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSpatialGizmo", "get_handle_name");
  const void* __args[1] = { &index };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Variant get_handle_value(int index) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSpatialGizmo", "get_handle_value");
  const void* __args[1] = { &index };
  Variant ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void redraw() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSpatialGizmo", "redraw");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_handle(int index, Camera* camera, const Vector2& point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSpatialGizmo", "set_handle");
  const void* __args[3] = { &index, camera, &point };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_lines(const Vector3Array& lines, Material* material, bool billboard = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSpatialGizmo", "add_lines");
  const void* __args[3] = { &lines, material, &billboard };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_mesh(Mesh* mesh, bool billboard = false, const RID& skeleton = RID()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSpatialGizmo", "add_mesh");
  const void* __args[3] = { mesh, &billboard, &skeleton };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_collision_segments(const Vector3Array& segments) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSpatialGizmo", "add_collision_segments");
  const void* __args[1] = { &segments };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_collision_triangles(TriangleMesh* triangles) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSpatialGizmo", "add_collision_triangles");
  const void* __args[1] = { triangles };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_unscaled_billboard(Material* material, float default_scale = 1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSpatialGizmo", "add_unscaled_billboard");
  const void* __args[2] = { material, &default_scale };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_handles(const Vector3Array& handles, bool billboard = false, bool secondary = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSpatialGizmo", "add_handles");
  const void* __args[3] = { &handles, &billboard, &secondary };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_spatial_node(Spatial* node) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSpatialGizmo", "set_spatial_node");
  const void* __args[1] = { node };
  __method_bind->ptrcall($self, __args, NULL);
}

~EditorSpatialGizmo() {
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
