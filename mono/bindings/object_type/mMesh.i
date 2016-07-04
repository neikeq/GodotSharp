/* mMesh.i */
%module mMesh

template<class Mesh> class Ref;%template() Ref<Mesh>;
%feature("novaluewrapper") Ref<Mesh>;


%typemap(csbody_derived) Mesh %{
  public static readonly int NO_INDEX_ARRAY = -1;
  public static readonly int ARRAY_WEIGHTS_SIZE = 4;
  public static readonly int ARRAY_VERTEX = 0;
  public static readonly int ARRAY_NORMAL = 1;
  public static readonly int ARRAY_TANGENT = 2;
  public static readonly int ARRAY_COLOR = 3;
  public static readonly int ARRAY_TEX_UV = 4;
  public static readonly int ARRAY_TEX_UV2 = 5;
  public static readonly int ARRAY_BONES = 6;
  public static readonly int ARRAY_WEIGHTS = 7;
  public static readonly int ARRAY_INDEX = 8;
  public static readonly int ARRAY_FORMAT_VERTEX = 1;
  public static readonly int ARRAY_FORMAT_NORMAL = 2;
  public static readonly int ARRAY_FORMAT_TANGENT = 4;
  public static readonly int ARRAY_FORMAT_COLOR = 8;
  public static readonly int ARRAY_FORMAT_TEX_UV = 16;
  public static readonly int ARRAY_FORMAT_TEX_UV2 = 32;
  public static readonly int ARRAY_FORMAT_BONES = 64;
  public static readonly int ARRAY_FORMAT_WEIGHTS = 128;
  public static readonly int ARRAY_FORMAT_INDEX = 256;
  public static readonly int PRIMITIVE_POINTS = 0;
  public static readonly int PRIMITIVE_LINES = 1;
  public static readonly int PRIMITIVE_LINE_STRIP = 2;
  public static readonly int PRIMITIVE_LINE_LOOP = 3;
  public static readonly int PRIMITIVE_TRIANGLES = 4;
  public static readonly int PRIMITIVE_TRIANGLE_STRIP = 5;
  public static readonly int PRIMITIVE_TRIANGLE_FAN = 6;

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

%typemap(cscode) Mesh %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Mesh %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Mesh;

class Mesh : public Resource {
public:
  Mesh();

%extend {

void add_morph_target(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "add_morph_target");
  const void* __args[1] = { &name };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_morph_target_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "get_morph_target_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_morph_target_name(int index) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "get_morph_target_name");
  const void* __args[1] = { &index };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void clear_morph_targets() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "clear_morph_targets");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_morph_target_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "set_morph_target_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_morph_target_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "get_morph_target_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_surface(int primitive, const Array& arrays, const Array& morph_arrays = Array(), bool alphasort = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "add_surface");
  const void* __args[4] = { &primitive, &arrays, &morph_arrays, &alphasort };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_surface_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "get_surface_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void surface_remove(int surf_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "surface_remove");
  const void* __args[1] = { &surf_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

int surface_get_array_len(int surf_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "surface_get_array_len");
  const void* __args[1] = { &surf_idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int surface_get_array_index_len(int surf_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "surface_get_array_index_len");
  const void* __args[1] = { &surf_idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int surface_get_format(int surf_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "surface_get_format");
  const void* __args[1] = { &surf_idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int surface_get_primitive_type(int surf_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "surface_get_primitive_type");
  const void* __args[1] = { &surf_idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void surface_set_material(int surf_idx, Material* material) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "surface_set_material");
  const void* __args[2] = { &surf_idx, material };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Material> surface_get_material(int surf_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "surface_get_material");
  const void* __args[1] = { &surf_idx };
  Ref<Material> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void surface_set_name(int surf_idx, const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "surface_set_name");
  const void* __args[2] = { &surf_idx, &name };
  __method_bind->ptrcall($self, __args, NULL);
}

String surface_get_name(int surf_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "surface_get_name");
  const void* __args[1] = { &surf_idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void center_geometry() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "center_geometry");
  __method_bind->ptrcall($self, NULL, NULL);
}

void regen_normalmaps() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "regen_normalmaps");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_custom_aabb(const AABB& aabb) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "set_custom_aabb");
  const void* __args[1] = { &aabb };
  __method_bind->ptrcall($self, __args, NULL);
}

AABB get_custom_aabb() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Mesh", "get_custom_aabb");
  AABB ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~Mesh() {
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
