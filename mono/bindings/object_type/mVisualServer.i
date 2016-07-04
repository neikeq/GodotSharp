/* mVisualServer.i */
%module mVisualServer

%csmethodmodifiers VisualServer::VisualServer "private"
%csmethodmodifiers VisualServer::SingletonGetInstance "private"
%nodefaultctor VisualServer;

%typemap(csbody_derived) VisualServer %{
  private static $csclassname instance;
  public static readonly int NO_INDEX_ARRAY = -1;
  public static readonly int CUSTOM_ARRAY_SIZE = 8;
  public static readonly int ARRAY_WEIGHTS_SIZE = 4;
  public static readonly int MAX_PARTICLE_COLOR_PHASES = 4;
  public static readonly int MAX_PARTICLE_ATTRACTORS = 4;
  public static readonly int MAX_CURSORS = 8;
  public static readonly int TEXTURE_FLAG_MIPMAPS = 1;
  public static readonly int TEXTURE_FLAG_REPEAT = 2;
  public static readonly int TEXTURE_FLAG_FILTER = 4;
  public static readonly int TEXTURE_FLAG_CUBEMAP = 2048;
  public static readonly int TEXTURE_FLAGS_DEFAULT = 7;
  public static readonly int CUBEMAP_LEFT = 0;
  public static readonly int CUBEMAP_RIGHT = 1;
  public static readonly int CUBEMAP_BOTTOM = 2;
  public static readonly int CUBEMAP_TOP = 3;
  public static readonly int CUBEMAP_FRONT = 4;
  public static readonly int CUBEMAP_BACK = 5;
  public static readonly int SHADER_MATERIAL = 0;
  public static readonly int SHADER_POST_PROCESS = 2;
  public static readonly int MATERIAL_FLAG_VISIBLE = 0;
  public static readonly int MATERIAL_FLAG_DOUBLE_SIDED = 1;
  public static readonly int MATERIAL_FLAG_INVERT_FACES = 2;
  public static readonly int MATERIAL_FLAG_UNSHADED = 3;
  public static readonly int MATERIAL_FLAG_ONTOP = 4;
  public static readonly int MATERIAL_FLAG_MAX = 7;
  public static readonly int MATERIAL_BLEND_MODE_MIX = 0;
  public static readonly int MATERIAL_BLEND_MODE_ADD = 1;
  public static readonly int MATERIAL_BLEND_MODE_SUB = 2;
  public static readonly int MATERIAL_BLEND_MODE_MUL = 3;
  public static readonly int FIXED_MATERIAL_PARAM_DIFFUSE = 0;
  public static readonly int FIXED_MATERIAL_PARAM_DETAIL = 1;
  public static readonly int FIXED_MATERIAL_PARAM_SPECULAR = 2;
  public static readonly int FIXED_MATERIAL_PARAM_EMISSION = 3;
  public static readonly int FIXED_MATERIAL_PARAM_SPECULAR_EXP = 4;
  public static readonly int FIXED_MATERIAL_PARAM_GLOW = 5;
  public static readonly int FIXED_MATERIAL_PARAM_NORMAL = 6;
  public static readonly int FIXED_MATERIAL_PARAM_SHADE_PARAM = 7;
  public static readonly int FIXED_MATERIAL_PARAM_MAX = 8;
  public static readonly int FIXED_MATERIAL_TEXCOORD_SPHERE = 3;
  public static readonly int FIXED_MATERIAL_TEXCOORD_UV = 0;
  public static readonly int FIXED_MATERIAL_TEXCOORD_UV_TRANSFORM = 1;
  public static readonly int FIXED_MATERIAL_TEXCOORD_UV2 = 2;
  public static readonly int ARRAY_VERTEX = 0;
  public static readonly int ARRAY_NORMAL = 1;
  public static readonly int ARRAY_TANGENT = 2;
  public static readonly int ARRAY_COLOR = 3;
  public static readonly int ARRAY_TEX_UV = 4;
  public static readonly int ARRAY_BONES = 6;
  public static readonly int ARRAY_WEIGHTS = 7;
  public static readonly int ARRAY_INDEX = 8;
  public static readonly int ARRAY_MAX = 9;
  public static readonly int ARRAY_FORMAT_VERTEX = 1;
  public static readonly int ARRAY_FORMAT_NORMAL = 2;
  public static readonly int ARRAY_FORMAT_TANGENT = 4;
  public static readonly int ARRAY_FORMAT_COLOR = 8;
  public static readonly int ARRAY_FORMAT_TEX_UV = 16;
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
  public static readonly int PRIMITIVE_MAX = 7;
  public static readonly int PARTICLE_LIFETIME = 0;
  public static readonly int PARTICLE_SPREAD = 1;
  public static readonly int PARTICLE_GRAVITY = 2;
  public static readonly int PARTICLE_LINEAR_VELOCITY = 3;
  public static readonly int PARTICLE_ANGULAR_VELOCITY = 4;
  public static readonly int PARTICLE_LINEAR_ACCELERATION = 5;
  public static readonly int PARTICLE_RADIAL_ACCELERATION = 6;
  public static readonly int PARTICLE_TANGENTIAL_ACCELERATION = 7;
  public static readonly int PARTICLE_INITIAL_SIZE = 9;
  public static readonly int PARTICLE_FINAL_SIZE = 10;
  public static readonly int PARTICLE_INITIAL_ANGLE = 11;
  public static readonly int PARTICLE_HEIGHT = 12;
  public static readonly int PARTICLE_HEIGHT_SPEED_SCALE = 13;
  public static readonly int PARTICLE_VAR_MAX = 14;
  public static readonly int LIGHT_DIRECTIONAL = 0;
  public static readonly int LIGHT_OMNI = 1;
  public static readonly int LIGHT_SPOT = 2;
  public static readonly int LIGHT_COLOR_DIFFUSE = 0;
  public static readonly int LIGHT_COLOR_SPECULAR = 1;
  public static readonly int LIGHT_PARAM_SPOT_ATTENUATION = 0;
  public static readonly int LIGHT_PARAM_SPOT_ANGLE = 1;
  public static readonly int LIGHT_PARAM_RADIUS = 2;
  public static readonly int LIGHT_PARAM_ENERGY = 3;
  public static readonly int LIGHT_PARAM_ATTENUATION = 4;
  public static readonly int LIGHT_PARAM_MAX = 10;
  public static readonly int SCENARIO_DEBUG_DISABLED = 0;
  public static readonly int SCENARIO_DEBUG_WIREFRAME = 1;
  public static readonly int SCENARIO_DEBUG_OVERDRAW = 2;
  public static readonly int INSTANCE_MESH = 1;
  public static readonly int INSTANCE_MULTIMESH = 2;
  public static readonly int INSTANCE_PARTICLES = 4;
  public static readonly int INSTANCE_LIGHT = 5;
  public static readonly int INSTANCE_ROOM = 6;
  public static readonly int INSTANCE_PORTAL = 7;
  public static readonly int INSTANCE_GEOMETRY_MASK = 30;
  public static readonly int INFO_OBJECTS_IN_FRAME = 0;
  public static readonly int INFO_VERTICES_IN_FRAME = 1;
  public static readonly int INFO_MATERIAL_CHANGES_IN_FRAME = 2;
  public static readonly int INFO_SHADER_CHANGES_IN_FRAME = 3;
  public static readonly int INFO_SURFACE_CHANGES_IN_FRAME = 4;
  public static readonly int INFO_DRAW_CALLS_IN_FRAME = 5;
  public static readonly int INFO_USAGE_VIDEO_MEM_TOTAL = 6;
  public static readonly int INFO_VIDEO_MEM_USED = 7;
  public static readonly int INFO_TEXTURE_MEM_USED = 8;
  public static readonly int INFO_VERTEX_MEM_USED = 9;

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

%typemap(cscode) VisualServer %{
  public static $csclassname Instance {
    get {
      if (instance == null) {
        instance = SingletonGetInstance();
      }
      return instance;
    }
  }

  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) VisualServer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor VisualServer;

class VisualServer : public Object {
public:

%extend {

RID texture_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "texture_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID texture_create_from_image(const Image& arg0_, int arg1_ = 7) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "texture_create_from_image");
  const void* __args[2] = { &arg0_, &arg1_ };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void texture_set_flags(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "texture_set_flags");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

int texture_get_flags(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "texture_get_flags");
  const void* __args[1] = { &arg0_ };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int texture_get_width(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "texture_get_width");
  const void* __args[1] = { &arg0_ };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int texture_get_height(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "texture_get_height");
  const void* __args[1] = { &arg0_ };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void texture_set_shrink_all_x2_on_set_data(bool shrink) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "texture_set_shrink_all_x2_on_set_data");
  const void* __args[1] = { &shrink };
  __method_bind->ptrcall($self, __args, NULL);
}

RID shader_create(int mode = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "shader_create");
  const void* __args[1] = { &mode };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void shader_set_mode(const RID& shader, int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "shader_set_mode");
  const void* __args[2] = { &shader, &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

RID material_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "material_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void material_set_shader(const RID& shader, const RID& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "material_set_shader");
  const void* __args[2] = { &shader, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

RID material_get_shader(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "material_get_shader");
  const void* __args[1] = { &arg0_ };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void material_set_param(const RID& arg0_, const String& arg1_, const Variant& arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "material_set_param");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void material_get_param(const RID& arg0_, const String& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "material_get_param");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void material_set_flag(const RID& arg0_, int arg1_, bool arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "material_set_flag");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  __method_bind->ptrcall($self, __args, NULL);
}

bool material_get_flag(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "material_get_flag");
  const void* __args[2] = { &arg0_, &arg1_ };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void material_set_blend_mode(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "material_set_blend_mode");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

int material_get_blend_mode(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "material_get_blend_mode");
  const void* __args[1] = { &arg0_ };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void material_set_line_width(const RID& arg0_, float arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "material_set_line_width");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

float material_get_line_width(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "material_get_line_width");
  const void* __args[1] = { &arg0_ };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID mesh_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "mesh_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void mesh_add_surface(const RID& arg0_, int arg1_, const Array& arg2_, const Array& arg3_, bool arg4_ = -1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "mesh_add_surface");
  const void* __args[5] = { &arg0_, &arg1_, &arg2_, &arg3_, &arg4_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void mesh_surface_set_material(const RID& arg0_, int arg1_, const RID& arg2_, bool arg3_ = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "mesh_surface_set_material");
  const void* __args[4] = { &arg0_, &arg1_, &arg2_, &arg3_ };
  __method_bind->ptrcall($self, __args, NULL);
}

RID mesh_surface_get_material(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "mesh_surface_get_material");
  const void* __args[2] = { &arg0_, &arg1_ };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int mesh_surface_get_array_len(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "mesh_surface_get_array_len");
  const void* __args[2] = { &arg0_, &arg1_ };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int mesh_surface_get_array_index_len(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "mesh_surface_get_array_index_len");
  const void* __args[2] = { &arg0_, &arg1_ };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int mesh_surface_get_format(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "mesh_surface_get_format");
  const void* __args[2] = { &arg0_, &arg1_ };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int mesh_surface_get_primitive_type(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "mesh_surface_get_primitive_type");
  const void* __args[2] = { &arg0_, &arg1_ };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void mesh_remove_surface(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "mesh_remove_surface");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

int mesh_get_surface_count(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "mesh_get_surface_count");
  const void* __args[1] = { &arg0_ };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID multimesh_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "multimesh_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void multimesh_set_mesh(const RID& arg0_, const RID& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "multimesh_set_mesh");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void multimesh_set_aabb(const RID& arg0_, const AABB& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "multimesh_set_aabb");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void multimesh_instance_set_transform(const RID& arg0_, int arg1_, const Transform& arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "multimesh_instance_set_transform");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void multimesh_instance_set_color(const RID& arg0_, int arg1_, const Color& arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "multimesh_instance_set_color");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  __method_bind->ptrcall($self, __args, NULL);
}

RID multimesh_get_mesh(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "multimesh_get_mesh");
  const void* __args[1] = { &arg0_ };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

AABB multimesh_get_aabb(const RID& arg0_, const AABB& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "multimesh_get_aabb");
  const void* __args[2] = { &arg0_, &arg1_ };
  AABB ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Transform multimesh_instance_get_transform(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "multimesh_instance_get_transform");
  const void* __args[2] = { &arg0_, &arg1_ };
  Transform ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Color multimesh_instance_get_color(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "multimesh_instance_get_color");
  const void* __args[2] = { &arg0_, &arg1_ };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID particles_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void particles_set_amount(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_set_amount");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

int particles_get_amount(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_get_amount");
  const void* __args[1] = { &arg0_ };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void particles_set_emitting(const RID& arg0_, bool arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_set_emitting");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

bool particles_is_emitting(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_is_emitting");
  const void* __args[1] = { &arg0_ };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void particles_set_visibility_aabb(const RID& arg0_, const AABB& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_set_visibility_aabb");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

AABB particles_get_visibility_aabb(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_get_visibility_aabb");
  const void* __args[1] = { &arg0_ };
  AABB ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void particles_set_variable(const RID& arg0_, int arg1_, float arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_set_variable");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  __method_bind->ptrcall($self, __args, NULL);
}

float particles_get_variable(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_get_variable");
  const void* __args[2] = { &arg0_, &arg1_ };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void particles_set_randomness(const RID& arg0_, int arg1_, float arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_set_randomness");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  __method_bind->ptrcall($self, __args, NULL);
}

float particles_get_randomness(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_get_randomness");
  const void* __args[2] = { &arg0_, &arg1_ };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void particles_set_color_phases(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_set_color_phases");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

int particles_get_color_phases(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_get_color_phases");
  const void* __args[1] = { &arg0_ };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void particles_set_color_phase_pos(const RID& arg0_, int arg1_, float arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_set_color_phase_pos");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  __method_bind->ptrcall($self, __args, NULL);
}

float particles_get_color_phase_pos(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_get_color_phase_pos");
  const void* __args[2] = { &arg0_, &arg1_ };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void particles_set_color_phase_color(const RID& arg0_, int arg1_, const Color& arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_set_color_phase_color");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  __method_bind->ptrcall($self, __args, NULL);
}

Color particles_get_color_phase_color(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_get_color_phase_color");
  const void* __args[2] = { &arg0_, &arg1_ };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void particles_set_attractors(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_set_attractors");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

int particles_get_attractors(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_get_attractors");
  const void* __args[1] = { &arg0_ };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void particles_set_attractor_pos(const RID& arg0_, int arg1_, const Vector3& arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_set_attractor_pos");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 particles_get_attractor_pos(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_get_attractor_pos");
  const void* __args[2] = { &arg0_, &arg1_ };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void particles_set_attractor_strength(const RID& arg0_, int arg1_, float arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_set_attractor_strength");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  __method_bind->ptrcall($self, __args, NULL);
}

float particles_get_attractor_strength(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_get_attractor_strength");
  const void* __args[2] = { &arg0_, &arg1_ };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void particles_set_material(const RID& arg0_, const RID& arg1_, bool arg2_ = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_set_material");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void particles_set_height_from_velocity(const RID& arg0_, bool arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_set_height_from_velocity");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

bool particles_has_height_from_velocity(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "particles_has_height_from_velocity");
  const void* __args[1] = { &arg0_ };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID light_create(int arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "light_create");
  const void* __args[1] = { &arg0_ };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int light_get_type(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "light_get_type");
  const void* __args[1] = { &arg0_ };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void light_set_color(const RID& arg0_, int arg1_, const Color& arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "light_set_color");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  __method_bind->ptrcall($self, __args, NULL);
}

Color light_get_color(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "light_get_color");
  const void* __args[2] = { &arg0_, &arg1_ };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void light_set_shadow(const RID& arg0_, bool arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "light_set_shadow");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

bool light_has_shadow(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "light_has_shadow");
  const void* __args[1] = { &arg0_ };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void light_set_volumetric(const RID& arg0_, bool arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "light_set_volumetric");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

bool light_is_volumetric(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "light_is_volumetric");
  const void* __args[1] = { &arg0_ };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void light_set_projector(const RID& arg0_, const RID& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "light_set_projector");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

RID light_get_projector(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "light_get_projector");
  const void* __args[1] = { &arg0_ };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void light_set_var(const RID& arg0_, int arg1_, float arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "light_set_var");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  __method_bind->ptrcall($self, __args, NULL);
}

float light_get_var(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "light_get_var");
  const void* __args[2] = { &arg0_, &arg1_ };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID skeleton_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "skeleton_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void skeleton_resize(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "skeleton_resize");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

int skeleton_get_bone_count(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "skeleton_get_bone_count");
  const void* __args[1] = { &arg0_ };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void skeleton_bone_set_transform(const RID& arg0_, int arg1_, const Transform& arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "skeleton_bone_set_transform");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  __method_bind->ptrcall($self, __args, NULL);
}

Transform skeleton_bone_get_transform(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "skeleton_bone_get_transform");
  const void* __args[2] = { &arg0_, &arg1_ };
  Transform ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID room_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "room_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void room_set_bounds(const RID& arg0_, const Dictionary& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "room_set_bounds");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

Dictionary room_get_bounds(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "room_get_bounds");
  const void* __args[1] = { &arg0_ };
  Dictionary ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID portal_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "portal_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void portal_set_shape(const RID& arg0_, const Vector2Array& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "portal_set_shape");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2Array portal_get_shape(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "portal_get_shape");
  const void* __args[1] = { &arg0_ };
  Vector2Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void portal_set_enabled(const RID& arg0_, bool arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "portal_set_enabled");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

bool portal_is_enabled(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "portal_is_enabled");
  const void* __args[1] = { &arg0_ };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void portal_set_disable_distance(const RID& arg0_, float arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "portal_set_disable_distance");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

float portal_get_disable_distance(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "portal_get_disable_distance");
  const void* __args[1] = { &arg0_ };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void portal_set_disabled_color(const RID& arg0_, const Color& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "portal_set_disabled_color");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

Color portal_get_disabled_color(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "portal_get_disabled_color");
  const void* __args[1] = { &arg0_ };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID camera_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "camera_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void camera_set_perspective(const RID& arg0_, float arg1_, float arg2_, float arg3_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "camera_set_perspective");
  const void* __args[4] = { &arg0_, &arg1_, &arg2_, &arg3_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void camera_set_orthogonal(const RID& arg0_, float arg1_, float arg2_, float arg3_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "camera_set_orthogonal");
  const void* __args[4] = { &arg0_, &arg1_, &arg2_, &arg3_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void camera_set_transform(const RID& arg0_, const Transform& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "camera_set_transform");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

RID viewport_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "viewport_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void viewport_set_rect(const RID& arg0_, const Rect2& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "viewport_set_rect");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

Rect2 viewport_get_rect(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "viewport_get_rect");
  const void* __args[1] = { &arg0_ };
  Rect2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void viewport_attach_camera(const RID& arg0_, const RID& arg1_ = RID()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "viewport_attach_camera");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

RID viewport_get_attached_camera(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "viewport_get_attached_camera");
  const void* __args[1] = { &arg0_ };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID viewport_get_scenario(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "viewport_get_scenario");
  const void* __args[1] = { &arg0_ };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void viewport_attach_canvas(const RID& arg0_, const RID& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "viewport_attach_canvas");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void viewport_remove_canvas(const RID& arg0_, const RID& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "viewport_remove_canvas");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void viewport_set_global_canvas_transform(const RID& arg0_, const Matrix32& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "viewport_set_global_canvas_transform");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

RID scenario_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "scenario_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void scenario_set_debug(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "scenario_set_debug");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

RID instance_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "instance_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID instance_get_base(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "instance_get_base");
  const void* __args[1] = { &arg0_ };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID instance_get_base_aabb(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "instance_get_base_aabb");
  const void* __args[1] = { &arg0_ };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void instance_set_transform(const RID& arg0_, const Transform& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "instance_set_transform");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

Transform instance_get_transform(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "instance_get_transform");
  const void* __args[1] = { &arg0_ };
  Transform ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void instance_attach_object_instance_ID(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "instance_attach_object_instance_ID");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

int instance_get_object_instance_ID(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "instance_get_object_instance_ID");
  const void* __args[1] = { &arg0_ };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void instance_attach_skeleton(const RID& arg0_, const RID& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "instance_attach_skeleton");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

RID instance_get_skeleton(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "instance_get_skeleton");
  const void* __args[1] = { &arg0_ };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void instance_set_room(const RID& arg0_, const RID& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "instance_set_room");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

RID instance_get_room(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "instance_get_room");
  const void* __args[1] = { &arg0_ };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void instance_set_exterior(const RID& arg0_, bool arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "instance_set_exterior");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

bool instance_is_exterior(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "instance_is_exterior");
  const void* __args[1] = { &arg0_ };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array instances_cull_aabb(const AABB& arg0_, const RID& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "instances_cull_aabb");
  const void* __args[2] = { &arg0_, &arg1_ };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array instances_cull_ray(const Vector3& arg0_, const Vector3& arg1_, const RID& arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "instances_cull_ray");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array instances_cull_convex(const Array& arg0_, const RID& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "instances_cull_convex");
  const void* __args[2] = { &arg0_, &arg1_ };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID instance_geometry_override_material_param(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "instance_geometry_override_material_param");
  const void* __args[1] = { &arg0_ };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID instance_geometry_get_material_param(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "instance_geometry_get_material_param");
  const void* __args[1] = { &arg0_ };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RID get_test_cube() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "get_test_cube");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID canvas_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID canvas_item_create() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_create");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void canvas_item_set_parent(const RID& arg0_, const RID& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_set_parent");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

RID canvas_item_get_parent(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_get_parent");
  const void* __args[1] = { &arg0_ };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void canvas_item_set_transform(const RID& arg0_, const Matrix32& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_set_transform");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void canvas_item_set_custom_rect(const RID& arg0_, bool arg1_, const Rect2& arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_set_custom_rect");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void canvas_item_set_clip(const RID& arg0_, bool arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_set_clip");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void canvas_item_set_opacity(const RID& arg0_, float arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_set_opacity");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

float canvas_item_get_opacity(const RID& arg0_, float arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_get_opacity");
  const void* __args[2] = { &arg0_, &arg1_ };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void canvas_item_set_self_opacity(const RID& arg0_, float arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_set_self_opacity");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

float canvas_item_get_self_opacity(const RID& arg0_, float arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_get_self_opacity");
  const void* __args[2] = { &arg0_, &arg1_ };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void canvas_item_set_z(const RID& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_set_z");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void canvas_item_add_line(const RID& arg0_, const Vector2& arg1_, const Vector2& arg2_, const Color& arg3_, float arg4_ = 1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_add_line");
  const void* __args[5] = { &arg0_, &arg1_, &arg2_, &arg3_, &arg4_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void canvas_item_add_rect(const RID& arg0_, const Rect2& arg1_, const Color& arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_add_rect");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void canvas_item_add_texture_rect(const RID& arg0_, const Rect2& arg1_, const RID& arg2_, bool arg3_, const Color& arg4_ = Color(1,1,1,1), bool arg5_ = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_add_texture_rect");
  const void* __args[6] = { &arg0_, &arg1_, &arg2_, &arg3_, &arg4_, &arg5_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void canvas_item_add_texture_rect_region(const RID& arg0_, const Rect2& arg1_, const RID& arg2_, const Rect2& arg3_, const Color& arg4_ = Color(1,1,1,1), bool arg5_ = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_add_texture_rect_region");
  const void* __args[6] = { &arg0_, &arg1_, &arg2_, &arg3_, &arg4_, &arg5_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void canvas_item_add_style_box(const RID& arg0_, const Rect2& arg1_, const Rect2& arg2_, const RID& arg3_, const RealArray& arg4_, const Color& arg5_ = Color(1,1,1,1)) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_add_style_box");
  const void* __args[6] = { &arg0_, &arg1_, &arg2_, &arg3_, &arg4_, &arg5_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void canvas_item_add_circle(const RID& arg0_, const Vector2& arg1_, float arg2_, const Color& arg3_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_add_circle");
  const void* __args[4] = { &arg0_, &arg1_, &arg2_, &arg3_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void viewport_set_canvas_transform(const RID& arg0_, const RID& arg1_, const Matrix32& arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "viewport_set_canvas_transform");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void canvas_item_clear(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_clear");
  const void* __args[1] = { &arg0_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void canvas_item_raise(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "canvas_item_raise");
  const void* __args[1] = { &arg0_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void cursor_set_rotation(float arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "cursor_set_rotation");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void cursor_set_texture(const RID& arg0_, const Vector2& arg1_, int arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "cursor_set_texture");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void cursor_set_visible(bool arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "cursor_set_visible");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void cursor_set_pos(const Vector2& arg0_, int arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "cursor_set_pos");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void black_bars_set_margins(int left, int top, int right, int bottom) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "black_bars_set_margins");
  const void* __args[4] = { &left, &top, &right, &bottom };
  __method_bind->ptrcall($self, __args, NULL);
}

void black_bars_set_images(const RID& left, const RID& top, const RID& right, const RID& bottom) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "black_bars_set_images");
  const void* __args[4] = { &left, &top, &right, &bottom };
  __method_bind->ptrcall($self, __args, NULL);
}

RID make_sphere_mesh(int arg0_, int arg1_, float arg2_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "make_sphere_mesh");
  const void* __args[3] = { &arg0_, &arg1_, &arg2_ };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void mesh_add_surface_from_planes(const RID& arg0_, const Array& arg1_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "mesh_add_surface_from_planes");
  const void* __args[2] = { &arg0_, &arg1_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void draw() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "draw");
  __method_bind->ptrcall($self, NULL, NULL);
}

void sync() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "sync");
  __method_bind->ptrcall($self, NULL, NULL);
}

void free_rid(const RID& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "free_rid");
  const void* __args[1] = { &arg0_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_default_clear_color(const Color& arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "set_default_clear_color");
  const void* __args[1] = { &arg0_ };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_render_info(int arg0_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualServer", "get_render_info");
  const void* __args[1] = { &arg0_ };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

static VisualServer* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("VisualServer")->cast_to<VisualServer>(); }

}


};
