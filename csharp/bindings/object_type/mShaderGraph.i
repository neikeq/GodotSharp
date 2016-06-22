/* mShaderGraph.i */
%module mShaderGraph

%nodefaultctor ShaderGraph;
%typemap(ctype, out="ShaderGraph*") Ref<ShaderGraph> "ShaderGraph*"
%typemap(out, null="NULL") Ref<ShaderGraph> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<ShaderGraph> "ShaderGraph.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ShaderGraph> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ShaderGraph> "ShaderGraph"
%typemap(csout, excode=SWIGEXCODE) Ref<ShaderGraph> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ShaderGraph ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ShaderGraph;$excode
    return ret;
}

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
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("node_add", shader_type, node_type, id);
    }
  }
  %extend {
    void node_remove(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("node_remove", shader_type, id);
    }
  }
  %extend {
    void node_set_pos(int shader_type, int id, const Vector2& pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("node_set_pos", shader_type, id, pos);
    }
  }
  %extend {
    Vector2 node_get_pos(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("node_get_pos", shader_type, id);
    }
  }
  %extend {
    int node_get_type(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("node_get_type", shader_type, id);
    }
  }
  %extend {
    Array get_node_list(int shader_type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_list", shader_type);
    }
  }
  %extend {
    void default_set_value(int shader_type, int id, int param_id, const Variant& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("default_set_value", shader_type, id, param_id, value);
    }
  }
  %extend {
    void default_get_value(int shader_type, int id, int param_id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("default_get_value", shader_type, id, param_id);
    }
  }
  %extend {
    void scalar_const_node_set_value(int shader_type, int id, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("scalar_const_node_set_value", shader_type, id, value);
    }
  }
  %extend {
    float scalar_const_node_get_value(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("scalar_const_node_get_value", shader_type, id);
    }
  }
  %extend {
    void vec_const_node_set_value(int shader_type, int id, const Vector3& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("vec_const_node_set_value", shader_type, id, value);
    }
  }
  %extend {
    Vector3 vec_const_node_get_value(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("vec_const_node_get_value", shader_type, id);
    }
  }
  %extend {
    void rgb_const_node_set_value(int shader_type, int id, const Color& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("rgb_const_node_set_value", shader_type, id, value);
    }
  }
  %extend {
    Color rgb_const_node_get_value(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("rgb_const_node_get_value", shader_type, id);
    }
  }
  %extend {
    void xform_const_node_set_value(int shader_type, int id, const Transform& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("xform_const_node_set_value", shader_type, id, value);
    }
  }
  %extend {
    Transform xform_const_node_get_value(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("xform_const_node_get_value", shader_type, id);
    }
  }
  %extend {
    void texture_node_set_filter_size(int shader_type, int id, int filter_size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("texture_node_set_filter_size", shader_type, id, filter_size);
    }
  }
  %extend {
    int texture_node_get_filter_size(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("texture_node_get_filter_size", shader_type, id);
    }
  }
  %extend {
    void texture_node_set_filter_strength(int shader_type, float id, float filter_strength) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("texture_node_set_filter_strength", shader_type, id, filter_strength);
    }
  }
  %extend {
    float texture_node_get_filter_strength(int shader_type, float id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("texture_node_get_filter_strength", shader_type, id);
    }
  }
  %extend {
    void scalar_op_node_set_op(int shader_type, float id, int op) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("scalar_op_node_set_op", shader_type, id, op);
    }
  }
  %extend {
    int scalar_op_node_get_op(int shader_type, float id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("scalar_op_node_get_op", shader_type, id);
    }
  }
  %extend {
    void vec_op_node_set_op(int shader_type, float id, int op) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("vec_op_node_set_op", shader_type, id, op);
    }
  }
  %extend {
    int vec_op_node_get_op(int shader_type, float id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("vec_op_node_get_op", shader_type, id);
    }
  }
  %extend {
    void vec_scalar_op_node_set_op(int shader_type, float id, int op) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("vec_scalar_op_node_set_op", shader_type, id, op);
    }
  }
  %extend {
    int vec_scalar_op_node_get_op(int shader_type, float id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("vec_scalar_op_node_get_op", shader_type, id);
    }
  }
  %extend {
    void rgb_op_node_set_op(int shader_type, float id, int op) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("rgb_op_node_set_op", shader_type, id, op);
    }
  }
  %extend {
    int rgb_op_node_get_op(int shader_type, float id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("rgb_op_node_get_op", shader_type, id);
    }
  }
  %extend {
    void xform_vec_mult_node_set_no_translation(int shader_type, int id, bool disable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("xform_vec_mult_node_set_no_translation", shader_type, id, disable);
    }
  }
  %extend {
    bool xform_vec_mult_node_get_no_translation(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("xform_vec_mult_node_get_no_translation", shader_type, id);
    }
  }
  %extend {
    void scalar_func_node_set_function(int shader_type, int id, int func) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("scalar_func_node_set_function", shader_type, id, func);
    }
  }
  %extend {
    int scalar_func_node_get_function(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("scalar_func_node_get_function", shader_type, id);
    }
  }
  %extend {
    void vec_func_node_set_function(int shader_type, int id, int func) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("vec_func_node_set_function", shader_type, id, func);
    }
  }
  %extend {
    int vec_func_node_get_function(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("vec_func_node_get_function", shader_type, id);
    }
  }
  %extend {
    void input_node_set_name(int shader_type, int id, const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("input_node_set_name", shader_type, id, name);
    }
  }
  %extend {
    String input_node_get_name(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("input_node_get_name", shader_type, id);
    }
  }
  %extend {
    void scalar_input_node_set_value(int shader_type, int id, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("scalar_input_node_set_value", shader_type, id, value);
    }
  }
  %extend {
    float scalar_input_node_get_value(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("scalar_input_node_get_value", shader_type, id);
    }
  }
  %extend {
    void vec_input_node_set_value(int shader_type, int id, const Vector3& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("vec_input_node_set_value", shader_type, id, value);
    }
  }
  %extend {
    Vector3 vec_input_node_get_value(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("vec_input_node_get_value", shader_type, id);
    }
  }
  %extend {
    void rgb_input_node_set_value(int shader_type, int id, const Color& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("rgb_input_node_set_value", shader_type, id, value);
    }
  }
  %extend {
    Color rgb_input_node_get_value(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("rgb_input_node_get_value", shader_type, id);
    }
  }
  %extend {
    void xform_input_node_set_value(int shader_type, int id, const Transform& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("xform_input_node_set_value", shader_type, id, value);
    }
  }
  %extend {
    Transform xform_input_node_get_value(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("xform_input_node_get_value", shader_type, id);
    }
  }
  %extend {
    void texture_input_node_set_value(int shader_type, int id, Ref<Texture> value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("texture_input_node_set_value", shader_type, id, value);
    }
  }
  %extend {
    Ref<Texture> texture_input_node_get_value(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("texture_input_node_get_value", shader_type, id).operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    void cubemap_input_node_set_value(int shader_type, int id, Ref<CubeMap> value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("cubemap_input_node_set_value", shader_type, id, value);
    }
  }
  %extend {
    Ref<CubeMap> cubemap_input_node_get_value(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("cubemap_input_node_get_value", shader_type, id).operator Object *()->cast_to<CubeMap>();
    }
  }
  %extend {
    void comment_node_set_text(int shader_type, int id, const String& text) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("comment_node_set_text", shader_type, id, text);
    }
  }
  %extend {
    String comment_node_get_text(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("comment_node_get_text", shader_type, id);
    }
  }
  %extend {
    void color_ramp_node_set_ramp(int shader_type, int id, const ColorArray& colors, const RealArray& offsets) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("color_ramp_node_set_ramp", shader_type, id, colors, offsets);
    }
  }
  %extend {
    ColorArray color_ramp_node_get_colors(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("color_ramp_node_get_colors", shader_type, id);
    }
  }
  %extend {
    RealArray color_ramp_node_get_offsets(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("color_ramp_node_get_offsets", shader_type, id);
    }
  }
  %extend {
    void curve_map_node_set_points(int shader_type, int id, const Vector2Array& points) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("curve_map_node_set_points", shader_type, id, points);
    }
  }
  %extend {
    Vector2Array curve_map_node_get_points(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("curve_map_node_get_points", shader_type, id);
    }
  }
  %extend {
    int connect_node(int shader_type, int src_id, int src_slot, int dst_id, int dst_slot) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("connect_node", shader_type, src_id, src_slot, dst_id, dst_slot);
    }
  }
  %extend {
    bool is_node_connected(int shader_type, int src_id, int src_slot, int dst_id, int dst_slot) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_node_connected", shader_type, src_id, src_slot, dst_id, dst_slot);
    }
  }
  %extend {
    void disconnect_node(int shader_type, int src_id, int src_slot, int dst_id, int dst_slot) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("disconnect_node", shader_type, src_id, src_slot, dst_id, dst_slot);
    }
  }
  %extend {
    Array get_node_connections(int shader_type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_connections", shader_type);
    }
  }
  %extend {
    void clear(int shader_type) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear", shader_type);
    }
  }
  %extend {
    void node_set_state(int shader_type, int id, const Variant& state) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("node_set_state", shader_type, id, state);
    }
  }
  %extend {
    Variant node_get_state(int shader_type, int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("node_get_state", shader_type, id);
    }
  }
  %extend {
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
