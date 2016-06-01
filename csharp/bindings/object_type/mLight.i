/* mLight.i */
%module mLight

%nodefaultctor Light;

%typemap(csbody_derived) Light %{
  public static readonly int PARAM_RADIUS = 2;
  public static readonly int PARAM_ENERGY = 3;
  public static readonly int PARAM_ATTENUATION = 4;
  public static readonly int PARAM_SPOT_ANGLE = 1;
  public static readonly int PARAM_SPOT_ATTENUATION = 0;
  public static readonly int PARAM_SHADOW_DARKENING = 5;
  public static readonly int PARAM_SHADOW_Z_OFFSET = 6;
  public static readonly int COLOR_DIFFUSE = 0;
  public static readonly int COLOR_SPECULAR = 1;
  public static readonly int BAKE_MODE_DISABLED = 0;
  public static readonly int BAKE_MODE_INDIRECT = 1;
  public static readonly int BAKE_MODE_INDIRECT_AND_SHADOWS = 2;
  public static readonly int BAKE_MODE_FULL = 3;

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

%typemap(cscode) Light %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Light %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor Light;

class Light : public VisualInstance {
public:
  %extend {
    void set_parameter(int variable, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_parameter", variable, value);
    }
  }
  %extend {
    float get_parameter(int variable) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_parameter", variable);
    }
  }
  %extend {
    void set_color(int color, const Color& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_color", color, value);
    }
  }
  %extend {
    Color get_color(int color) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_color", color);
    }
  }
  %extend {
    void set_project_shadows(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_project_shadows", enable);
    }
  }
  %extend {
    bool has_project_shadows() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_project_shadows");
    }
  }
  %extend {
    void set_projector(Ref<Texture> projector) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_projector", projector);
    }
  }
  %extend {
    Ref<Texture> get_projector() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_projector").operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    void set_operator(int operator_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_operator", operator_);
    }
  }
  %extend {
    int get_operator() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_operator");
    }
  }
  %extend {
    void set_bake_mode(int bake_mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bake_mode", bake_mode);
    }
  }
  %extend {
    int get_bake_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bake_mode");
    }
  }
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
    void set_editor_only(bool editor_only) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_editor_only", editor_only);
    }
  }
  %extend {
    bool is_editor_only() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_editor_only");
    }
  }

};
