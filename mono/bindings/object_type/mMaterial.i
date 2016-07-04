/* mMaterial.i */
%module mMaterial

%nodefaultctor Material;
template<class Material> class Ref;%template() Ref<Material>;
%feature("novaluewrapper") Ref<Material>;


%typemap(csbody_derived) Material %{
  public static readonly int FLAG_VISIBLE = 0;
  public static readonly int FLAG_DOUBLE_SIDED = 1;
  public static readonly int FLAG_INVERT_FACES = 2;
  public static readonly int FLAG_UNSHADED = 3;
  public static readonly int FLAG_ONTOP = 4;
  public static readonly int FLAG_LIGHTMAP_ON_UV2 = 5;
  public static readonly int FLAG_COLOR_ARRAY_SRGB = 6;
  public static readonly int FLAG_MAX = 7;
  public static readonly int DEPTH_DRAW_ALWAYS = 0;
  public static readonly int DEPTH_DRAW_OPAQUE_ONLY = 1;
  public static readonly int DEPTH_DRAW_OPAQUE_PRE_PASS_ALPHA = 2;
  public static readonly int DEPTH_DRAW_NEVER = 3;
  public static readonly int BLEND_MODE_MIX = 0;
  public static readonly int BLEND_MODE_ADD = 1;
  public static readonly int BLEND_MODE_SUB = 2;
  public static readonly int BLEND_MODE_MUL = 3;
  public static readonly int BLEND_MODE_PREMULT_ALPHA = 4;

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

%typemap(cscode) Material %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Material %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Material;

class Material : public Resource {
public:

%extend {

void set_flag(int flag, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Material", "set_flag");
  const void* __args[2] = { &flag, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_flag(int flag) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Material", "get_flag");
  const void* __args[1] = { &flag };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_blend_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Material", "set_blend_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_blend_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Material", "get_blend_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_line_width(float width) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Material", "set_line_width");
  const void* __args[1] = { &width };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_line_width() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Material", "get_line_width");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_depth_draw_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Material", "set_depth_draw_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_depth_draw_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Material", "get_depth_draw_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~Material() {
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
