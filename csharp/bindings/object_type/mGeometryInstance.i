/* mGeometryInstance.i */
%module mGeometryInstance

%nodefaultctor GeometryInstance;

%typemap(csbody_derived) GeometryInstance %{
  public static readonly int FLAG_VISIBLE = 0;
  public static readonly int FLAG_CAST_SHADOW = 3;
  public static readonly int FLAG_RECEIVE_SHADOWS = 4;
  public static readonly int FLAG_BILLBOARD = 1;
  public static readonly int FLAG_BILLBOARD_FIX_Y = 2;
  public static readonly int FLAG_DEPH_SCALE = 5;
  public static readonly int FLAG_VISIBLE_IN_ALL_ROOMS = 6;
  public static readonly int FLAG_MAX = 8;
  public static readonly int SHADOW_CASTING_SETTING_OFF = 0;
  public static readonly int SHADOW_CASTING_SETTING_ON = 1;
  public static readonly int SHADOW_CASTING_SETTING_DOUBLE_SIDED = 2;
  public static readonly int SHADOW_CASTING_SETTING_SHADOWS_ONLY = 3;

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

%typemap(cscode) GeometryInstance %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) GeometryInstance %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor GeometryInstance;

class GeometryInstance : public VisualInstance {
public:

%extend {

void set_material_override(Object* material) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GeometryInstance", "set_material_override");
  const void* __args[1] = { material };
  __method_bind->ptrcall($self, __args, NULL);
}

Object* get_material_override() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GeometryInstance", "get_material_override");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_flag(int flag, bool value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GeometryInstance", "set_flag");
  const void* __args[2] = { &flag, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_flag(int flag) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GeometryInstance", "get_flag");
  const void* __args[1] = { &flag };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_cast_shadows_setting(int shadow_casting_setting) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GeometryInstance", "set_cast_shadows_setting");
  const void* __args[1] = { &shadow_casting_setting };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_cast_shadows_setting() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GeometryInstance", "get_cast_shadows_setting");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_draw_range_begin(float mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GeometryInstance", "set_draw_range_begin");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_draw_range_begin() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GeometryInstance", "get_draw_range_begin");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_draw_range_end(float mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GeometryInstance", "set_draw_range_end");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_draw_range_end() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GeometryInstance", "get_draw_range_end");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_baked_light_texture_id(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GeometryInstance", "set_baked_light_texture_id");
  const void* __args[1] = { &id };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_baked_light_texture_id() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GeometryInstance", "get_baked_light_texture_id");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_extra_cull_margin(float margin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GeometryInstance", "set_extra_cull_margin");
  const void* __args[1] = { &margin };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_extra_cull_margin() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GeometryInstance", "get_extra_cull_margin");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
