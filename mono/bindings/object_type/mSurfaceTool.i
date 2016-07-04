/* mSurfaceTool.i */
%module mSurfaceTool

template<class SurfaceTool> class Ref;%template() Ref<SurfaceTool>;
%feature("novaluewrapper") Ref<SurfaceTool>;


%typemap(csbody_derived) SurfaceTool %{

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

%typemap(cscode) SurfaceTool %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) SurfaceTool %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SurfaceTool;

class SurfaceTool : public Reference {
public:
  SurfaceTool();

%extend {

void begin(int primitive) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SurfaceTool", "begin");
  const void* __args[1] = { &primitive };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_vertex(const Vector3& vertex) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SurfaceTool", "add_vertex");
  const void* __args[1] = { &vertex };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_color(const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SurfaceTool", "add_color");
  const void* __args[1] = { &color };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_normal(const Vector3& normal) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SurfaceTool", "add_normal");
  const void* __args[1] = { &normal };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_tangent(const Plane& tangent) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SurfaceTool", "add_tangent");
  const void* __args[1] = { &tangent };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_uv(const Vector2& uv) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SurfaceTool", "add_uv");
  const void* __args[1] = { &uv };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_uv2(const Vector2& uv2) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SurfaceTool", "add_uv2");
  const void* __args[1] = { &uv2 };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_bones(const IntArray& bones) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SurfaceTool", "add_bones");
  const void* __args[1] = { &bones };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_weights(const RealArray& weights) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SurfaceTool", "add_weights");
  const void* __args[1] = { &weights };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_smooth_group(bool smooth) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SurfaceTool", "add_smooth_group");
  const void* __args[1] = { &smooth };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_triangle_fan(const Vector3Array& vertexes, const Vector2Array& uvs = Vector2Array(), const ColorArray& colors = ColorArray(), const Vector2Array& uv2s = Vector2Array(), const Vector3Array& normals = Vector3Array(), const Array& tangents = Array()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SurfaceTool", "add_triangle_fan");
  const void* __args[6] = { &vertexes, &uvs, &colors, &uv2s, &normals, &tangents };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_material(Material* material) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SurfaceTool", "set_material");
  const void* __args[1] = { material };
  __method_bind->ptrcall($self, __args, NULL);
}

void index() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SurfaceTool", "index");
  __method_bind->ptrcall($self, NULL, NULL);
}

void deindex() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SurfaceTool", "deindex");
  __method_bind->ptrcall($self, NULL, NULL);
}

void generate_normals() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SurfaceTool", "generate_normals");
  __method_bind->ptrcall($self, NULL, NULL);
}

Ref<Mesh> commit(Mesh* existing = NULL) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SurfaceTool", "commit");
  const void* __args[1] = { existing };
  Ref<Mesh> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SurfaceTool", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

~SurfaceTool() {
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
