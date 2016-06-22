/* mBakedLight.i */
%module mBakedLight

%typemap(ctype, out="BakedLight*") Ref<BakedLight> "BakedLight*"
%typemap(out, null="NULL") Ref<BakedLight> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<BakedLight> "BakedLight.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<BakedLight> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<BakedLight> "BakedLight"
%typemap(csout, excode=SWIGEXCODE) Ref<BakedLight> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    BakedLight ret = InternalHelpers.UnmanagedGetManaged(cPtr) as BakedLight;$excode
    return ret;
}

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
  %extend {
    void set_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_mode", mode);
    }
  }
  %extend {
    int get_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_mode");
    }
  }
  %extend {
    void set_octree(const RawArray& octree) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_octree", octree);
    }
  }
  %extend {
    RawArray get_octree() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_octree");
    }
  }
  %extend {
    void set_light(const RawArray& light) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_light", light);
    }
  }
  %extend {
    RawArray get_light() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_light");
    }
  }
  %extend {
    void set_sampler_octree(const IntArray& sampler_octree) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_sampler_octree", sampler_octree);
    }
  }
  %extend {
    IntArray get_sampler_octree() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_sampler_octree");
    }
  }
  %extend {
    void add_lightmap(Ref<Texture> texture, const Vector2& gen_size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_lightmap", texture, gen_size);
    }
  }
  %extend {
    void erase_lightmap(int id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("erase_lightmap", id);
    }
  }
  %extend {
    void clear_lightmaps() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_lightmaps");
    }
  }
  %extend {
    void set_cell_subdivision(int cell_subdivision) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_cell_subdivision", cell_subdivision);
    }
  }
  %extend {
    int get_cell_subdivision() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_cell_subdivision");
    }
  }
  %extend {
    void set_initial_lattice_subdiv(int cell_subdivision) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_initial_lattice_subdiv", cell_subdivision);
    }
  }
  %extend {
    int get_initial_lattice_subdiv() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_initial_lattice_subdiv");
    }
  }
  %extend {
    void set_plot_size(float plot_size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_plot_size", plot_size);
    }
  }
  %extend {
    float get_plot_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_plot_size");
    }
  }
  %extend {
    void set_bounces(int bounces) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bounces", bounces);
    }
  }
  %extend {
    int get_bounces() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bounces");
    }
  }
  %extend {
    void set_cell_extra_margin(float cell_extra_margin) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_cell_extra_margin", cell_extra_margin);
    }
  }
  %extend {
    float get_cell_extra_margin() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_cell_extra_margin");
    }
  }
  %extend {
    void set_edge_damp(float edge_damp) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_edge_damp", edge_damp);
    }
  }
  %extend {
    float get_edge_damp() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_edge_damp");
    }
  }
  %extend {
    void set_normal_damp(float normal_damp) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_normal_damp", normal_damp);
    }
  }
  %extend {
    float get_normal_damp() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_normal_damp");
    }
  }
  %extend {
    void set_tint(float tint) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_tint", tint);
    }
  }
  %extend {
    float get_tint() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_tint");
    }
  }
  %extend {
    void set_saturation(float saturation) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_saturation", saturation);
    }
  }
  %extend {
    float get_saturation() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_saturation");
    }
  }
  %extend {
    void set_ao_radius(float ao_radius) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_ao_radius", ao_radius);
    }
  }
  %extend {
    float get_ao_radius() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_ao_radius");
    }
  }
  %extend {
    void set_ao_strength(float ao_strength) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_ao_strength", ao_strength);
    }
  }
  %extend {
    float get_ao_strength() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_ao_strength");
    }
  }
  %extend {
    void set_realtime_color_enabled(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_realtime_color_enabled", enabled);
    }
  }
  %extend {
    bool get_realtime_color_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_realtime_color_enabled");
    }
  }
  %extend {
    void set_realtime_color(const Color& tint) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_realtime_color", tint);
    }
  }
  %extend {
    Color get_realtime_color() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_realtime_color");
    }
  }
  %extend {
    void set_realtime_energy(float energy) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_realtime_energy", energy);
    }
  }
  %extend {
    float get_realtime_energy() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_realtime_energy");
    }
  }
  %extend {
    void set_format(int format) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_format", format);
    }
  }
  %extend {
    int get_format() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_format");
    }
  }
  %extend {
    void set_transfer_lightmaps_only_to_uv2(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_transfer_lightmaps_only_to_uv2", enable);
    }
  }
  %extend {
    bool get_transfer_lightmaps_only_to_uv2() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_transfer_lightmaps_only_to_uv2");
    }
  }
  %extend {
    void set_energy_multiplier(float energy_multiplier) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_energy_multiplier", energy_multiplier);
    }
  }
  %extend {
    float get_energy_multiplier() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_energy_multiplier");
    }
  }
  %extend {
    void set_gamma_adjust(float gamma_adjust) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_gamma_adjust", gamma_adjust);
    }
  }
  %extend {
    float get_gamma_adjust() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_gamma_adjust");
    }
  }
  %extend {
    void set_bake_flag(int flag, bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bake_flag", flag, enabled);
    }
  }
  %extend {
    bool get_bake_flag(int flag) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bake_flag", flag);
    }
  }
  BakedLight();
  %extend {
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
