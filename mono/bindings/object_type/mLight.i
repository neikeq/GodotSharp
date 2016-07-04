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
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Light;

class Light : public VisualInstance {
public:

%extend {

void set_parameter(int variable, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light", "set_parameter");
  const void* __args[2] = { &variable, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_parameter(int variable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light", "get_parameter");
  const void* __args[1] = { &variable };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_color(int color, const Color& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light", "set_color");
  const void* __args[2] = { &color, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_color(int color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light", "get_color");
  const void* __args[1] = { &color };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_project_shadows(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light", "set_project_shadows");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_project_shadows() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light", "has_project_shadows");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_projector(Texture* projector) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light", "set_projector");
  const void* __args[1] = { projector };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Texture> get_projector() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light", "get_projector");
  Ref<Texture> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_operator(int operator_) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light", "set_operator");
  const void* __args[1] = { &operator_ };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_operator() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light", "get_operator");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_bake_mode(int bake_mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light", "set_bake_mode");
  const void* __args[1] = { &bake_mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_bake_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light", "get_bake_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_enabled(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light", "set_enabled");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light", "is_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_editor_only(bool editor_only) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light", "set_editor_only");
  const void* __args[1] = { &editor_only };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_editor_only() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Light", "is_editor_only");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
