/* mEnvironment.i */
%module mEnvironment

%typemap(ctype, out="Environment*") Ref<Environment> "Environment*"
%typemap(out, null="NULL") Ref<Environment> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<Environment> "Environment.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Environment> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Environment> "Environment"
%typemap(csout, excode=SWIGEXCODE) Ref<Environment> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Environment ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Environment;$excode
    return ret;
}

template<class Environment> class Ref;%template() Ref<Environment>;
%feature("novaluewrapper") Ref<Environment>;


%typemap(csbody_derived) Environment %{
  public static readonly int BG_KEEP = 0;
  public static readonly int BG_DEFAULT_COLOR = 1;
  public static readonly int BG_COLOR = 2;
  public static readonly int BG_TEXTURE = 3;
  public static readonly int BG_CUBEMAP = 4;
  public static readonly int BG_CANVAS = 5;
  public static readonly int BG_MAX = 6;
  public static readonly int BG_PARAM_CANVAS_MAX_LAYER = 0;
  public static readonly int BG_PARAM_COLOR = 1;
  public static readonly int BG_PARAM_TEXTURE = 2;
  public static readonly int BG_PARAM_CUBEMAP = 3;
  public static readonly int BG_PARAM_ENERGY = 4;
  public static readonly int BG_PARAM_GLOW = 6;
  public static readonly int BG_PARAM_MAX = 7;
  public static readonly int FX_AMBIENT_LIGHT = 0;
  public static readonly int FX_FXAA = 1;
  public static readonly int FX_GLOW = 2;
  public static readonly int FX_DOF_BLUR = 3;
  public static readonly int FX_HDR = 4;
  public static readonly int FX_FOG = 5;
  public static readonly int FX_BCS = 6;
  public static readonly int FX_SRGB = 7;
  public static readonly int FX_MAX = 8;
  public static readonly int FX_BLUR_BLEND_MODE_ADDITIVE = 0;
  public static readonly int FX_BLUR_BLEND_MODE_SCREEN = 1;
  public static readonly int FX_BLUR_BLEND_MODE_SOFTLIGHT = 2;
  public static readonly int FX_HDR_TONE_MAPPER_LINEAR = 0;
  public static readonly int FX_HDR_TONE_MAPPER_LOG = 1;
  public static readonly int FX_HDR_TONE_MAPPER_REINHARDT = 2;
  public static readonly int FX_HDR_TONE_MAPPER_REINHARDT_AUTOWHITE = 3;
  public static readonly int FX_PARAM_AMBIENT_LIGHT_COLOR = 0;
  public static readonly int FX_PARAM_AMBIENT_LIGHT_ENERGY = 1;
  public static readonly int FX_PARAM_GLOW_BLUR_PASSES = 2;
  public static readonly int FX_PARAM_GLOW_BLUR_SCALE = 3;
  public static readonly int FX_PARAM_GLOW_BLUR_STRENGTH = 4;
  public static readonly int FX_PARAM_GLOW_BLUR_BLEND_MODE = 5;
  public static readonly int FX_PARAM_GLOW_BLOOM = 6;
  public static readonly int FX_PARAM_GLOW_BLOOM_TRESHOLD = 7;
  public static readonly int FX_PARAM_DOF_BLUR_PASSES = 8;
  public static readonly int FX_PARAM_DOF_BLUR_BEGIN = 9;
  public static readonly int FX_PARAM_DOF_BLUR_RANGE = 10;
  public static readonly int FX_PARAM_HDR_TONEMAPPER = 11;
  public static readonly int FX_PARAM_HDR_EXPOSURE = 12;
  public static readonly int FX_PARAM_HDR_WHITE = 13;
  public static readonly int FX_PARAM_HDR_GLOW_TRESHOLD = 14;
  public static readonly int FX_PARAM_HDR_GLOW_SCALE = 15;
  public static readonly int FX_PARAM_HDR_MIN_LUMINANCE = 16;
  public static readonly int FX_PARAM_HDR_MAX_LUMINANCE = 17;
  public static readonly int FX_PARAM_HDR_EXPOSURE_ADJUST_SPEED = 18;
  public static readonly int FX_PARAM_FOG_BEGIN = 19;
  public static readonly int FX_PARAM_FOG_ATTENUATION = 22;
  public static readonly int FX_PARAM_FOG_BEGIN_COLOR = 20;
  public static readonly int FX_PARAM_FOG_END_COLOR = 21;
  public static readonly int FX_PARAM_FOG_BG = 23;
  public static readonly int FX_PARAM_BCS_BRIGHTNESS = 24;
  public static readonly int FX_PARAM_BCS_CONTRAST = 25;
  public static readonly int FX_PARAM_BCS_SATURATION = 26;
  public static readonly int FX_PARAM_MAX = 27;

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

%typemap(cscode) Environment %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Environment %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Environment;

class Environment : public Resource {
public:
  %extend {
    void set_background(int bgmode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_background", bgmode);
    }
  }
  %extend {
    int get_background() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_background");
    }
  }
  %extend {
    void set_background_param(int param, const Variant& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_background_param", param, value);
    }
  }
  %extend {
    void get_background_param(int param) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("get_background_param", param);
    }
  }
  %extend {
    void set_enable_fx(int effect, bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_enable_fx", effect, enabled);
    }
  }
  %extend {
    bool is_fx_enabled(int effect) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_fx_enabled", effect);
    }
  }
  %extend {
    void fx_set_param(int param, const Variant& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("fx_set_param", param, value);
    }
  }
  %extend {
    void fx_get_param(int param) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("fx_get_param", param);
    }
  }
  Environment();
  %extend {
    ~Environment() {
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
