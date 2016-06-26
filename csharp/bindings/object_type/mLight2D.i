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
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Light2D;

class Light2D : public Node2D {
public:
  Light2D();

%extend {

void set_enabled(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "set_enabled");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "is_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_texture(Object* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "set_texture");
  const void* __args[1] = { texture };
  __method_bind->ptrcall($self, __args, NULL);
}

Object* get_texture() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "get_texture");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_texture_offset(const Vector2& texture_offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "set_texture_offset");
  const void* __args[1] = { &texture_offset };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_texture_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "get_texture_offset");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_color(const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "set_color");
  const void* __args[1] = { &color };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_color() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "get_color");
  Color ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_height(float height) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "set_height");
  const void* __args[1] = { &height };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_height() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "get_height");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_energy(float energy) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "set_energy");
  const void* __args[1] = { &energy };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_energy() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "get_energy");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_texture_scale(float texture_scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "set_texture_scale");
  const void* __args[1] = { &texture_scale };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_texture_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "get_texture_scale");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_z_range_min(int z) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "set_z_range_min");
  const void* __args[1] = { &z };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_z_range_min() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "get_z_range_min");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_z_range_max(int z) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "set_z_range_max");
  const void* __args[1] = { &z };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_z_range_max() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "get_z_range_max");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_layer_range_min(int layer) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "set_layer_range_min");
  const void* __args[1] = { &layer };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_layer_range_min() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "get_layer_range_min");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_layer_range_max(int layer) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "set_layer_range_max");
  const void* __args[1] = { &layer };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_layer_range_max() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "get_layer_range_max");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_item_mask(int item_mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "set_item_mask");
  const void* __args[1] = { &item_mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_item_mask() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "get_item_mask");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_item_shadow_mask(int item_shadow_mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "set_item_shadow_mask");
  const void* __args[1] = { &item_shadow_mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_item_shadow_mask() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "get_item_shadow_mask");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "set_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "get_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_shadow_enabled(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "set_shadow_enabled");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_shadow_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "is_shadow_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_shadow_buffer_size(int size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "set_shadow_buffer_size");
  const void* __args[1] = { &size };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_shadow_buffer_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "get_shadow_buffer_size");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_shadow_esm_multiplier(float multiplier) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "set_shadow_esm_multiplier");
  const void* __args[1] = { &multiplier };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_shadow_esm_multiplier() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "get_shadow_esm_multiplier");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_shadow_color(const Color& shadow_color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "set_shadow_color");
  const void* __args[1] = { &shadow_color };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_shadow_color() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light2D", "get_shadow_color");
  Color ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
