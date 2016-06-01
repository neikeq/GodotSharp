/* mLight2D.i */
%module mLight2D


%typemap(csbody_derived) Light2D %{
  public static readonly int MODE_ADD = 0;
  public static readonly int MODE_SUB = 1;
  public static readonly int MODE_MIX = 2;
  public static readonly int MODE_MASK = 3;

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

%typemap(cscode) Light2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Light2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor Light2D;

class Light2D : public Node2D {
public:
  %extend {
    void set_enabled(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_enabled", enabled);
    }
  }
  %extend {
    bool is_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_enabled");
    }
  }
  %extend {
    void set_texture(Object* texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_texture", texture);
    }
  }
  %extend {
    Object* get_texture() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_texture").operator Object *();
    }
  }
  %extend {
    void set_texture_offset(const Vector2& texture_offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_texture_offset", texture_offset);
    }
  }
  %extend {
    Vector2 get_texture_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_texture_offset");
    }
  }
  %extend {
    void set_color(const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_color", color);
    }
  }
  %extend {
    Color get_color() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_color");
    }
  }
  %extend {
    void set_height(float height) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_height", height);
    }
  }
  %extend {
    float get_height() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_height");
    }
  }
  %extend {
    void set_energy(float energy) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_energy", energy);
    }
  }
  %extend {
    float get_energy() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_energy");
    }
  }
  %extend {
    void set_texture_scale(float texture_scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_texture_scale", texture_scale);
    }
  }
  %extend {
    float get_texture_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_texture_scale");
    }
  }
  %extend {
    void set_z_range_min(int z) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_z_range_min", z);
    }
  }
  %extend {
    int get_z_range_min() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_z_range_min");
    }
  }
  %extend {
    void set_z_range_max(int z) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_z_range_max", z);
    }
  }
  %extend {
    int get_z_range_max() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_z_range_max");
    }
  }
  %extend {
    void set_layer_range_min(int layer) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_layer_range_min", layer);
    }
  }
  %extend {
    int get_layer_range_min() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_layer_range_min");
    }
  }
  %extend {
    void set_layer_range_max(int layer) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_layer_range_max", layer);
    }
  }
  %extend {
    int get_layer_range_max() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_layer_range_max");
    }
  }
  %extend {
    void set_item_mask(int item_mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_mask", item_mask);
    }
  }
  %extend {
    int get_item_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_mask");
    }
  }
  %extend {
    void set_item_shadow_mask(int item_shadow_mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_shadow_mask", item_shadow_mask);
    }
  }
  %extend {
    int get_item_shadow_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_shadow_mask");
    }
  }
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
    void set_shadow_enabled(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shadow_enabled", enabled);
    }
  }
  %extend {
    bool is_shadow_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_shadow_enabled");
    }
  }
  %extend {
    void set_shadow_buffer_size(int size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shadow_buffer_size", size);
    }
  }
  %extend {
    int get_shadow_buffer_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shadow_buffer_size");
    }
  }
  %extend {
    void set_shadow_esm_multiplier(float multiplier) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shadow_esm_multiplier", multiplier);
    }
  }
  %extend {
    float get_shadow_esm_multiplier() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shadow_esm_multiplier");
    }
  }
  %extend {
    void set_shadow_color(const Color& shadow_color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shadow_color", shadow_color);
    }
  }
  %extend {
    Color get_shadow_color() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shadow_color");
    }
  }
  Light2D();

};
