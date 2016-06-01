/* mFixedMaterial.i */
%module mFixedMaterial


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
  %extend {
    void set_parameter(int param, const Variant& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_parameter", param, value);
    }
  }
  %extend {
    void get_parameter(int param) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("get_parameter", param);
    }
  }
  %extend {
    void set_texture(int param, Ref<Texture> texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_texture", param, texture);
    }
  }
  %extend {
    Ref<Texture> get_texture(int param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_texture", param).operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    void set_texcoord_mode(int param, int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_texcoord_mode", param, mode);
    }
  }
  %extend {
    int get_texcoord_mode(int param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_texcoord_mode", param);
    }
  }
  %extend {
    void set_fixed_flag(int flag, bool value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_fixed_flag", flag, value);
    }
  }
  %extend {
    bool get_fixed_flag(int flag) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_fixed_flag", flag);
    }
  }
  %extend {
    void set_uv_transform(const Transform& transform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_uv_transform", transform);
    }
  }
  %extend {
    Transform get_uv_transform() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_uv_transform");
    }
  }
  %extend {
    void set_light_shader(int shader) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_light_shader", shader);
    }
  }
  %extend {
    int get_light_shader() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_light_shader");
    }
  }
  %extend {
    void set_point_size(float size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_point_size", size);
    }
  }
  %extend {
    float get_point_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_point_size");
    }
  }
  FixedMaterial();

};
