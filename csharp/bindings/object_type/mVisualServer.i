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
    }$excode
  }
%}

%nodefaultdtor VisualServer;

class VisualServer : public Object {
public:
  %extend {
    RID texture_create() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("texture_create");
    }
  }
  %extend {
    RID texture_create_from_image(const Image& arg0_, int arg1_ = 7) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("texture_create_from_image", arg0_, arg1_);
    }
  }
  %extend {
    void texture_set_flags(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("texture_set_flags", arg0_, arg1_);
    }
  }
  %extend {
    int texture_get_flags(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("texture_get_flags", arg0_);
    }
  }
  %extend {
    int texture_get_width(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("texture_get_width", arg0_);
    }
  }
  %extend {
    int texture_get_height(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("texture_get_height", arg0_);
    }
  }
  %extend {
    void texture_set_shrink_all_x2_on_set_data(bool shrink) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("texture_set_shrink_all_x2_on_set_data", shrink);
    }
  }
  %extend {
    RID shader_create(int mode = 0) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("shader_create", mode);
    }
  }
  %extend {
    void shader_set_mode(const RID& shader, int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("shader_set_mode", shader, mode);
    }
  }
  %extend {
    RID material_create() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("material_create");
    }
  }
  %extend {
    void material_set_shader(const RID& shader, const RID& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("material_set_shader", shader, arg1_);
    }
  }
  %extend {
    RID material_get_shader(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("material_get_shader", arg0_);
    }
  }
  %extend {
    void material_set_param(const RID& arg0_, const String& arg1_, const Variant& arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("material_set_param", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    void material_get_param(const RID& arg0_, const String& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("material_get_param", arg0_, arg1_);
    }
  }
  %extend {
    void material_set_flag(const RID& arg0_, int arg1_, bool arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("material_set_flag", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    bool material_get_flag(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("material_get_flag", arg0_, arg1_);
    }
  }
  %extend {
    void material_set_blend_mode(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("material_set_blend_mode", arg0_, arg1_);
    }
  }
  %extend {
    int material_get_blend_mode(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("material_get_blend_mode", arg0_);
    }
  }
  %extend {
    void material_set_line_width(const RID& arg0_, float arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("material_set_line_width", arg0_, arg1_);
    }
  }
  %extend {
    float material_get_line_width(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("material_get_line_width", arg0_);
    }
  }
  %extend {
    RID mesh_create() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("mesh_create");
    }
  }
  %extend {
    void mesh_add_surface(const RID& arg0_, int arg1_, const Array& arg2_, const Array& arg3_, bool arg4_ = -1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("mesh_add_surface", arg0_, arg1_, arg2_, arg3_, arg4_);
    }
  }
  %extend {
    void mesh_surface_set_material(const RID& arg0_, int arg1_, const RID& arg2_, bool arg3_ = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("mesh_surface_set_material", arg0_, arg1_, arg2_, arg3_);
    }
  }
  %extend {
    RID mesh_surface_get_material(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("mesh_surface_get_material", arg0_, arg1_);
    }
  }
  %extend {
    int mesh_surface_get_array_len(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("mesh_surface_get_array_len", arg0_, arg1_);
    }
  }
  %extend {
    int mesh_surface_get_array_index_len(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("mesh_surface_get_array_index_len", arg0_, arg1_);
    }
  }
  %extend {
    int mesh_surface_get_format(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("mesh_surface_get_format", arg0_, arg1_);
    }
  }
  %extend {
    int mesh_surface_get_primitive_type(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("mesh_surface_get_primitive_type", arg0_, arg1_);
    }
  }
  %extend {
    void mesh_remove_surface(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("mesh_remove_surface", arg0_, arg1_);
    }
  }
  %extend {
    int mesh_get_surface_count(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("mesh_get_surface_count", arg0_);
    }
  }
  %extend {
    RID multimesh_create() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("multimesh_create");
    }
  }
  %extend {
    void multimesh_set_mesh(const RID& arg0_, const RID& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("multimesh_set_mesh", arg0_, arg1_);
    }
  }
  %extend {
    void multimesh_set_aabb(const RID& arg0_, const AABB& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("multimesh_set_aabb", arg0_, arg1_);
    }
  }
  %extend {
    void multimesh_instance_set_transform(const RID& arg0_, int arg1_, const Transform& arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("multimesh_instance_set_transform", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    void multimesh_instance_set_color(const RID& arg0_, int arg1_, const Color& arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("multimesh_instance_set_color", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    RID multimesh_get_mesh(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("multimesh_get_mesh", arg0_);
    }
  }
  %extend {
    AABB multimesh_get_aabb(const RID& arg0_, const AABB& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("multimesh_get_aabb", arg0_, arg1_);
    }
  }
  %extend {
    Transform multimesh_instance_get_transform(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("multimesh_instance_get_transform", arg0_, arg1_);
    }
  }
  %extend {
    Color multimesh_instance_get_color(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("multimesh_instance_get_color", arg0_, arg1_);
    }
  }
  %extend {
    RID particles_create() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("particles_create");
    }
  }
  %extend {
    void particles_set_amount(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("particles_set_amount", arg0_, arg1_);
    }
  }
  %extend {
    int particles_get_amount(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("particles_get_amount", arg0_);
    }
  }
  %extend {
    void particles_set_emitting(const RID& arg0_, bool arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("particles_set_emitting", arg0_, arg1_);
    }
  }
  %extend {
    bool particles_is_emitting(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("particles_is_emitting", arg0_);
    }
  }
  %extend {
    void particles_set_visibility_aabb(const RID& arg0_, const AABB& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("particles_set_visibility_aabb", arg0_, arg1_);
    }
  }
  %extend {
    AABB particles_get_visibility_aabb(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("particles_get_visibility_aabb", arg0_);
    }
  }
  %extend {
    void particles_set_variable(const RID& arg0_, int arg1_, float arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("particles_set_variable", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    float particles_get_variable(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("particles_get_variable", arg0_, arg1_);
    }
  }
  %extend {
    void particles_set_randomness(const RID& arg0_, int arg1_, float arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("particles_set_randomness", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    float particles_get_randomness(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("particles_get_randomness", arg0_, arg1_);
    }
  }
  %extend {
    void particles_set_color_phases(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("particles_set_color_phases", arg0_, arg1_);
    }
  }
  %extend {
    int particles_get_color_phases(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("particles_get_color_phases", arg0_);
    }
  }
  %extend {
    void particles_set_color_phase_pos(const RID& arg0_, int arg1_, float arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("particles_set_color_phase_pos", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    float particles_get_color_phase_pos(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("particles_get_color_phase_pos", arg0_, arg1_);
    }
  }
  %extend {
    void particles_set_color_phase_color(const RID& arg0_, int arg1_, const Color& arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("particles_set_color_phase_color", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    Color particles_get_color_phase_color(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("particles_get_color_phase_color", arg0_, arg1_);
    }
  }
  %extend {
    void particles_set_attractors(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("particles_set_attractors", arg0_, arg1_);
    }
  }
  %extend {
    int particles_get_attractors(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("particles_get_attractors", arg0_);
    }
  }
  %extend {
    void particles_set_attractor_pos(const RID& arg0_, int arg1_, const Vector3& arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("particles_set_attractor_pos", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    Vector3 particles_get_attractor_pos(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("particles_get_attractor_pos", arg0_, arg1_);
    }
  }
  %extend {
    void particles_set_attractor_strength(const RID& arg0_, int arg1_, float arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("particles_set_attractor_strength", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    float particles_get_attractor_strength(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("particles_get_attractor_strength", arg0_, arg1_);
    }
  }
  %extend {
    void particles_set_material(const RID& arg0_, const RID& arg1_, bool arg2_ = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("particles_set_material", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    void particles_set_height_from_velocity(const RID& arg0_, bool arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("particles_set_height_from_velocity", arg0_, arg1_);
    }
  }
  %extend {
    bool particles_has_height_from_velocity(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("particles_has_height_from_velocity", arg0_);
    }
  }
  %extend {
    RID light_create(int arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("light_create", arg0_);
    }
  }
  %extend {
    int light_get_type(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("light_get_type", arg0_);
    }
  }
  %extend {
    void light_set_color(const RID& arg0_, int arg1_, const Color& arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("light_set_color", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    Color light_get_color(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("light_get_color", arg0_, arg1_);
    }
  }
  %extend {
    void light_set_shadow(const RID& arg0_, bool arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("light_set_shadow", arg0_, arg1_);
    }
  }
  %extend {
    bool light_has_shadow(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("light_has_shadow", arg0_);
    }
  }
  %extend {
    void light_set_volumetric(const RID& arg0_, bool arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("light_set_volumetric", arg0_, arg1_);
    }
  }
  %extend {
    bool light_is_volumetric(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("light_is_volumetric", arg0_);
    }
  }
  %extend {
    void light_set_projector(const RID& arg0_, const RID& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("light_set_projector", arg0_, arg1_);
    }
  }
  %extend {
    RID light_get_projector(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("light_get_projector", arg0_);
    }
  }
  %extend {
    void light_set_var(const RID& arg0_, int arg1_, float arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("light_set_var", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    float light_get_var(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("light_get_var", arg0_, arg1_);
    }
  }
  %extend {
    RID skeleton_create() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("skeleton_create");
    }
  }
  %extend {
    void skeleton_resize(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("skeleton_resize", arg0_, arg1_);
    }
  }
  %extend {
    int skeleton_get_bone_count(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("skeleton_get_bone_count", arg0_);
    }
  }
  %extend {
    void skeleton_bone_set_transform(const RID& arg0_, int arg1_, const Transform& arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("skeleton_bone_set_transform", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    Transform skeleton_bone_get_transform(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("skeleton_bone_get_transform", arg0_, arg1_);
    }
  }
  %extend {
    RID room_create() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("room_create");
    }
  }
  %extend {
    void room_set_bounds(const RID& arg0_, const Dictionary& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("room_set_bounds", arg0_, arg1_);
    }
  }
  %extend {
    Dictionary room_get_bounds(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("room_get_bounds", arg0_);
    }
  }
  %extend {
    RID portal_create() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("portal_create");
    }
  }
  %extend {
    void portal_set_shape(const RID& arg0_, const Vector2Array& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("portal_set_shape", arg0_, arg1_);
    }
  }
  %extend {
    Vector2Array portal_get_shape(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("portal_get_shape", arg0_);
    }
  }
  %extend {
    void portal_set_enabled(const RID& arg0_, bool arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("portal_set_enabled", arg0_, arg1_);
    }
  }
  %extend {
    bool portal_is_enabled(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("portal_is_enabled", arg0_);
    }
  }
  %extend {
    void portal_set_disable_distance(const RID& arg0_, float arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("portal_set_disable_distance", arg0_, arg1_);
    }
  }
  %extend {
    float portal_get_disable_distance(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("portal_get_disable_distance", arg0_);
    }
  }
  %extend {
    void portal_set_disabled_color(const RID& arg0_, const Color& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("portal_set_disabled_color", arg0_, arg1_);
    }
  }
  %extend {
    Color portal_get_disabled_color(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("portal_get_disabled_color", arg0_);
    }
  }
  %extend {
    RID camera_create() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("camera_create");
    }
  }
  %extend {
    void camera_set_perspective(const RID& arg0_, float arg1_, float arg2_, float arg3_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("camera_set_perspective", arg0_, arg1_, arg2_, arg3_);
    }
  }
  %extend {
    void camera_set_orthogonal(const RID& arg0_, float arg1_, float arg2_, float arg3_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("camera_set_orthogonal", arg0_, arg1_, arg2_, arg3_);
    }
  }
  %extend {
    void camera_set_transform(const RID& arg0_, const Transform& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("camera_set_transform", arg0_, arg1_);
    }
  }
  %extend {
    RID viewport_create() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("viewport_create");
    }
  }
  %extend {
    void viewport_set_rect(const RID& arg0_, const Rect2& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("viewport_set_rect", arg0_, arg1_);
    }
  }
  %extend {
    Rect2 viewport_get_rect(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("viewport_get_rect", arg0_);
    }
  }
  %extend {
    void viewport_attach_camera(const RID& arg0_, const RID& arg1_ = RID()) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("viewport_attach_camera", arg0_, arg1_);
    }
  }
  %extend {
    RID viewport_get_attached_camera(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("viewport_get_attached_camera", arg0_);
    }
  }
  %extend {
    RID viewport_get_scenario(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("viewport_get_scenario", arg0_);
    }
  }
  %extend {
    void viewport_attach_canvas(const RID& arg0_, const RID& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("viewport_attach_canvas", arg0_, arg1_);
    }
  }
  %extend {
    void viewport_remove_canvas(const RID& arg0_, const RID& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("viewport_remove_canvas", arg0_, arg1_);
    }
  }
  %extend {
    void viewport_set_global_canvas_transform(const RID& arg0_, const Matrix32& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("viewport_set_global_canvas_transform", arg0_, arg1_);
    }
  }
  %extend {
    RID scenario_create() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("scenario_create");
    }
  }
  %extend {
    void scenario_set_debug(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("scenario_set_debug", arg0_, arg1_);
    }
  }
  %extend {
    RID instance_create() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("instance_create");
    }
  }
  %extend {
    RID instance_get_base(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("instance_get_base", arg0_);
    }
  }
  %extend {
    RID instance_get_base_aabb(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("instance_get_base_aabb", arg0_);
    }
  }
  %extend {
    void instance_set_transform(const RID& arg0_, const Transform& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("instance_set_transform", arg0_, arg1_);
    }
  }
  %extend {
    Transform instance_get_transform(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("instance_get_transform", arg0_);
    }
  }
  %extend {
    void instance_attach_object_instance_ID(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("instance_attach_object_instance_ID", arg0_, arg1_);
    }
  }
  %extend {
    int instance_get_object_instance_ID(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("instance_get_object_instance_ID", arg0_);
    }
  }
  %extend {
    void instance_attach_skeleton(const RID& arg0_, const RID& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("instance_attach_skeleton", arg0_, arg1_);
    }
  }
  %extend {
    RID instance_get_skeleton(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("instance_get_skeleton", arg0_);
    }
  }
  %extend {
    void instance_set_room(const RID& arg0_, const RID& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("instance_set_room", arg0_, arg1_);
    }
  }
  %extend {
    RID instance_get_room(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("instance_get_room", arg0_);
    }
  }
  %extend {
    void instance_set_exterior(const RID& arg0_, bool arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("instance_set_exterior", arg0_, arg1_);
    }
  }
  %extend {
    bool instance_is_exterior(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("instance_is_exterior", arg0_);
    }
  }
  %extend {
    Array instances_cull_aabb(const AABB& arg0_, const RID& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("instances_cull_aabb", arg0_, arg1_);
    }
  }
  %extend {
    Array instances_cull_ray(const Vector3& arg0_, const Vector3& arg1_, const RID& arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("instances_cull_ray", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    Array instances_cull_convex(const Array& arg0_, const RID& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("instances_cull_convex", arg0_, arg1_);
    }
  }
  %extend {
    RID instance_geometry_override_material_param(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("instance_geometry_override_material_param", arg0_);
    }
  }
  %extend {
    RID instance_geometry_get_material_param(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("instance_geometry_get_material_param", arg0_);
    }
  }
  %extend {
    RID get_test_cube() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_test_cube");
    }
  }
  %extend {
    RID canvas_create() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("canvas_create");
    }
  }
  %extend {
    RID canvas_item_create() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("canvas_item_create");
    }
  }
  %extend {
    void canvas_item_set_parent(const RID& arg0_, const RID& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("canvas_item_set_parent", arg0_, arg1_);
    }
  }
  %extend {
    RID canvas_item_get_parent(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("canvas_item_get_parent", arg0_);
    }
  }
  %extend {
    void canvas_item_set_transform(const RID& arg0_, const Matrix32& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("canvas_item_set_transform", arg0_, arg1_);
    }
  }
  %extend {
    void canvas_item_set_custom_rect(const RID& arg0_, bool arg1_, const Rect2& arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("canvas_item_set_custom_rect", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    void canvas_item_set_clip(const RID& arg0_, bool arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("canvas_item_set_clip", arg0_, arg1_);
    }
  }
  %extend {
    void canvas_item_set_opacity(const RID& arg0_, float arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("canvas_item_set_opacity", arg0_, arg1_);
    }
  }
  %extend {
    float canvas_item_get_opacity(const RID& arg0_, float arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("canvas_item_get_opacity", arg0_, arg1_);
    }
  }
  %extend {
    void canvas_item_set_self_opacity(const RID& arg0_, float arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("canvas_item_set_self_opacity", arg0_, arg1_);
    }
  }
  %extend {
    float canvas_item_get_self_opacity(const RID& arg0_, float arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("canvas_item_get_self_opacity", arg0_, arg1_);
    }
  }
  %extend {
    void canvas_item_set_z(const RID& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("canvas_item_set_z", arg0_, arg1_);
    }
  }
  %extend {
    void canvas_item_add_line(const RID& arg0_, const Vector2& arg1_, const Vector2& arg2_, const Color& arg3_, float arg4_ = 1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("canvas_item_add_line", arg0_, arg1_, arg2_, arg3_, arg4_);
    }
  }
  %extend {
    void canvas_item_add_rect(const RID& arg0_, const Rect2& arg1_, const Color& arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("canvas_item_add_rect", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    void canvas_item_add_texture_rect(const RID& arg0_, const Rect2& arg1_, const RID& arg2_, bool arg3_, const Color& arg4_ = Color(1,1,1,1), bool arg5_ = false) {
  Variant::CallError err;
Variant arg_0_ = Variant(arg0_);
Variant arg_1_ = Variant(arg1_);
Variant arg_2_ = Variant(arg2_);
Variant arg_3_ = Variant(arg3_);
Variant arg_4_ = Variant(arg4_);
Variant arg_5_ = Variant(arg5_);
Variant *args_[6] = { &arg_0_, &arg_1_, &arg_2_, &arg_3_, &arg_4_, &arg_5_ };
$self->call("canvas_item_add_texture_rect", (const Variant **) args_, 6, err);
    }
  }
  %extend {
    void canvas_item_add_texture_rect_region(const RID& arg0_, const Rect2& arg1_, const RID& arg2_, const Rect2& arg3_, const Color& arg4_ = Color(1,1,1,1), bool arg5_ = false) {
  Variant::CallError err;
Variant arg_0_ = Variant(arg0_);
Variant arg_1_ = Variant(arg1_);
Variant arg_2_ = Variant(arg2_);
Variant arg_3_ = Variant(arg3_);
Variant arg_4_ = Variant(arg4_);
Variant arg_5_ = Variant(arg5_);
Variant *args_[6] = { &arg_0_, &arg_1_, &arg_2_, &arg_3_, &arg_4_, &arg_5_ };
$self->call("canvas_item_add_texture_rect_region", (const Variant **) args_, 6, err);
    }
  }
  %extend {
    void canvas_item_add_style_box(const RID& arg0_, const Rect2& arg1_, const RID& arg2_, const RealArray& arg3_, const Color& arg4_ = Color(1,1,1,1)) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("canvas_item_add_style_box", arg0_, arg1_, arg2_, arg3_, arg4_);
    }
  }
  %extend {
    void canvas_item_add_circle(const RID& arg0_, const Vector2& arg1_, float arg2_, const Color& arg3_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("canvas_item_add_circle", arg0_, arg1_, arg2_, arg3_);
    }
  }
  %extend {
    void viewport_set_canvas_transform(const RID& arg0_, const RID& arg1_, const Matrix32& arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("viewport_set_canvas_transform", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    void canvas_item_clear(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("canvas_item_clear", arg0_);
    }
  }
  %extend {
    void canvas_item_raise(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("canvas_item_raise", arg0_);
    }
  }
  %extend {
    void cursor_set_rotation(float arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("cursor_set_rotation", arg0_, arg1_);
    }
  }
  %extend {
    void cursor_set_texture(const RID& arg0_, const Vector2& arg1_, int arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("cursor_set_texture", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    void cursor_set_visible(bool arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("cursor_set_visible", arg0_, arg1_);
    }
  }
  %extend {
    void cursor_set_pos(const Vector2& arg0_, int arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("cursor_set_pos", arg0_, arg1_);
    }
  }
  %extend {
    void black_bars_set_margins(int left, int top, int right, int bottom) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("black_bars_set_margins", left, top, right, bottom);
    }
  }
  %extend {
    void black_bars_set_images(const RID& left, const RID& top, const RID& right, const RID& bottom) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("black_bars_set_images", left, top, right, bottom);
    }
  }
  %extend {
    RID make_sphere_mesh(int arg0_, int arg1_, float arg2_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("make_sphere_mesh", arg0_, arg1_, arg2_);
    }
  }
  %extend {
    void mesh_add_surface_from_planes(const RID& arg0_, const Array& arg1_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("mesh_add_surface_from_planes", arg0_, arg1_);
    }
  }
  %extend {
    void draw() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("draw");
    }
  }
  %extend {
    void sync() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("sync");
    }
  }
  %extend {
    void free(const RID& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("free", arg0_);
    }
  }
  %extend {
    void set_default_clear_color(const Color& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_default_clear_color", arg0_);
    }
  }
  %extend {
    int get_render_info(int arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_render_info", arg0_);
    }
  }
  %extend {
    static VisualServer* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("VisualServer")->cast_to<VisualServer>(); }
  }

};
