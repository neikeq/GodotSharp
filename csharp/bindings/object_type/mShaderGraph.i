/* mShaderGraph.i */
%module mShaderGraph

%nodefaultctor ShaderGraph;
template<class ShaderGraph> class Ref;%template() Ref<ShaderGraph>;
%feature("novaluewrapper") Ref<ShaderGraph>;


%typemap(csbody_derived) ShaderGraph %{
  public static readonly int NODE_INPUT = 0;
  public static readonly int NODE_SCALAR_CONST = 1;
  public static readonly int NODE_VEC_CONST = 2;
  public static readonly int NODE_RGB_CONST = 3;
  public static readonly int NODE_XFORM_CONST = 4;
  public static readonly int NODE_TIME = 5;
  public static readonly int NODE_SCREEN_TEX = 6;
  public static readonly int NODE_SCALAR_OP = 7;
  public static readonly int NODE_VEC_OP = 8;
  public static readonly int NODE_VEC_SCALAR_OP = 9;
  public static readonly int NODE_RGB_OP = 10;
  public static readonly int NODE_XFORM_MULT = 11;
  public static readonly int NODE_XFORM_VEC_MULT = 12;
  public static readonly int NODE_XFORM_VEC_INV_MULT = 13;
  public static readonly int NODE_SCALAR_FUNC = 14;
  public static readonly int NODE_VEC_FUNC = 15;
  public static readonly int NODE_VEC_LEN = 16;
  public static readonly int NODE_DOT_PROD = 17;
  public static readonly int NODE_VEC_TO_SCALAR = 18;
  public static readonly int NODE_SCALAR_TO_VEC = 19;
  public static readonly int NODE_VEC_TO_XFORM = 21;
  public static readonly int NODE_XFORM_TO_VEC = 20;
  public static readonly int NODE_SCALAR_INTERP = 22;
  public static readonly int NODE_VEC_INTERP = 23;
  public static readonly int NODE_COLOR_RAMP = 24;
  public static readonly int NODE_CURVE_MAP = 25;
  public static readonly int NODE_SCALAR_INPUT = 26;
  public static readonly int NODE_VEC_INPUT = 27;
  public static readonly int NODE_RGB_INPUT = 28;
  public static readonly int NODE_XFORM_INPUT = 29;
  public static readonly int NODE_TEXTURE_INPUT = 30;
  public static readonly int NODE_CUBEMAP_INPUT = 31;
  public static readonly int NODE_DEFAULT_TEXTURE = 32;
  public static readonly int NODE_OUTPUT = 33;
  public static readonly int NODE_COMMENT = 34;
  public static readonly int NODE_TYPE_MAX = 35;
  public static readonly int SLOT_TYPE_SCALAR = 0;
  public static readonly int SLOT_TYPE_VEC = 1;
  public static readonly int SLOT_TYPE_XFORM = 2;
  public static readonly int SLOT_TYPE_TEXTURE = 3;
  public static readonly int SLOT_MAX = 4;
  public static readonly int SHADER_TYPE_VERTEX = 0;
  public static readonly int SHADER_TYPE_FRAGMENT = 1;
  public static readonly int SHADER_TYPE_LIGHT = 2;
  public static readonly int SHADER_TYPE_MAX = 3;
  public static readonly int SLOT_IN = 0;
  public static readonly int SLOT_OUT = 1;
  public static readonly int GRAPH_OK = 0;
  public static readonly int GRAPH_ERROR_CYCLIC = 1;
  public static readonly int GRAPH_ERROR_MISSING_CONNECTIONS = 2;
  public static readonly int SCALAR_OP_ADD = 0;
  public static readonly int SCALAR_OP_SUB = 1;
  public static readonly int SCALAR_OP_MUL = 2;
  public static readonly int SCALAR_OP_DIV = 3;
  public static readonly int SCALAR_OP_MOD = 4;
  public static readonly int SCALAR_OP_POW = 5;
  public static readonly int SCALAR_OP_MAX = 6;
  public static readonly int SCALAR_OP_MIN = 7;
  public static readonly int SCALAR_OP_ATAN2 = 8;
  public static readonly int SCALAR_MAX_OP = 9;
  public static readonly int VEC_OP_ADD = 0;
  public static readonly int VEC_OP_SUB = 1;
  public static readonly int VEC_OP_MUL = 2;
  public static readonly int VEC_OP_DIV = 3;
  public static readonly int VEC_OP_MOD = 4;
  public static readonly int VEC_OP_POW = 5;
  public static readonly int VEC_OP_MAX = 6;
  public static readonly int VEC_OP_MIN = 7;
  public static readonly int VEC_OP_CROSS = 8;
  public static readonly int VEC_MAX_OP = 9;
  public static readonly int VEC_SCALAR_OP_MUL = 0;
  public static readonly int VEC_SCALAR_OP_DIV = 1;
  public static readonly int VEC_SCALAR_OP_POW = 2;
  public static readonly int VEC_SCALAR_MAX_OP = 3;
  public static readonly int RGB_OP_SCREEN = 0;
  public static readonly int RGB_OP_DIFFERENCE = 1;
  public static readonly int RGB_OP_DARKEN = 2;
  public static readonly int RGB_OP_LIGHTEN = 3;
  public static readonly int RGB_OP_OVERLAY = 4;
  public static readonly int RGB_OP_DODGE = 5;
  public static readonly int RGB_OP_BURN = 6;
  public static readonly int RGB_OP_SOFT_LIGHT = 7;
  public static readonly int RGB_OP_HARD_LIGHT = 8;
  public static readonly int RGB_MAX_OP = 9;
  public static readonly int SCALAR_FUNC_SIN = 0;
  public static readonly int SCALAR_FUNC_COS = 1;
  public static readonly int SCALAR_FUNC_TAN = 2;
  public static readonly int SCALAR_FUNC_ASIN = 3;
  public static readonly int SCALAR_FUNC_ACOS = 4;
  public static readonly int SCALAR_FUNC_ATAN = 5;
  public static readonly int SCALAR_FUNC_SINH = 6;
  public static readonly int SCALAR_FUNC_COSH = 7;
  public static readonly int SCALAR_FUNC_TANH = 8;
  public static readonly int SCALAR_FUNC_LOG = 9;
  public static readonly int SCALAR_FUNC_EXP = 10;
  public static readonly int SCALAR_FUNC_SQRT = 11;
  public static readonly int SCALAR_FUNC_ABS = 12;
  public static readonly int SCALAR_FUNC_SIGN = 13;
  public static readonly int SCALAR_FUNC_FLOOR = 14;
  public static readonly int SCALAR_FUNC_ROUND = 15;
  public static readonly int SCALAR_FUNC_CEIL = 16;
  public static readonly int SCALAR_FUNC_FRAC = 17;
  public static readonly int SCALAR_FUNC_SATURATE = 18;
  public static readonly int SCALAR_FUNC_NEGATE = 19;
  public static readonly int SCALAR_MAX_FUNC = 20;
  public static readonly int VEC_FUNC_NORMALIZE = 0;
  public static readonly int VEC_FUNC_SATURATE = 1;
  public static readonly int VEC_FUNC_NEGATE = 2;
  public static readonly int VEC_FUNC_RECIPROCAL = 3;
  public static readonly int VEC_FUNC_RGB2HSV = 4;
  public static readonly int VEC_FUNC_HSV2RGB = 5;
  public static readonly int VEC_MAX_FUNC = 6;

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

%typemap(cscode) ShaderGraph %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) ShaderGraph %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ShaderGraph;

class ShaderGraph : public Shader {
public:

%extend {

void node_add(int shader_type, int node_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "node_add");
  const void* __args[3] = { &shader_type, &node_type, &id };
  __method_bind->ptrcall($self, __args, NULL);
}

void node_remove(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "node_remove");
  const void* __args[2] = { &shader_type, &id };
  __method_bind->ptrcall($self, __args, NULL);
}

void node_set_pos(int shader_type, int id, const Vector2& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "node_set_pos");
  const void* __args[3] = { &shader_type, &id, &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 node_get_pos(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "node_get_pos");
  const void* __args[2] = { &shader_type, &id };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int node_get_type(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "node_get_type");
  const void* __args[2] = { &shader_type, &id };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array get_node_list(int shader_type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "get_node_list");
  const void* __args[1] = { &shader_type };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void default_set_value(int shader_type, int id, int param_id, const Variant& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "default_set_value");
  const void* __args[4] = { &shader_type, &id, &param_id, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void default_get_value(int shader_type, int id, int param_id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "default_get_value");
  const void* __args[3] = { &shader_type, &id, &param_id };
  __method_bind->ptrcall($self, __args, NULL);
}

void scalar_const_node_set_value(int shader_type, int id, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "scalar_const_node_set_value");
  const void* __args[3] = { &shader_type, &id, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float scalar_const_node_get_value(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "scalar_const_node_get_value");
  const void* __args[2] = { &shader_type, &id };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void vec_const_node_set_value(int shader_type, int id, const Vector3& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "vec_const_node_set_value");
  const void* __args[3] = { &shader_type, &id, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 vec_const_node_get_value(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "vec_const_node_get_value");
  const void* __args[2] = { &shader_type, &id };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void rgb_const_node_set_value(int shader_type, int id, const Color& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "rgb_const_node_set_value");
  const void* __args[3] = { &shader_type, &id, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

Color rgb_const_node_get_value(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "rgb_const_node_get_value");
  const void* __args[2] = { &shader_type, &id };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void xform_const_node_set_value(int shader_type, int id, const Transform& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "xform_const_node_set_value");
  const void* __args[3] = { &shader_type, &id, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

Transform xform_const_node_get_value(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "xform_const_node_get_value");
  const void* __args[2] = { &shader_type, &id };
  Transform ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void texture_node_set_filter_size(int shader_type, int id, int filter_size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "texture_node_set_filter_size");
  const void* __args[3] = { &shader_type, &id, &filter_size };
  __method_bind->ptrcall($self, __args, NULL);
}

int texture_node_get_filter_size(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "texture_node_get_filter_size");
  const void* __args[2] = { &shader_type, &id };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void texture_node_set_filter_strength(int shader_type, float id, float filter_strength) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "texture_node_set_filter_strength");
  const void* __args[3] = { &shader_type, &id, &filter_strength };
  __method_bind->ptrcall($self, __args, NULL);
}

float texture_node_get_filter_strength(int shader_type, float id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "texture_node_get_filter_strength");
  const void* __args[2] = { &shader_type, &id };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void scalar_op_node_set_op(int shader_type, float id, int op) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "scalar_op_node_set_op");
  const void* __args[3] = { &shader_type, &id, &op };
  __method_bind->ptrcall($self, __args, NULL);
}

int scalar_op_node_get_op(int shader_type, float id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "scalar_op_node_get_op");
  const void* __args[2] = { &shader_type, &id };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void vec_op_node_set_op(int shader_type, float id, int op) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "vec_op_node_set_op");
  const void* __args[3] = { &shader_type, &id, &op };
  __method_bind->ptrcall($self, __args, NULL);
}

int vec_op_node_get_op(int shader_type, float id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "vec_op_node_get_op");
  const void* __args[2] = { &shader_type, &id };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void vec_scalar_op_node_set_op(int shader_type, float id, int op) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "vec_scalar_op_node_set_op");
  const void* __args[3] = { &shader_type, &id, &op };
  __method_bind->ptrcall($self, __args, NULL);
}

int vec_scalar_op_node_get_op(int shader_type, float id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "vec_scalar_op_node_get_op");
  const void* __args[2] = { &shader_type, &id };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void rgb_op_node_set_op(int shader_type, float id, int op) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "rgb_op_node_set_op");
  const void* __args[3] = { &shader_type, &id, &op };
  __method_bind->ptrcall($self, __args, NULL);
}

int rgb_op_node_get_op(int shader_type, float id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "rgb_op_node_get_op");
  const void* __args[2] = { &shader_type, &id };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void xform_vec_mult_node_set_no_translation(int shader_type, int id, bool disable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "xform_vec_mult_node_set_no_translation");
  const void* __args[3] = { &shader_type, &id, &disable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool xform_vec_mult_node_get_no_translation(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "xform_vec_mult_node_get_no_translation");
  const void* __args[2] = { &shader_type, &id };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void scalar_func_node_set_function(int shader_type, int id, int func) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "scalar_func_node_set_function");
  const void* __args[3] = { &shader_type, &id, &func };
  __method_bind->ptrcall($self, __args, NULL);
}

int scalar_func_node_get_function(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "scalar_func_node_get_function");
  const void* __args[2] = { &shader_type, &id };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void vec_func_node_set_function(int shader_type, int id, int func) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "vec_func_node_set_function");
  const void* __args[3] = { &shader_type, &id, &func };
  __method_bind->ptrcall($self, __args, NULL);
}

int vec_func_node_get_function(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "vec_func_node_get_function");
  const void* __args[2] = { &shader_type, &id };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void input_node_set_name(int shader_type, int id, const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "input_node_set_name");
  const void* __args[3] = { &shader_type, &id, &name };
  __method_bind->ptrcall($self, __args, NULL);
}

String input_node_get_name(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "input_node_get_name");
  const void* __args[2] = { &shader_type, &id };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void scalar_input_node_set_value(int shader_type, int id, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "scalar_input_node_set_value");
  const void* __args[3] = { &shader_type, &id, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float scalar_input_node_get_value(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "scalar_input_node_get_value");
  const void* __args[2] = { &shader_type, &id };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void vec_input_node_set_value(int shader_type, int id, const Vector3& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "vec_input_node_set_value");
  const void* __args[3] = { &shader_type, &id, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 vec_input_node_get_value(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "vec_input_node_get_value");
  const void* __args[2] = { &shader_type, &id };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void rgb_input_node_set_value(int shader_type, int id, const Color& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "rgb_input_node_set_value");
  const void* __args[3] = { &shader_type, &id, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

Color rgb_input_node_get_value(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "rgb_input_node_get_value");
  const void* __args[2] = { &shader_type, &id };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void xform_input_node_set_value(int shader_type, int id, const Transform& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "xform_input_node_set_value");
  const void* __args[3] = { &shader_type, &id, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

Transform xform_input_node_get_value(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "xform_input_node_get_value");
  const void* __args[2] = { &shader_type, &id };
  Transform ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void texture_input_node_set_value(int shader_type, int id, Texture* value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "texture_input_node_set_value");
  const void* __args[3] = { &shader_type, &id, value };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Texture> texture_input_node_get_value(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "texture_input_node_get_value");
  const void* __args[2] = { &shader_type, &id };
  Ref<Texture> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void cubemap_input_node_set_value(int shader_type, int id, CubeMap* value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "cubemap_input_node_set_value");
  const void* __args[3] = { &shader_type, &id, value };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<CubeMap> cubemap_input_node_get_value(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "cubemap_input_node_get_value");
  const void* __args[2] = { &shader_type, &id };
  Ref<CubeMap> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void comment_node_set_text(int shader_type, int id, const String& text) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "comment_node_set_text");
  const void* __args[3] = { &shader_type, &id, &text };
  __method_bind->ptrcall($self, __args, NULL);
}

String comment_node_get_text(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "comment_node_get_text");
  const void* __args[2] = { &shader_type, &id };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void color_ramp_node_set_ramp(int shader_type, int id, const ColorArray& colors, const RealArray& offsets) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "color_ramp_node_set_ramp");
  const void* __args[4] = { &shader_type, &id, &colors, &offsets };
  __method_bind->ptrcall($self, __args, NULL);
}

ColorArray color_ramp_node_get_colors(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "color_ramp_node_get_colors");
  const void* __args[2] = { &shader_type, &id };
  ColorArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RealArray color_ramp_node_get_offsets(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "color_ramp_node_get_offsets");
  const void* __args[2] = { &shader_type, &id };
  RealArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void curve_map_node_set_points(int shader_type, int id, const Vector2Array& points) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "curve_map_node_set_points");
  const void* __args[3] = { &shader_type, &id, &points };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2Array curve_map_node_get_points(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "curve_map_node_get_points");
  const void* __args[2] = { &shader_type, &id };
  Vector2Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int connect_node(int shader_type, int src_id, int src_slot, int dst_id, int dst_slot) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "connect_node");
  const void* __args[5] = { &shader_type, &src_id, &src_slot, &dst_id, &dst_slot };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_node_connected(int shader_type, int src_id, int src_slot, int dst_id, int dst_slot) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "is_node_connected");
  const void* __args[5] = { &shader_type, &src_id, &src_slot, &dst_id, &dst_slot };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void disconnect_node(int shader_type, int src_id, int src_slot, int dst_id, int dst_slot) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "disconnect_node");
  const void* __args[5] = { &shader_type, &src_id, &src_slot, &dst_id, &dst_slot };
  __method_bind->ptrcall($self, __args, NULL);
}

Array get_node_connections(int shader_type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "get_node_connections");
  const void* __args[1] = { &shader_type };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void clear(int shader_type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "clear");
  const void* __args[1] = { &shader_type };
  __method_bind->ptrcall($self, __args, NULL);
}

void node_set_state(int shader_type, int id, const Variant& state) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "node_set_state");
  const void* __args[3] = { &shader_type, &id, &state };
  __method_bind->ptrcall($self, __args, NULL);
}

Variant node_get_state(int shader_type, int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderGraph", "node_get_state");
  const void* __args[2] = { &shader_type, &id };
  Variant ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~ShaderGraph() {
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
