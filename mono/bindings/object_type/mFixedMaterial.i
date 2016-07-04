/* mFixedMaterial.i */
%module mFixedMaterial

template<class FixedMaterial> class Ref;%template() Ref<FixedMaterial>;
%feature("novaluewrapper") Ref<FixedMaterial>;


%typemap(csbody_derived) FixedMaterial %{
  public static readonly int PARAM_DIFFUSE = 0;
  public static readonly int PARAM_DETAIL = 1;
  public static readonly int PARAM_SPECULAR = 2;
  public static readonly int PARAM_EMISSION = 3;
  public static readonly int PARAM_SPECULAR_EXP = 4;
  public static readonly int PARAM_GLOW = 5;
  public static readonly int PARAM_NORMAL = 6;
  public static readonly int PARAM_SHADE_PARAM = 7;
  public static readonly int PARAM_MAX = 8;
  public static readonly int TEXCOORD_SPHERE = 3;
  public static readonly int TEXCOORD_UV = 0;
  public static readonly int TEXCOORD_UV_TRANSFORM = 1;
  public static readonly int TEXCOORD_UV2 = 2;
  public static readonly int FLAG_USE_ALPHA = 0;
  public static readonly int FLAG_USE_COLOR_ARRAY = 1;
  public static readonly int FLAG_USE_POINT_SIZE = 2;
  public static readonly int FLAG_DISCARD_ALPHA = 3;
  public static readonly int LIGHT_SHADER_LAMBERT = 0;
  public static readonly int LIGHT_SHADER_WRAP = 1;
  public static readonly int LIGHT_SHADER_VELVET = 2;
  public static readonly int LIGHT_SHADER_TOON = 3;

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

%typemap(cscode) FixedMaterial %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) FixedMaterial %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor FixedMaterial;

class FixedMaterial : public Material {
public:
  FixedMaterial();

%extend {

void set_parameter(int param, const Variant& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("FixedMaterial", "set_parameter");
  const void* __args[2] = { &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void get_parameter(int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("FixedMaterial", "get_parameter");
  const void* __args[1] = { &param };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_texture(int param, Texture* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("FixedMaterial", "set_texture");
  const void* __args[2] = { &param, texture };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Texture> get_texture(int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("FixedMaterial", "get_texture");
  const void* __args[1] = { &param };
  Ref<Texture> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_texcoord_mode(int param, int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("FixedMaterial", "set_texcoord_mode");
  const void* __args[2] = { &param, &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_texcoord_mode(int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("FixedMaterial", "get_texcoord_mode");
  const void* __args[1] = { &param };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_fixed_flag(int flag, bool value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("FixedMaterial", "set_fixed_flag");
  const void* __args[2] = { &flag, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_fixed_flag(int flag) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("FixedMaterial", "get_fixed_flag");
  const void* __args[1] = { &flag };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_uv_transform(const Transform& transform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("FixedMaterial", "set_uv_transform");
  const void* __args[1] = { &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

Transform get_uv_transform() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("FixedMaterial", "get_uv_transform");
  Transform ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_light_shader(int shader) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("FixedMaterial", "set_light_shader");
  const void* __args[1] = { &shader };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_light_shader() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("FixedMaterial", "get_light_shader");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_point_size(float size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("FixedMaterial", "set_point_size");
  const void* __args[1] = { &size };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_point_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("FixedMaterial", "get_point_size");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~FixedMaterial() {
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
