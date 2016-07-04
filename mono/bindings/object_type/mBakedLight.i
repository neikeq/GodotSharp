/* mBakedLight.i */
%module mBakedLight

template<class BakedLight> class Ref;%template() Ref<BakedLight>;
%feature("novaluewrapper") Ref<BakedLight>;


%typemap(csbody_derived) BakedLight %{
  public static readonly int MODE_OCTREE = 0;
  public static readonly int MODE_LIGHTMAPS = 1;
  public static readonly int BAKE_DIFFUSE = 0;
  public static readonly int BAKE_SPECULAR = 1;
  public static readonly int BAKE_TRANSLUCENT = 2;
  public static readonly int BAKE_CONSERVE_ENERGY = 3;
  public static readonly int BAKE_MAX = 5;

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

%typemap(cscode) BakedLight %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) BakedLight %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor BakedLight;

class BakedLight : public Resource {
public:
  BakedLight();

%extend {

void set_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_octree(const RawArray& octree) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_octree");
  const void* __args[1] = { &octree };
  __method_bind->ptrcall($self, __args, NULL);
}

RawArray get_octree() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_octree");
  RawArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_light(const RawArray& light) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_light");
  const void* __args[1] = { &light };
  __method_bind->ptrcall($self, __args, NULL);
}

RawArray get_light() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_light");
  RawArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_sampler_octree(const IntArray& sampler_octree) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_sampler_octree");
  const void* __args[1] = { &sampler_octree };
  __method_bind->ptrcall($self, __args, NULL);
}

IntArray get_sampler_octree() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_sampler_octree");
  IntArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_lightmap(Texture* texture, const Vector2& gen_size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "add_lightmap");
  const void* __args[2] = { texture, &gen_size };
  __method_bind->ptrcall($self, __args, NULL);
}

void erase_lightmap(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "erase_lightmap");
  const void* __args[1] = { &id };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear_lightmaps() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "clear_lightmaps");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_cell_subdivision(int cell_subdivision) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_cell_subdivision");
  const void* __args[1] = { &cell_subdivision };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_cell_subdivision() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_cell_subdivision");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_initial_lattice_subdiv(int cell_subdivision) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_initial_lattice_subdiv");
  const void* __args[1] = { &cell_subdivision };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_initial_lattice_subdiv() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_initial_lattice_subdiv");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_plot_size(float plot_size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_plot_size");
  const void* __args[1] = { &plot_size };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_plot_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_plot_size");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_bounces(int bounces) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_bounces");
  const void* __args[1] = { &bounces };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_bounces() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_bounces");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_cell_extra_margin(float cell_extra_margin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_cell_extra_margin");
  const void* __args[1] = { &cell_extra_margin };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_cell_extra_margin() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_cell_extra_margin");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_edge_damp(float edge_damp) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_edge_damp");
  const void* __args[1] = { &edge_damp };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_edge_damp() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_edge_damp");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_normal_damp(float normal_damp) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_normal_damp");
  const void* __args[1] = { &normal_damp };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_normal_damp() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_normal_damp");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_tint(float tint) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_tint");
  const void* __args[1] = { &tint };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_tint() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_tint");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_saturation(float saturation) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_saturation");
  const void* __args[1] = { &saturation };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_saturation() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_saturation");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_ao_radius(float ao_radius) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_ao_radius");
  const void* __args[1] = { &ao_radius };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_ao_radius() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_ao_radius");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_ao_strength(float ao_strength) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_ao_strength");
  const void* __args[1] = { &ao_strength };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_ao_strength() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_ao_strength");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_realtime_color_enabled(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_realtime_color_enabled");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_realtime_color_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_realtime_color_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_realtime_color(const Color& tint) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_realtime_color");
  const void* __args[1] = { &tint };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_realtime_color() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_realtime_color");
  Color ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_realtime_energy(float energy) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_realtime_energy");
  const void* __args[1] = { &energy };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_realtime_energy() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_realtime_energy");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_format(int format) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_format");
  const void* __args[1] = { &format };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_format() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_format");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_transfer_lightmaps_only_to_uv2(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_transfer_lightmaps_only_to_uv2");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_transfer_lightmaps_only_to_uv2() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_transfer_lightmaps_only_to_uv2");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_energy_multiplier(float energy_multiplier) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_energy_multiplier");
  const void* __args[1] = { &energy_multiplier };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_energy_multiplier() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_energy_multiplier");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_gamma_adjust(float gamma_adjust) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_gamma_adjust");
  const void* __args[1] = { &gamma_adjust };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_gamma_adjust() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_gamma_adjust");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_bake_flag(int flag, bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "set_bake_flag");
  const void* __args[2] = { &flag, &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_bake_flag(int flag) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLight", "get_bake_flag");
  const void* __args[1] = { &flag };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~BakedLight() {
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
