using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class ShaderGraph : Shader
    {
        public const int NODE_INPUT = 0;
        public const int NODE_SCALAR_CONST = 1;
        public const int NODE_VEC_CONST = 2;
        public const int NODE_RGB_CONST = 3;
        public const int NODE_XFORM_CONST = 4;
        public const int NODE_TIME = 5;
        public const int NODE_SCREEN_TEX = 6;
        public const int NODE_SCALAR_OP = 7;
        public const int NODE_VEC_OP = 8;
        public const int NODE_VEC_SCALAR_OP = 9;
        public const int NODE_RGB_OP = 10;
        public const int NODE_XFORM_MULT = 11;
        public const int NODE_XFORM_VEC_MULT = 12;
        public const int NODE_XFORM_VEC_INV_MULT = 13;
        public const int NODE_SCALAR_FUNC = 14;
        public const int NODE_VEC_FUNC = 15;
        public const int NODE_VEC_LEN = 16;
        public const int NODE_DOT_PROD = 17;
        public const int NODE_VEC_TO_SCALAR = 18;
        public const int NODE_SCALAR_TO_VEC = 19;
        public const int NODE_VEC_TO_XFORM = 21;
        public const int NODE_XFORM_TO_VEC = 20;
        public const int NODE_SCALAR_INTERP = 22;
        public const int NODE_VEC_INTERP = 23;
        public const int NODE_COLOR_RAMP = 24;
        public const int NODE_CURVE_MAP = 25;
        public const int NODE_SCALAR_INPUT = 26;
        public const int NODE_VEC_INPUT = 27;
        public const int NODE_RGB_INPUT = 28;
        public const int NODE_XFORM_INPUT = 29;
        public const int NODE_TEXTURE_INPUT = 30;
        public const int NODE_CUBEMAP_INPUT = 31;
        public const int NODE_DEFAULT_TEXTURE = 32;
        public const int NODE_OUTPUT = 33;
        public const int NODE_COMMENT = 34;
        public const int NODE_TYPE_MAX = 35;
        public const int SLOT_TYPE_SCALAR = 0;
        public const int SLOT_TYPE_VEC = 1;
        public const int SLOT_TYPE_XFORM = 2;
        public const int SLOT_TYPE_TEXTURE = 3;
        public const int SLOT_MAX = 4;
        public const int SHADER_TYPE_VERTEX = 0;
        public const int SHADER_TYPE_FRAGMENT = 1;
        public const int SHADER_TYPE_LIGHT = 2;
        public const int SHADER_TYPE_MAX = 3;
        public const int SLOT_IN = 0;
        public const int SLOT_OUT = 1;
        public const int GRAPH_OK = 0;
        public const int GRAPH_ERROR_CYCLIC = 1;
        public const int GRAPH_ERROR_MISSING_CONNECTIONS = 2;
        public const int SCALAR_OP_ADD = 0;
        public const int SCALAR_OP_SUB = 1;
        public const int SCALAR_OP_MUL = 2;
        public const int SCALAR_OP_DIV = 3;
        public const int SCALAR_OP_MOD = 4;
        public const int SCALAR_OP_POW = 5;
        public const int SCALAR_OP_MAX = 6;
        public const int SCALAR_OP_MIN = 7;
        public const int SCALAR_OP_ATAN2 = 8;
        public const int SCALAR_MAX_OP = 9;
        public const int VEC_OP_ADD = 0;
        public const int VEC_OP_SUB = 1;
        public const int VEC_OP_MUL = 2;
        public const int VEC_OP_DIV = 3;
        public const int VEC_OP_MOD = 4;
        public const int VEC_OP_POW = 5;
        public const int VEC_OP_MAX = 6;
        public const int VEC_OP_MIN = 7;
        public const int VEC_OP_CROSS = 8;
        public const int VEC_MAX_OP = 9;
        public const int VEC_SCALAR_OP_MUL = 0;
        public const int VEC_SCALAR_OP_DIV = 1;
        public const int VEC_SCALAR_OP_POW = 2;
        public const int VEC_SCALAR_MAX_OP = 3;
        public const int RGB_OP_SCREEN = 0;
        public const int RGB_OP_DIFFERENCE = 1;
        public const int RGB_OP_DARKEN = 2;
        public const int RGB_OP_LIGHTEN = 3;
        public const int RGB_OP_OVERLAY = 4;
        public const int RGB_OP_DODGE = 5;
        public const int RGB_OP_BURN = 6;
        public const int RGB_OP_SOFT_LIGHT = 7;
        public const int RGB_OP_HARD_LIGHT = 8;
        public const int RGB_MAX_OP = 9;
        public const int SCALAR_FUNC_SIN = 0;
        public const int SCALAR_FUNC_COS = 1;
        public const int SCALAR_FUNC_TAN = 2;
        public const int SCALAR_FUNC_ASIN = 3;
        public const int SCALAR_FUNC_ACOS = 4;
        public const int SCALAR_FUNC_ATAN = 5;
        public const int SCALAR_FUNC_SINH = 6;
        public const int SCALAR_FUNC_COSH = 7;
        public const int SCALAR_FUNC_TANH = 8;
        public const int SCALAR_FUNC_LOG = 9;
        public const int SCALAR_FUNC_EXP = 10;
        public const int SCALAR_FUNC_SQRT = 11;
        public const int SCALAR_FUNC_ABS = 12;
        public const int SCALAR_FUNC_SIGN = 13;
        public const int SCALAR_FUNC_FLOOR = 14;
        public const int SCALAR_FUNC_ROUND = 15;
        public const int SCALAR_FUNC_CEIL = 16;
        public const int SCALAR_FUNC_FRAC = 17;
        public const int SCALAR_FUNC_SATURATE = 18;
        public const int SCALAR_FUNC_NEGATE = 19;
        public const int SCALAR_MAX_FUNC = 20;
        public const int VEC_FUNC_NORMALIZE = 0;
        public const int VEC_FUNC_SATURATE = 1;
        public const int VEC_FUNC_NEGATE = 2;
        public const int VEC_FUNC_RECIPROCAL = 3;
        public const int VEC_FUNC_RGB2HSV = 4;
        public const int VEC_FUNC_HSV2RGB = 5;
        public const int VEC_MAX_FUNC = 6;

        private const string nativeName = "ShaderGraph";

        internal ShaderGraph() {}

        internal ShaderGraph(bool memoryOwn) : base(memoryOwn) {}

        ~ShaderGraph()
        {
            Dispose();
        }

        public override void Dispose()
        {
            lock (this)
            {
                if (ptr != IntPtr.Zero)
                {
                    if (memoryOwn)
                    {
                        memoryOwn = false;
                    NativeCalls.godot_icall_ShaderGraph_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "node_add");

        public void node_add(int shader_type, int node_type, int id)
        {
            NativeCalls.godot_icall_3_110(method_bind_0, Object.GetPtr(this), shader_type, node_type, id);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "node_remove");

        public void node_remove(int shader_type, int id)
        {
            NativeCalls.godot_icall_2_5(method_bind_1, Object.GetPtr(this), shader_type, id);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "node_set_pos");

        public void node_set_pos(int shader_type, int id, Vector2 pos)
        {
            NativeCalls.godot_icall_3_425(method_bind_2, Object.GetPtr(this), shader_type, id, ref pos);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "node_get_pos");

        public Vector2 node_get_pos(int shader_type, int id)
        {
            object ret = NativeCalls.godot_icall_2_113(method_bind_3, Object.GetPtr(this), shader_type, id);
            return (Vector2)ret;
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "node_get_type");

        public int node_get_type(int shader_type, int id)
        {
            return NativeCalls.godot_icall_2_27(method_bind_4, Object.GetPtr(this), shader_type, id);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_list");

        public List<object> get_node_list(int shader_type)
        {
            object[] ret = NativeCalls.godot_icall_1_421(method_bind_5, Object.GetPtr(this), shader_type);
            return new List<object>(ret);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "default_set_value");

        public void default_set_value(int shader_type, int id, int param_id, object @value)
        {
            NativeCalls.godot_icall_4_430(method_bind_6, Object.GetPtr(this), shader_type, id, param_id, @value);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "default_get_value");

        public void default_get_value(int shader_type, int id, int param_id)
        {
            NativeCalls.godot_icall_3_110(method_bind_7, Object.GetPtr(this), shader_type, id, param_id);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "scalar_const_node_set_value");

        public void scalar_const_node_set_value(int shader_type, int id, float @value)
        {
            NativeCalls.godot_icall_3_38(method_bind_8, Object.GetPtr(this), shader_type, id, @value);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "scalar_const_node_get_value");

        public float scalar_const_node_get_value(int shader_type, int id)
        {
            return NativeCalls.godot_icall_2_39(method_bind_9, Object.GetPtr(this), shader_type, id);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "vec_const_node_set_value");

        public void vec_const_node_set_value(int shader_type, int id, Vector3 @value)
        {
            NativeCalls.godot_icall_3_431(method_bind_10, Object.GetPtr(this), shader_type, id, ref @value);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "vec_const_node_get_value");

        public Vector3 vec_const_node_get_value(int shader_type, int id)
        {
            object ret = NativeCalls.godot_icall_2_432(method_bind_11, Object.GetPtr(this), shader_type, id);
            return (Vector3)ret;
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rgb_const_node_set_value");

        public void rgb_const_node_set_value(int shader_type, int id, Color @value)
        {
            NativeCalls.godot_icall_3_433(method_bind_12, Object.GetPtr(this), shader_type, id, ref @value);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rgb_const_node_get_value");

        public Color rgb_const_node_get_value(int shader_type, int id)
        {
            object ret = NativeCalls.godot_icall_2_434(method_bind_13, Object.GetPtr(this), shader_type, id);
            return (Color)ret;
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "xform_const_node_set_value");

        public void xform_const_node_set_value(int shader_type, int id, Transform @value)
        {
            NativeCalls.godot_icall_3_435(method_bind_14, Object.GetPtr(this), shader_type, id, ref @value);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "xform_const_node_get_value");

        public Transform xform_const_node_get_value(int shader_type, int id)
        {
            object ret = NativeCalls.godot_icall_2_436(method_bind_15, Object.GetPtr(this), shader_type, id);
            return (Transform)ret;
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "texture_node_set_filter_size");

        public void texture_node_set_filter_size(int shader_type, int id, int filter_size)
        {
            NativeCalls.godot_icall_3_110(method_bind_16, Object.GetPtr(this), shader_type, id, filter_size);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "texture_node_get_filter_size");

        public int texture_node_get_filter_size(int shader_type, int id)
        {
            return NativeCalls.godot_icall_2_27(method_bind_17, Object.GetPtr(this), shader_type, id);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "texture_node_set_filter_strength");

        public void texture_node_set_filter_strength(int shader_type, float id, float filter_strength)
        {
            NativeCalls.godot_icall_3_437(method_bind_18, Object.GetPtr(this), shader_type, id, filter_strength);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "texture_node_get_filter_strength");

        public float texture_node_get_filter_strength(int shader_type, float id)
        {
            return NativeCalls.godot_icall_2_438(method_bind_19, Object.GetPtr(this), shader_type, id);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "scalar_op_node_set_op");

        public void scalar_op_node_set_op(int shader_type, float id, int op)
        {
            NativeCalls.godot_icall_3_439(method_bind_20, Object.GetPtr(this), shader_type, id, op);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "scalar_op_node_get_op");

        public int scalar_op_node_get_op(int shader_type, float id)
        {
            return NativeCalls.godot_icall_2_440(method_bind_21, Object.GetPtr(this), shader_type, id);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "vec_op_node_set_op");

        public void vec_op_node_set_op(int shader_type, float id, int op)
        {
            NativeCalls.godot_icall_3_439(method_bind_22, Object.GetPtr(this), shader_type, id, op);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "vec_op_node_get_op");

        public int vec_op_node_get_op(int shader_type, float id)
        {
            return NativeCalls.godot_icall_2_440(method_bind_23, Object.GetPtr(this), shader_type, id);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "vec_scalar_op_node_set_op");

        public void vec_scalar_op_node_set_op(int shader_type, float id, int op)
        {
            NativeCalls.godot_icall_3_439(method_bind_24, Object.GetPtr(this), shader_type, id, op);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "vec_scalar_op_node_get_op");

        public int vec_scalar_op_node_get_op(int shader_type, float id)
        {
            return NativeCalls.godot_icall_2_440(method_bind_25, Object.GetPtr(this), shader_type, id);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rgb_op_node_set_op");

        public void rgb_op_node_set_op(int shader_type, float id, int op)
        {
            NativeCalls.godot_icall_3_439(method_bind_26, Object.GetPtr(this), shader_type, id, op);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rgb_op_node_get_op");

        public int rgb_op_node_get_op(int shader_type, float id)
        {
            return NativeCalls.godot_icall_2_440(method_bind_27, Object.GetPtr(this), shader_type, id);
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "xform_vec_mult_node_set_no_translation");

        public void xform_vec_mult_node_set_no_translation(int shader_type, int id, bool disable)
        {
            NativeCalls.godot_icall_3_176(method_bind_28, Object.GetPtr(this), shader_type, id, disable);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "xform_vec_mult_node_get_no_translation");

        public bool xform_vec_mult_node_get_no_translation(int shader_type, int id)
        {
            return NativeCalls.godot_icall_2_6(method_bind_29, Object.GetPtr(this), shader_type, id);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "scalar_func_node_set_function");

        public void scalar_func_node_set_function(int shader_type, int id, int func)
        {
            NativeCalls.godot_icall_3_110(method_bind_30, Object.GetPtr(this), shader_type, id, func);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "scalar_func_node_get_function");

        public int scalar_func_node_get_function(int shader_type, int id)
        {
            return NativeCalls.godot_icall_2_27(method_bind_31, Object.GetPtr(this), shader_type, id);
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "vec_func_node_set_function");

        public void vec_func_node_set_function(int shader_type, int id, int func)
        {
            NativeCalls.godot_icall_3_110(method_bind_32, Object.GetPtr(this), shader_type, id, func);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "vec_func_node_get_function");

        public int vec_func_node_get_function(int shader_type, int id)
        {
            return NativeCalls.godot_icall_2_27(method_bind_33, Object.GetPtr(this), shader_type, id);
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "input_node_set_name");

        public void input_node_set_name(int shader_type, int id, string name)
        {
            NativeCalls.godot_icall_3_441(method_bind_34, Object.GetPtr(this), shader_type, id, name);
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "input_node_get_name");

        public string input_node_get_name(int shader_type, int id)
        {
            return NativeCalls.godot_icall_2_43(method_bind_35, Object.GetPtr(this), shader_type, id);
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "scalar_input_node_set_value");

        public void scalar_input_node_set_value(int shader_type, int id, float @value)
        {
            NativeCalls.godot_icall_3_38(method_bind_36, Object.GetPtr(this), shader_type, id, @value);
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "scalar_input_node_get_value");

        public float scalar_input_node_get_value(int shader_type, int id)
        {
            return NativeCalls.godot_icall_2_39(method_bind_37, Object.GetPtr(this), shader_type, id);
        }

        private IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "vec_input_node_set_value");

        public void vec_input_node_set_value(int shader_type, int id, Vector3 @value)
        {
            NativeCalls.godot_icall_3_431(method_bind_38, Object.GetPtr(this), shader_type, id, ref @value);
        }

        private IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "vec_input_node_get_value");

        public Vector3 vec_input_node_get_value(int shader_type, int id)
        {
            object ret = NativeCalls.godot_icall_2_432(method_bind_39, Object.GetPtr(this), shader_type, id);
            return (Vector3)ret;
        }

        private IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rgb_input_node_set_value");

        public void rgb_input_node_set_value(int shader_type, int id, Color @value)
        {
            NativeCalls.godot_icall_3_433(method_bind_40, Object.GetPtr(this), shader_type, id, ref @value);
        }

        private IntPtr method_bind_41 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rgb_input_node_get_value");

        public Color rgb_input_node_get_value(int shader_type, int id)
        {
            object ret = NativeCalls.godot_icall_2_434(method_bind_41, Object.GetPtr(this), shader_type, id);
            return (Color)ret;
        }

        private IntPtr method_bind_42 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "xform_input_node_set_value");

        public void xform_input_node_set_value(int shader_type, int id, Transform @value)
        {
            NativeCalls.godot_icall_3_435(method_bind_42, Object.GetPtr(this), shader_type, id, ref @value);
        }

        private IntPtr method_bind_43 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "xform_input_node_get_value");

        public Transform xform_input_node_get_value(int shader_type, int id)
        {
            object ret = NativeCalls.godot_icall_2_436(method_bind_43, Object.GetPtr(this), shader_type, id);
            return (Transform)ret;
        }

        private IntPtr method_bind_44 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "texture_input_node_set_value");

        public void texture_input_node_set_value(int shader_type, int id, Texture @value)
        {
            NativeCalls.godot_icall_3_442(method_bind_44, Object.GetPtr(this), shader_type, id, Object.GetPtr(@value));
        }

        private IntPtr method_bind_45 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "texture_input_node_get_value");

        public Texture texture_input_node_get_value(int shader_type, int id)
        {
            return NativeCalls.godot_icall_2_443(method_bind_45, Object.GetPtr(this), shader_type, id);
        }

        private IntPtr method_bind_46 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cubemap_input_node_set_value");

        public void cubemap_input_node_set_value(int shader_type, int id, CubeMap @value)
        {
            NativeCalls.godot_icall_3_442(method_bind_46, Object.GetPtr(this), shader_type, id, Object.GetPtr(@value));
        }

        private IntPtr method_bind_47 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cubemap_input_node_get_value");

        public CubeMap cubemap_input_node_get_value(int shader_type, int id)
        {
            return NativeCalls.godot_icall_2_444(method_bind_47, Object.GetPtr(this), shader_type, id);
        }

        private IntPtr method_bind_48 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "comment_node_set_text");

        public void comment_node_set_text(int shader_type, int id, string text)
        {
            NativeCalls.godot_icall_3_441(method_bind_48, Object.GetPtr(this), shader_type, id, text);
        }

        private IntPtr method_bind_49 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "comment_node_get_text");

        public string comment_node_get_text(int shader_type, int id)
        {
            return NativeCalls.godot_icall_2_43(method_bind_49, Object.GetPtr(this), shader_type, id);
        }

        private IntPtr method_bind_50 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "color_ramp_node_set_ramp");

        public void color_ramp_node_set_ramp(int shader_type, int id, List<Color> colors, List<float> offsets)
        {
            NativeCalls.godot_icall_4_445(method_bind_50, Object.GetPtr(this), shader_type, id, colors.ToArray(), offsets.ToArray());
        }

        private IntPtr method_bind_51 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "color_ramp_node_get_colors");

        public List<Color> color_ramp_node_get_colors(int shader_type, int id)
        {
            Color[] ret = NativeCalls.godot_icall_2_446(method_bind_51, Object.GetPtr(this), shader_type, id);
            return new List<Color>(ret);
        }

        private IntPtr method_bind_52 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "color_ramp_node_get_offsets");

        public List<float> color_ramp_node_get_offsets(int shader_type, int id)
        {
            float[] ret = NativeCalls.godot_icall_2_447(method_bind_52, Object.GetPtr(this), shader_type, id);
            return new List<float>(ret);
        }

        private IntPtr method_bind_53 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "curve_map_node_set_points");

        public void curve_map_node_set_points(int shader_type, int id, List<Vector2> points)
        {
            NativeCalls.godot_icall_3_448(method_bind_53, Object.GetPtr(this), shader_type, id, points.ToArray());
        }

        private IntPtr method_bind_54 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "curve_map_node_get_points");

        public List<Vector2> curve_map_node_get_points(int shader_type, int id)
        {
            Vector2[] ret = NativeCalls.godot_icall_2_449(method_bind_54, Object.GetPtr(this), shader_type, id);
            return new List<Vector2>(ret);
        }

        private IntPtr method_bind_55 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "connect_node");

        public Error connect_node(int shader_type, int src_id, int src_slot, int dst_id, int dst_slot)
        {
            int ret = NativeCalls.godot_icall_5_450(method_bind_55, Object.GetPtr(this), shader_type, src_id, src_slot, dst_id, dst_slot);
            return (Error)ret;
        }

        private IntPtr method_bind_56 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_node_connected");

        public bool is_node_connected(int shader_type, int src_id, int src_slot, int dst_id, int dst_slot)
        {
            return NativeCalls.godot_icall_5_451(method_bind_56, Object.GetPtr(this), shader_type, src_id, src_slot, dst_id, dst_slot);
        }

        private IntPtr method_bind_57 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "disconnect_node");

        public void disconnect_node(int shader_type, int src_id, int src_slot, int dst_id, int dst_slot)
        {
            NativeCalls.godot_icall_5_239(method_bind_57, Object.GetPtr(this), shader_type, src_id, src_slot, dst_id, dst_slot);
        }

        private IntPtr method_bind_58 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_connections");

        public List<object> get_node_connections(int shader_type)
        {
            object[] ret = NativeCalls.godot_icall_1_421(method_bind_58, Object.GetPtr(this), shader_type);
            return new List<object>(ret);
        }

        private IntPtr method_bind_59 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        public void clear(int shader_type)
        {
            NativeCalls.godot_icall_1_4(method_bind_59, Object.GetPtr(this), shader_type);
        }

        private IntPtr method_bind_60 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "node_set_state");

        public void node_set_state(int shader_type, int id, object state)
        {
            NativeCalls.godot_icall_3_37(method_bind_60, Object.GetPtr(this), shader_type, id, state);
        }

        private IntPtr method_bind_61 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "node_get_state");

        public object node_get_state(int shader_type, int id)
        {
            return NativeCalls.godot_icall_2_452(method_bind_61, Object.GetPtr(this), shader_type, id);
        }
    }
}
