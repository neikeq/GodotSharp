using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Server for anything visible. The visual server is the API backend for everything visible. The whole scene system mounts on it to display.
    /// The visual server is completely opaque, the internals are entirely implementation specific and cannot be accessed.
    /// </summary>
    public static class VisualServer
    {
        public const int NO_INDEX_ARRAY = -1;
        public const int CUSTOM_ARRAY_SIZE = 8;
        public const int ARRAY_WEIGHTS_SIZE = 4;
        public const int MAX_PARTICLE_COLOR_PHASES = 4;
        public const int MAX_PARTICLE_ATTRACTORS = 4;
        public const int MAX_CURSORS = 8;
        public const int TEXTURE_FLAG_MIPMAPS = 1;
        public const int TEXTURE_FLAG_REPEAT = 2;
        public const int TEXTURE_FLAG_FILTER = 4;
        public const int TEXTURE_FLAG_CUBEMAP = 2048;
        public const int TEXTURE_FLAGS_DEFAULT = 7;
        public const int CUBEMAP_LEFT = 0;
        public const int CUBEMAP_RIGHT = 1;
        public const int CUBEMAP_BOTTOM = 2;
        public const int CUBEMAP_TOP = 3;
        public const int CUBEMAP_FRONT = 4;
        public const int CUBEMAP_BACK = 5;
        public const int SHADER_MATERIAL = 0;
        public const int SHADER_POST_PROCESS = 2;
        public const int MATERIAL_FLAG_VISIBLE = 0;
        public const int MATERIAL_FLAG_DOUBLE_SIDED = 1;
        public const int MATERIAL_FLAG_INVERT_FACES = 2;
        public const int MATERIAL_FLAG_UNSHADED = 3;
        public const int MATERIAL_FLAG_ONTOP = 4;
        public const int MATERIAL_FLAG_MAX = 7;
        public const int MATERIAL_BLEND_MODE_MIX = 0;
        public const int MATERIAL_BLEND_MODE_ADD = 1;
        public const int MATERIAL_BLEND_MODE_SUB = 2;
        public const int MATERIAL_BLEND_MODE_MUL = 3;
        public const int FIXED_MATERIAL_PARAM_DIFFUSE = 0;
        public const int FIXED_MATERIAL_PARAM_DETAIL = 1;
        public const int FIXED_MATERIAL_PARAM_SPECULAR = 2;
        public const int FIXED_MATERIAL_PARAM_EMISSION = 3;
        public const int FIXED_MATERIAL_PARAM_SPECULAR_EXP = 4;
        public const int FIXED_MATERIAL_PARAM_GLOW = 5;
        public const int FIXED_MATERIAL_PARAM_NORMAL = 6;
        public const int FIXED_MATERIAL_PARAM_SHADE_PARAM = 7;
        public const int FIXED_MATERIAL_PARAM_MAX = 8;
        public const int FIXED_MATERIAL_TEXCOORD_SPHERE = 3;
        public const int FIXED_MATERIAL_TEXCOORD_UV = 0;
        public const int FIXED_MATERIAL_TEXCOORD_UV_TRANSFORM = 1;
        public const int FIXED_MATERIAL_TEXCOORD_UV2 = 2;
        public const int ARRAY_VERTEX = 0;
        public const int ARRAY_NORMAL = 1;
        public const int ARRAY_TANGENT = 2;
        public const int ARRAY_COLOR = 3;
        public const int ARRAY_TEX_UV = 4;
        public const int ARRAY_BONES = 6;
        public const int ARRAY_WEIGHTS = 7;
        public const int ARRAY_INDEX = 8;
        public const int ARRAY_MAX = 9;
        public const int ARRAY_FORMAT_VERTEX = 1;
        public const int ARRAY_FORMAT_NORMAL = 2;
        public const int ARRAY_FORMAT_TANGENT = 4;
        public const int ARRAY_FORMAT_COLOR = 8;
        public const int ARRAY_FORMAT_TEX_UV = 16;
        public const int ARRAY_FORMAT_BONES = 64;
        public const int ARRAY_FORMAT_WEIGHTS = 128;
        public const int ARRAY_FORMAT_INDEX = 256;
        public const int PRIMITIVE_POINTS = 0;
        public const int PRIMITIVE_LINES = 1;
        public const int PRIMITIVE_LINE_STRIP = 2;
        public const int PRIMITIVE_LINE_LOOP = 3;
        public const int PRIMITIVE_TRIANGLES = 4;
        public const int PRIMITIVE_TRIANGLE_STRIP = 5;
        public const int PRIMITIVE_TRIANGLE_FAN = 6;
        public const int PRIMITIVE_MAX = 7;
        public const int PARTICLE_LIFETIME = 0;
        public const int PARTICLE_SPREAD = 1;
        public const int PARTICLE_GRAVITY = 2;
        public const int PARTICLE_LINEAR_VELOCITY = 3;
        public const int PARTICLE_ANGULAR_VELOCITY = 4;
        public const int PARTICLE_LINEAR_ACCELERATION = 5;
        public const int PARTICLE_RADIAL_ACCELERATION = 6;
        public const int PARTICLE_TANGENTIAL_ACCELERATION = 7;
        public const int PARTICLE_INITIAL_SIZE = 9;
        public const int PARTICLE_FINAL_SIZE = 10;
        public const int PARTICLE_INITIAL_ANGLE = 11;
        public const int PARTICLE_HEIGHT = 12;
        public const int PARTICLE_HEIGHT_SPEED_SCALE = 13;
        public const int PARTICLE_VAR_MAX = 14;
        public const int LIGHT_DIRECTIONAL = 0;
        public const int LIGHT_OMNI = 1;
        public const int LIGHT_SPOT = 2;
        public const int LIGHT_COLOR_DIFFUSE = 0;
        public const int LIGHT_COLOR_SPECULAR = 1;
        public const int LIGHT_PARAM_SPOT_ATTENUATION = 0;
        public const int LIGHT_PARAM_SPOT_ANGLE = 1;
        public const int LIGHT_PARAM_RADIUS = 2;
        public const int LIGHT_PARAM_ENERGY = 3;
        public const int LIGHT_PARAM_ATTENUATION = 4;
        public const int LIGHT_PARAM_MAX = 10;
        public const int SCENARIO_DEBUG_DISABLED = 0;
        public const int SCENARIO_DEBUG_WIREFRAME = 1;
        public const int SCENARIO_DEBUG_OVERDRAW = 2;
        public const int INSTANCE_MESH = 1;
        public const int INSTANCE_MULTIMESH = 2;
        public const int INSTANCE_PARTICLES = 4;
        public const int INSTANCE_LIGHT = 5;
        public const int INSTANCE_ROOM = 6;
        public const int INSTANCE_PORTAL = 7;
        public const int INSTANCE_GEOMETRY_MASK = 30;
        public const int INFO_OBJECTS_IN_FRAME = 0;
        public const int INFO_VERTICES_IN_FRAME = 1;
        public const int INFO_MATERIAL_CHANGES_IN_FRAME = 2;
        public const int INFO_SHADER_CHANGES_IN_FRAME = 3;
        public const int INFO_SURFACE_CHANGES_IN_FRAME = 4;
        public const int INFO_DRAW_CALLS_IN_FRAME = 5;
        public const int INFO_USAGE_VIDEO_MEM_TOTAL = 6;
        public const int INFO_VIDEO_MEM_USED = 7;
        public const int INFO_TEXTURE_MEM_USED = 8;
        public const int INFO_VERTEX_MEM_USED = 9;

        private const string nativeName = "VisualServer";
        internal static IntPtr ptr = NativeCalls.godot_icall_VisualServer_get_singleton();

        private static IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "texture_create");

        public static RID texture_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_0, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "texture_create_from_image");

        public static RID texture_create_from_image(Image arg0, int arg1 = 7)
        {
            IntPtr ret = NativeCalls.godot_icall_2_529(method_bind_1, ptr, Image.GetPtr(arg0), arg1);
            return new RID(ret);
        }

        private static IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "texture_set_flags");

        public static void texture_set_flags(RID arg0, int arg1)
        {
            NativeCalls.godot_icall_2_91(method_bind_2, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "texture_get_flags");

        public static int texture_get_flags(RID arg0)
        {
            return NativeCalls.godot_icall_1_86(method_bind_3, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "texture_get_width");

        public static int texture_get_width(RID arg0)
        {
            return NativeCalls.godot_icall_1_86(method_bind_4, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "texture_get_height");

        public static int texture_get_height(RID arg0)
        {
            return NativeCalls.godot_icall_1_86(method_bind_5, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "texture_set_shrink_all_x2_on_set_data");

        public static void texture_set_shrink_all_x2_on_set_data(bool shrink)
        {
            NativeCalls.godot_icall_1_13(method_bind_6, ptr, shrink);
        }

        private static IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "shader_create");

        public static RID shader_create(int mode = 0)
        {
            IntPtr ret = NativeCalls.godot_icall_1_343(method_bind_7, ptr, mode);
            return new RID(ret);
        }

        private static IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "shader_set_mode");

        public static void shader_set_mode(RID shader, int mode)
        {
            NativeCalls.godot_icall_2_91(method_bind_8, ptr, RID.GetPtr(shader), mode);
        }

        private static IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "material_create");

        public static RID material_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_9, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "material_set_shader");

        public static void material_set_shader(RID shader, RID arg1)
        {
            NativeCalls.godot_icall_2_93(method_bind_10, ptr, RID.GetPtr(shader), RID.GetPtr(arg1));
        }

        private static IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "material_get_shader");

        public static RID material_get_shader(RID arg0)
        {
            IntPtr ret = NativeCalls.godot_icall_1_354(method_bind_11, ptr, RID.GetPtr(arg0));
            return new RID(ret);
        }

        private static IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "material_set_param");

        public static void material_set_param(RID arg0, string arg1, object arg2)
        {
            NativeCalls.godot_icall_3_530(method_bind_12, ptr, RID.GetPtr(arg0), arg1, arg2);
        }

        private static IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "material_get_param");

        public static void material_get_param(RID arg0, string arg1)
        {
            NativeCalls.godot_icall_2_84(method_bind_13, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "material_set_flag");

        public static void material_set_flag(RID arg0, int arg1, bool arg2)
        {
            NativeCalls.godot_icall_3_365(method_bind_14, ptr, RID.GetPtr(arg0), arg1, arg2);
        }

        private static IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "material_get_flag");

        public static bool material_get_flag(RID arg0, int arg1)
        {
            return NativeCalls.godot_icall_2_366(method_bind_15, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "material_set_blend_mode");

        public static void material_set_blend_mode(RID arg0, int arg1)
        {
            NativeCalls.godot_icall_2_91(method_bind_16, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "material_get_blend_mode");

        public static int material_get_blend_mode(RID arg0)
        {
            return NativeCalls.godot_icall_1_86(method_bind_17, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "material_set_line_width");

        public static void material_set_line_width(RID arg0, float arg1)
        {
            NativeCalls.godot_icall_2_94(method_bind_18, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "material_get_line_width");

        public static float material_get_line_width(RID arg0)
        {
            return NativeCalls.godot_icall_1_99(method_bind_19, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "mesh_create");

        public static RID mesh_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_20, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "mesh_add_surface");

        public static void mesh_add_surface(RID arg0, int arg1, List<object> arg2, List<object> arg3 = null, bool arg4 = false)
        {
            List<object> arg3_in = arg3 != null ? arg3 : new List<object>();
            NativeCalls.godot_icall_5_531(method_bind_21, ptr, RID.GetPtr(arg0), arg1, arg2.ToArray(), arg3_in.ToArray(), arg4);
        }

        private static IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "mesh_surface_set_material");

        public static void mesh_surface_set_material(RID arg0, int arg1, RID arg2, bool arg3 = false)
        {
            NativeCalls.godot_icall_4_532(method_bind_22, ptr, RID.GetPtr(arg0), arg1, RID.GetPtr(arg2), arg3);
        }

        private static IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "mesh_surface_get_material");

        public static RID mesh_surface_get_material(RID arg0, int arg1)
        {
            IntPtr ret = NativeCalls.godot_icall_2_358(method_bind_23, ptr, RID.GetPtr(arg0), arg1);
            return new RID(ret);
        }

        private static IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "mesh_surface_get_array_len");

        public static int mesh_surface_get_array_len(RID arg0, int arg1)
        {
            return NativeCalls.godot_icall_2_386(method_bind_24, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "mesh_surface_get_array_index_len");

        public static int mesh_surface_get_array_index_len(RID arg0, int arg1)
        {
            return NativeCalls.godot_icall_2_386(method_bind_25, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "mesh_surface_get_format");

        public static int mesh_surface_get_format(RID arg0, int arg1)
        {
            return NativeCalls.godot_icall_2_386(method_bind_26, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "mesh_surface_get_primitive_type");

        public static int mesh_surface_get_primitive_type(RID arg0, int arg1)
        {
            return NativeCalls.godot_icall_2_386(method_bind_27, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "mesh_remove_surface");

        public static void mesh_remove_surface(RID arg0, int arg1)
        {
            NativeCalls.godot_icall_2_91(method_bind_28, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "mesh_get_surface_count");

        public static int mesh_get_surface_count(RID arg0)
        {
            return NativeCalls.godot_icall_1_86(method_bind_29, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "multimesh_create");

        public static RID multimesh_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_30, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "multimesh_set_mesh");

        public static void multimesh_set_mesh(RID arg0, RID arg1)
        {
            NativeCalls.godot_icall_2_93(method_bind_31, ptr, RID.GetPtr(arg0), RID.GetPtr(arg1));
        }

        private static IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "multimesh_set_aabb");

        public static void multimesh_set_aabb(RID arg0, AABB arg1)
        {
            NativeCalls.godot_icall_2_533(method_bind_32, ptr, RID.GetPtr(arg0), ref arg1);
        }

        private static IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "multimesh_instance_set_transform");

        public static void multimesh_instance_set_transform(RID arg0, int arg1, Transform arg2)
        {
            NativeCalls.godot_icall_3_382(method_bind_33, ptr, RID.GetPtr(arg0), arg1, ref arg2);
        }

        private static IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "multimesh_instance_set_color");

        public static void multimesh_instance_set_color(RID arg0, int arg1, Color arg2)
        {
            NativeCalls.godot_icall_3_534(method_bind_34, ptr, RID.GetPtr(arg0), arg1, ref arg2);
        }

        private static IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "multimesh_get_mesh");

        public static RID multimesh_get_mesh(RID arg0)
        {
            IntPtr ret = NativeCalls.godot_icall_1_354(method_bind_35, ptr, RID.GetPtr(arg0));
            return new RID(ret);
        }

        private static IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "multimesh_get_aabb");

        public static AABB multimesh_get_aabb(RID arg0, AABB arg1)
        {
            object ret = NativeCalls.godot_icall_2_535(method_bind_36, ptr, RID.GetPtr(arg0), ref arg1);
            return (AABB)ret;
        }

        private static IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "multimesh_instance_get_transform");

        public static Transform multimesh_instance_get_transform(RID arg0, int arg1)
        {
            object ret = NativeCalls.godot_icall_2_383(method_bind_37, ptr, RID.GetPtr(arg0), arg1);
            return (Transform)ret;
        }

        private static IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "multimesh_instance_get_color");

        public static Color multimesh_instance_get_color(RID arg0, int arg1)
        {
            object ret = NativeCalls.godot_icall_2_536(method_bind_38, ptr, RID.GetPtr(arg0), arg1);
            return (Color)ret;
        }

        private static IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_create");

        public static RID particles_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_39, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_set_amount");

        public static void particles_set_amount(RID arg0, int arg1)
        {
            NativeCalls.godot_icall_2_91(method_bind_40, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_41 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_get_amount");

        public static int particles_get_amount(RID arg0)
        {
            return NativeCalls.godot_icall_1_86(method_bind_41, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_42 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_set_emitting");

        public static void particles_set_emitting(RID arg0, bool arg1)
        {
            NativeCalls.godot_icall_2_98(method_bind_42, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_43 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_is_emitting");

        public static bool particles_is_emitting(RID arg0)
        {
            return NativeCalls.godot_icall_1_87(method_bind_43, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_44 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_set_visibility_aabb");

        public static void particles_set_visibility_aabb(RID arg0, AABB arg1)
        {
            NativeCalls.godot_icall_2_533(method_bind_44, ptr, RID.GetPtr(arg0), ref arg1);
        }

        private static IntPtr method_bind_45 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_get_visibility_aabb");

        public static AABB particles_get_visibility_aabb(RID arg0)
        {
            object ret = NativeCalls.godot_icall_1_537(method_bind_45, ptr, RID.GetPtr(arg0));
            return (AABB)ret;
        }

        private static IntPtr method_bind_46 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_set_variable");

        public static void particles_set_variable(RID arg0, int arg1, float arg2)
        {
            NativeCalls.godot_icall_3_97(method_bind_46, ptr, RID.GetPtr(arg0), arg1, arg2);
        }

        private static IntPtr method_bind_47 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_get_variable");

        public static float particles_get_variable(RID arg0, int arg1)
        {
            return NativeCalls.godot_icall_2_352(method_bind_47, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_48 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_set_randomness");

        public static void particles_set_randomness(RID arg0, int arg1, float arg2)
        {
            NativeCalls.godot_icall_3_97(method_bind_48, ptr, RID.GetPtr(arg0), arg1, arg2);
        }

        private static IntPtr method_bind_49 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_get_randomness");

        public static float particles_get_randomness(RID arg0, int arg1)
        {
            return NativeCalls.godot_icall_2_352(method_bind_49, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_50 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_set_color_phases");

        public static void particles_set_color_phases(RID arg0, int arg1)
        {
            NativeCalls.godot_icall_2_91(method_bind_50, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_51 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_get_color_phases");

        public static int particles_get_color_phases(RID arg0)
        {
            return NativeCalls.godot_icall_1_86(method_bind_51, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_52 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_set_color_phase_pos");

        public static void particles_set_color_phase_pos(RID arg0, int arg1, float arg2)
        {
            NativeCalls.godot_icall_3_97(method_bind_52, ptr, RID.GetPtr(arg0), arg1, arg2);
        }

        private static IntPtr method_bind_53 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_get_color_phase_pos");

        public static float particles_get_color_phase_pos(RID arg0, int arg1)
        {
            return NativeCalls.godot_icall_2_352(method_bind_53, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_54 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_set_color_phase_color");

        public static void particles_set_color_phase_color(RID arg0, int arg1, Color arg2)
        {
            NativeCalls.godot_icall_3_534(method_bind_54, ptr, RID.GetPtr(arg0), arg1, ref arg2);
        }

        private static IntPtr method_bind_55 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_get_color_phase_color");

        public static Color particles_get_color_phase_color(RID arg0, int arg1)
        {
            object ret = NativeCalls.godot_icall_2_536(method_bind_55, ptr, RID.GetPtr(arg0), arg1);
            return (Color)ret;
        }

        private static IntPtr method_bind_56 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_set_attractors");

        public static void particles_set_attractors(RID arg0, int arg1)
        {
            NativeCalls.godot_icall_2_91(method_bind_56, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_57 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_get_attractors");

        public static int particles_get_attractors(RID arg0)
        {
            return NativeCalls.godot_icall_1_86(method_bind_57, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_58 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_set_attractor_pos");

        public static void particles_set_attractor_pos(RID arg0, int arg1, Vector3 arg2)
        {
            NativeCalls.godot_icall_3_538(method_bind_58, ptr, RID.GetPtr(arg0), arg1, ref arg2);
        }

        private static IntPtr method_bind_59 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_get_attractor_pos");

        public static Vector3 particles_get_attractor_pos(RID arg0, int arg1)
        {
            object ret = NativeCalls.godot_icall_2_539(method_bind_59, ptr, RID.GetPtr(arg0), arg1);
            return (Vector3)ret;
        }

        private static IntPtr method_bind_60 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_set_attractor_strength");

        public static void particles_set_attractor_strength(RID arg0, int arg1, float arg2)
        {
            NativeCalls.godot_icall_3_97(method_bind_60, ptr, RID.GetPtr(arg0), arg1, arg2);
        }

        private static IntPtr method_bind_61 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_get_attractor_strength");

        public static float particles_get_attractor_strength(RID arg0, int arg1)
        {
            return NativeCalls.godot_icall_2_352(method_bind_61, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_62 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_set_material");

        public static void particles_set_material(RID arg0, RID arg1, bool arg2 = false)
        {
            NativeCalls.godot_icall_3_540(method_bind_62, ptr, RID.GetPtr(arg0), RID.GetPtr(arg1), arg2);
        }

        private static IntPtr method_bind_63 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_set_height_from_velocity");

        public static void particles_set_height_from_velocity(RID arg0, bool arg1)
        {
            NativeCalls.godot_icall_2_98(method_bind_63, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_64 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "particles_has_height_from_velocity");

        public static bool particles_has_height_from_velocity(RID arg0)
        {
            return NativeCalls.godot_icall_1_87(method_bind_64, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_65 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "light_create");

        public static RID light_create(int arg0)
        {
            IntPtr ret = NativeCalls.godot_icall_1_343(method_bind_65, ptr, arg0);
            return new RID(ret);
        }

        private static IntPtr method_bind_66 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "light_get_type");

        public static int light_get_type(RID arg0)
        {
            return NativeCalls.godot_icall_1_86(method_bind_66, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_67 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "light_set_color");

        public static void light_set_color(RID arg0, int arg1, Color arg2)
        {
            NativeCalls.godot_icall_3_534(method_bind_67, ptr, RID.GetPtr(arg0), arg1, ref arg2);
        }

        private static IntPtr method_bind_68 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "light_get_color");

        public static Color light_get_color(RID arg0, int arg1)
        {
            object ret = NativeCalls.godot_icall_2_536(method_bind_68, ptr, RID.GetPtr(arg0), arg1);
            return (Color)ret;
        }

        private static IntPtr method_bind_69 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "light_set_shadow");

        public static void light_set_shadow(RID arg0, bool arg1)
        {
            NativeCalls.godot_icall_2_98(method_bind_69, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_70 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "light_has_shadow");

        public static bool light_has_shadow(RID arg0)
        {
            return NativeCalls.godot_icall_1_87(method_bind_70, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_71 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "light_set_volumetric");

        public static void light_set_volumetric(RID arg0, bool arg1)
        {
            NativeCalls.godot_icall_2_98(method_bind_71, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_72 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "light_is_volumetric");

        public static bool light_is_volumetric(RID arg0)
        {
            return NativeCalls.godot_icall_1_87(method_bind_72, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_73 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "light_set_projector");

        public static void light_set_projector(RID arg0, RID arg1)
        {
            NativeCalls.godot_icall_2_93(method_bind_73, ptr, RID.GetPtr(arg0), RID.GetPtr(arg1));
        }

        private static IntPtr method_bind_74 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "light_get_projector");

        public static RID light_get_projector(RID arg0)
        {
            IntPtr ret = NativeCalls.godot_icall_1_354(method_bind_74, ptr, RID.GetPtr(arg0));
            return new RID(ret);
        }

        private static IntPtr method_bind_75 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "light_set_var");

        public static void light_set_var(RID arg0, int arg1, float arg2)
        {
            NativeCalls.godot_icall_3_97(method_bind_75, ptr, RID.GetPtr(arg0), arg1, arg2);
        }

        private static IntPtr method_bind_76 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "light_get_var");

        public static float light_get_var(RID arg0, int arg1)
        {
            return NativeCalls.godot_icall_2_352(method_bind_76, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_77 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "skeleton_create");

        public static RID skeleton_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_77, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_78 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "skeleton_resize");

        public static void skeleton_resize(RID arg0, int arg1)
        {
            NativeCalls.godot_icall_2_91(method_bind_78, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_79 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "skeleton_get_bone_count");

        public static int skeleton_get_bone_count(RID arg0)
        {
            return NativeCalls.godot_icall_1_86(method_bind_79, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_80 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "skeleton_bone_set_transform");

        public static void skeleton_bone_set_transform(RID arg0, int arg1, Transform arg2)
        {
            NativeCalls.godot_icall_3_382(method_bind_80, ptr, RID.GetPtr(arg0), arg1, ref arg2);
        }

        private static IntPtr method_bind_81 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "skeleton_bone_get_transform");

        public static Transform skeleton_bone_get_transform(RID arg0, int arg1)
        {
            object ret = NativeCalls.godot_icall_2_383(method_bind_81, ptr, RID.GetPtr(arg0), arg1);
            return (Transform)ret;
        }

        private static IntPtr method_bind_82 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "room_create");

        public static RID room_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_82, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_83 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "room_set_bounds");

        public static void room_set_bounds(RID arg0, Dictionary<object, object> arg1)
        {
            NativeCalls.godot_icall_2_541(method_bind_83, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_84 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "room_get_bounds");

        public static Dictionary<object, object> room_get_bounds(RID arg0)
        {
            return NativeCalls.godot_icall_1_542(method_bind_84, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_85 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "portal_create");

        public static RID portal_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_85, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_86 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "portal_set_shape");

        public static void portal_set_shape(RID arg0, List<Vector2> arg1)
        {
            NativeCalls.godot_icall_2_543(method_bind_86, ptr, RID.GetPtr(arg0), arg1.ToArray());
        }

        private static IntPtr method_bind_87 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "portal_get_shape");

        public static List<Vector2> portal_get_shape(RID arg0)
        {
            Vector2[] ret = NativeCalls.godot_icall_1_544(method_bind_87, ptr, RID.GetPtr(arg0));
            return new List<Vector2>(ret);
        }

        private static IntPtr method_bind_88 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "portal_set_enabled");

        public static void portal_set_enabled(RID arg0, bool arg1)
        {
            NativeCalls.godot_icall_2_98(method_bind_88, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_89 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "portal_is_enabled");

        public static bool portal_is_enabled(RID arg0)
        {
            return NativeCalls.godot_icall_1_87(method_bind_89, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_90 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "portal_set_disable_distance");

        public static void portal_set_disable_distance(RID arg0, float arg1)
        {
            NativeCalls.godot_icall_2_94(method_bind_90, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_91 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "portal_get_disable_distance");

        public static float portal_get_disable_distance(RID arg0)
        {
            return NativeCalls.godot_icall_1_99(method_bind_91, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_92 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "portal_set_disabled_color");

        public static void portal_set_disabled_color(RID arg0, Color arg1)
        {
            NativeCalls.godot_icall_2_545(method_bind_92, ptr, RID.GetPtr(arg0), ref arg1);
        }

        private static IntPtr method_bind_93 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "portal_get_disabled_color");

        public static Color portal_get_disabled_color(RID arg0)
        {
            object ret = NativeCalls.godot_icall_1_546(method_bind_93, ptr, RID.GetPtr(arg0));
            return (Color)ret;
        }

        private static IntPtr method_bind_94 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "camera_create");

        public static RID camera_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_94, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_95 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "camera_set_perspective");

        public static void camera_set_perspective(RID arg0, float arg1, float arg2, float arg3)
        {
            NativeCalls.godot_icall_4_95(method_bind_95, ptr, RID.GetPtr(arg0), arg1, arg2, arg3);
        }

        private static IntPtr method_bind_96 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "camera_set_orthogonal");

        public static void camera_set_orthogonal(RID arg0, float arg1, float arg2, float arg3)
        {
            NativeCalls.godot_icall_4_95(method_bind_96, ptr, RID.GetPtr(arg0), arg1, arg2, arg3);
        }

        private static IntPtr method_bind_97 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "camera_set_transform");

        public static void camera_set_transform(RID arg0, Transform arg1)
        {
            NativeCalls.godot_icall_2_384(method_bind_97, ptr, RID.GetPtr(arg0), ref arg1);
        }

        private static IntPtr method_bind_98 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "viewport_create");

        public static RID viewport_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_98, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_99 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "viewport_set_rect");

        public static void viewport_set_rect(RID arg0, Rect2 arg1)
        {
            NativeCalls.godot_icall_2_473(method_bind_99, ptr, RID.GetPtr(arg0), ref arg1);
        }

        private static IntPtr method_bind_100 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "viewport_get_rect");

        public static Rect2 viewport_get_rect(RID arg0)
        {
            object ret = NativeCalls.godot_icall_1_547(method_bind_100, ptr, RID.GetPtr(arg0));
            return (Rect2)ret;
        }

        private static IntPtr method_bind_101 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "viewport_attach_camera");

        public static void viewport_attach_camera(RID arg0, RID arg1 = null)
        {
            RID arg1_in = arg1 != null ? arg1 : new RID();
            NativeCalls.godot_icall_2_93(method_bind_101, ptr, RID.GetPtr(arg0), RID.GetPtr(arg1_in));
        }

        private static IntPtr method_bind_102 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "viewport_get_attached_camera");

        public static RID viewport_get_attached_camera(RID arg0)
        {
            IntPtr ret = NativeCalls.godot_icall_1_354(method_bind_102, ptr, RID.GetPtr(arg0));
            return new RID(ret);
        }

        private static IntPtr method_bind_103 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "viewport_get_scenario");

        public static RID viewport_get_scenario(RID arg0)
        {
            IntPtr ret = NativeCalls.godot_icall_1_354(method_bind_103, ptr, RID.GetPtr(arg0));
            return new RID(ret);
        }

        private static IntPtr method_bind_104 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "viewport_attach_canvas");

        public static void viewport_attach_canvas(RID arg0, RID arg1)
        {
            NativeCalls.godot_icall_2_93(method_bind_104, ptr, RID.GetPtr(arg0), RID.GetPtr(arg1));
        }

        private static IntPtr method_bind_105 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "viewport_remove_canvas");

        public static void viewport_remove_canvas(RID arg0, RID arg1)
        {
            NativeCalls.godot_icall_2_93(method_bind_105, ptr, RID.GetPtr(arg0), RID.GetPtr(arg1));
        }

        private static IntPtr method_bind_106 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "viewport_set_global_canvas_transform");

        public static void viewport_set_global_canvas_transform(RID arg0, Matrix32 arg1)
        {
            NativeCalls.godot_icall_2_361(method_bind_106, ptr, RID.GetPtr(arg0), ref arg1);
        }

        private static IntPtr method_bind_107 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "scenario_create");

        public static RID scenario_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_107, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_108 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "scenario_set_debug");

        public static void scenario_set_debug(RID arg0, int arg1)
        {
            NativeCalls.godot_icall_2_91(method_bind_108, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_109 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instance_create");

        public static RID instance_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_109, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_110 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instance_get_base");

        public static RID instance_get_base(RID arg0)
        {
            IntPtr ret = NativeCalls.godot_icall_1_354(method_bind_110, ptr, RID.GetPtr(arg0));
            return new RID(ret);
        }

        private static IntPtr method_bind_111 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instance_get_base_aabb");

        public static RID instance_get_base_aabb(RID arg0)
        {
            IntPtr ret = NativeCalls.godot_icall_1_354(method_bind_111, ptr, RID.GetPtr(arg0));
            return new RID(ret);
        }

        private static IntPtr method_bind_112 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instance_set_transform");

        public static void instance_set_transform(RID arg0, Transform arg1)
        {
            NativeCalls.godot_icall_2_384(method_bind_112, ptr, RID.GetPtr(arg0), ref arg1);
        }

        private static IntPtr method_bind_113 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instance_get_transform");

        public static Transform instance_get_transform(RID arg0)
        {
            object ret = NativeCalls.godot_icall_1_385(method_bind_113, ptr, RID.GetPtr(arg0));
            return (Transform)ret;
        }

        private static IntPtr method_bind_114 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instance_attach_object_instance_ID");

        public static void instance_attach_object_instance_ID(RID arg0, int arg1)
        {
            NativeCalls.godot_icall_2_91(method_bind_114, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_115 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instance_get_object_instance_ID");

        public static int instance_get_object_instance_ID(RID arg0)
        {
            return NativeCalls.godot_icall_1_86(method_bind_115, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_116 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instance_attach_skeleton");

        public static void instance_attach_skeleton(RID arg0, RID arg1)
        {
            NativeCalls.godot_icall_2_93(method_bind_116, ptr, RID.GetPtr(arg0), RID.GetPtr(arg1));
        }

        private static IntPtr method_bind_117 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instance_get_skeleton");

        public static RID instance_get_skeleton(RID arg0)
        {
            IntPtr ret = NativeCalls.godot_icall_1_354(method_bind_117, ptr, RID.GetPtr(arg0));
            return new RID(ret);
        }

        private static IntPtr method_bind_118 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instance_set_room");

        public static void instance_set_room(RID arg0, RID arg1)
        {
            NativeCalls.godot_icall_2_93(method_bind_118, ptr, RID.GetPtr(arg0), RID.GetPtr(arg1));
        }

        private static IntPtr method_bind_119 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instance_get_room");

        public static RID instance_get_room(RID arg0)
        {
            IntPtr ret = NativeCalls.godot_icall_1_354(method_bind_119, ptr, RID.GetPtr(arg0));
            return new RID(ret);
        }

        private static IntPtr method_bind_120 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instance_set_exterior");

        public static void instance_set_exterior(RID arg0, bool arg1)
        {
            NativeCalls.godot_icall_2_98(method_bind_120, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_121 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instance_is_exterior");

        public static bool instance_is_exterior(RID arg0)
        {
            return NativeCalls.godot_icall_1_87(method_bind_121, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_122 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instances_cull_aabb");

        public static List<object> instances_cull_aabb(AABB arg0, RID arg1)
        {
            object[] ret = NativeCalls.godot_icall_2_548(method_bind_122, ptr, ref arg0, RID.GetPtr(arg1));
            return new List<object>(ret);
        }

        private static IntPtr method_bind_123 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instances_cull_ray");

        public static List<object> instances_cull_ray(Vector3 arg0, Vector3 arg1, RID arg2)
        {
            object[] ret = NativeCalls.godot_icall_3_549(method_bind_123, ptr, ref arg0, ref arg1, RID.GetPtr(arg2));
            return new List<object>(ret);
        }

        private static IntPtr method_bind_124 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instances_cull_convex");

        public static List<object> instances_cull_convex(List<object> arg0, RID arg1)
        {
            object[] ret = NativeCalls.godot_icall_2_550(method_bind_124, ptr, arg0.ToArray(), RID.GetPtr(arg1));
            return new List<object>(ret);
        }

        private static IntPtr method_bind_125 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instance_geometry_override_material_param");

        public static RID instance_geometry_override_material_param(RID arg0)
        {
            IntPtr ret = NativeCalls.godot_icall_1_354(method_bind_125, ptr, RID.GetPtr(arg0));
            return new RID(ret);
        }

        private static IntPtr method_bind_126 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "instance_geometry_get_material_param");

        public static RID instance_geometry_get_material_param(RID arg0)
        {
            IntPtr ret = NativeCalls.godot_icall_1_354(method_bind_126, ptr, RID.GetPtr(arg0));
            return new RID(ret);
        }

        private static IntPtr method_bind_127 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_test_cube");

        public static RID get_test_cube()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_127, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_128 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_create");

        public static RID canvas_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_128, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_129 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_create");

        public static RID canvas_item_create()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_129, ptr);
            return new RID(ret);
        }

        private static IntPtr method_bind_130 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_set_parent");

        public static void canvas_item_set_parent(RID arg0, RID arg1)
        {
            NativeCalls.godot_icall_2_93(method_bind_130, ptr, RID.GetPtr(arg0), RID.GetPtr(arg1));
        }

        private static IntPtr method_bind_131 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_get_parent");

        public static RID canvas_item_get_parent(RID arg0)
        {
            IntPtr ret = NativeCalls.godot_icall_1_354(method_bind_131, ptr, RID.GetPtr(arg0));
            return new RID(ret);
        }

        private static IntPtr method_bind_132 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_set_transform");

        public static void canvas_item_set_transform(RID arg0, Matrix32 arg1)
        {
            NativeCalls.godot_icall_2_361(method_bind_132, ptr, RID.GetPtr(arg0), ref arg1);
        }

        private static IntPtr method_bind_133 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_set_custom_rect");

        public static void canvas_item_set_custom_rect(RID arg0, bool arg1, Rect2 arg2)
        {
            NativeCalls.godot_icall_3_551(method_bind_133, ptr, RID.GetPtr(arg0), arg1, ref arg2);
        }

        private static IntPtr method_bind_134 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_set_clip");

        public static void canvas_item_set_clip(RID arg0, bool arg1)
        {
            NativeCalls.godot_icall_2_98(method_bind_134, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_135 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_set_opacity");

        public static void canvas_item_set_opacity(RID arg0, float arg1)
        {
            NativeCalls.godot_icall_2_94(method_bind_135, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_136 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_get_opacity");

        public static float canvas_item_get_opacity(RID arg0, float arg1)
        {
            return NativeCalls.godot_icall_2_552(method_bind_136, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_137 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_set_self_opacity");

        public static void canvas_item_set_self_opacity(RID arg0, float arg1)
        {
            NativeCalls.godot_icall_2_94(method_bind_137, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_138 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_get_self_opacity");

        public static float canvas_item_get_self_opacity(RID arg0, float arg1)
        {
            return NativeCalls.godot_icall_2_552(method_bind_138, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_139 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_set_z");

        public static void canvas_item_set_z(RID arg0, int arg1)
        {
            NativeCalls.godot_icall_2_91(method_bind_139, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_140 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_set_sort_children_by_y");

        public static void canvas_item_set_sort_children_by_y(RID arg0, bool arg1)
        {
            NativeCalls.godot_icall_2_98(method_bind_140, ptr, RID.GetPtr(arg0), arg1);
        }

        private static IntPtr method_bind_141 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_add_line");

        public static void canvas_item_add_line(RID arg0, Vector2 arg1, Vector2 arg2, Color arg3, float arg4 = 1f, bool arg5 = false)
        {
            NativeCalls.godot_icall_6_553(method_bind_141, ptr, RID.GetPtr(arg0), ref arg1, ref arg2, ref arg3, arg4, arg5);
        }

        private static IntPtr method_bind_142 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_add_rect");

        public static void canvas_item_add_rect(RID arg0, Rect2 arg1, Color arg2)
        {
            NativeCalls.godot_icall_3_554(method_bind_142, ptr, RID.GetPtr(arg0), ref arg1, ref arg2);
        }

        private static IntPtr method_bind_143 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_add_texture_rect");

        public static void canvas_item_add_texture_rect(RID arg0, Rect2 arg1, RID arg2, bool arg3, Nullable<Color> arg4 = null, bool arg5 = false)
        {
            Color arg4_in = arg4.HasValue ? arg4.Value : new Color(1, 1, 1, 1);
            NativeCalls.godot_icall_6_555(method_bind_143, ptr, RID.GetPtr(arg0), ref arg1, RID.GetPtr(arg2), arg3, ref arg4_in, arg5);
        }

        private static IntPtr method_bind_144 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_add_texture_rect_region");

        public static void canvas_item_add_texture_rect_region(RID arg0, Rect2 arg1, RID arg2, Rect2 arg3, Nullable<Color> arg4 = null, bool arg5 = false)
        {
            Color arg4_in = arg4.HasValue ? arg4.Value : new Color(1, 1, 1, 1);
            NativeCalls.godot_icall_6_556(method_bind_144, ptr, RID.GetPtr(arg0), ref arg1, RID.GetPtr(arg2), ref arg3, ref arg4_in, arg5);
        }

        private static IntPtr method_bind_145 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_add_style_box");

        public static void canvas_item_add_style_box(RID arg0, Rect2 arg1, Rect2 arg2, RID arg3, List<float> arg4, Nullable<Color> arg5 = null)
        {
            Color arg5_in = arg5.HasValue ? arg5.Value : new Color(1, 1, 1, 1);
            NativeCalls.godot_icall_6_557(method_bind_145, ptr, RID.GetPtr(arg0), ref arg1, ref arg2, RID.GetPtr(arg3), arg4.ToArray(), ref arg5_in);
        }

        private static IntPtr method_bind_146 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_add_circle");

        public static void canvas_item_add_circle(RID arg0, Vector2 arg1, float arg2, Color arg3)
        {
            NativeCalls.godot_icall_4_558(method_bind_146, ptr, RID.GetPtr(arg0), ref arg1, arg2, ref arg3);
        }

        private static IntPtr method_bind_147 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "viewport_set_canvas_transform");

        public static void viewport_set_canvas_transform(RID arg0, RID arg1, Matrix32 arg2)
        {
            NativeCalls.godot_icall_3_355(method_bind_147, ptr, RID.GetPtr(arg0), RID.GetPtr(arg1), ref arg2);
        }

        private static IntPtr method_bind_148 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_clear");

        public static void canvas_item_clear(RID arg0)
        {
            NativeCalls.godot_icall_1_100(method_bind_148, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_149 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "canvas_item_raise");

        public static void canvas_item_raise(RID arg0)
        {
            NativeCalls.godot_icall_1_100(method_bind_149, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_150 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cursor_set_rotation");

        public static void cursor_set_rotation(float arg0, int arg1)
        {
            NativeCalls.godot_icall_2_559(method_bind_150, ptr, arg0, arg1);
        }

        private static IntPtr method_bind_151 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cursor_set_texture");

        public static void cursor_set_texture(RID arg0, Vector2 arg1, int arg2, Rect2 arg3)
        {
            NativeCalls.godot_icall_4_560(method_bind_151, ptr, RID.GetPtr(arg0), ref arg1, arg2, ref arg3);
        }

        private static IntPtr method_bind_152 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cursor_set_visible");

        public static void cursor_set_visible(bool arg0, int arg1)
        {
            NativeCalls.godot_icall_2_561(method_bind_152, ptr, arg0, arg1);
        }

        private static IntPtr method_bind_153 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "cursor_set_pos");

        public static void cursor_set_pos(Vector2 arg0, int arg1)
        {
            NativeCalls.godot_icall_2_562(method_bind_153, ptr, ref arg0, arg1);
        }

        private static IntPtr method_bind_154 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "black_bars_set_margins");

        public static void black_bars_set_margins(int left, int top, int right, int bottom)
        {
            NativeCalls.godot_icall_4_254(method_bind_154, ptr, left, top, right, bottom);
        }

        private static IntPtr method_bind_155 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "black_bars_set_images");

        public static void black_bars_set_images(RID left, RID top, RID right, RID bottom)
        {
            NativeCalls.godot_icall_4_563(method_bind_155, ptr, RID.GetPtr(left), RID.GetPtr(top), RID.GetPtr(right), RID.GetPtr(bottom));
        }

        private static IntPtr method_bind_156 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "make_sphere_mesh");

        public static RID make_sphere_mesh(int arg0, int arg1, float arg2)
        {
            IntPtr ret = NativeCalls.godot_icall_3_564(method_bind_156, ptr, arg0, arg1, arg2);
            return new RID(ret);
        }

        private static IntPtr method_bind_157 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "mesh_add_surface_from_planes");

        public static void mesh_add_surface_from_planes(RID arg0, List<object> arg1)
        {
            NativeCalls.godot_icall_2_565(method_bind_157, ptr, RID.GetPtr(arg0), arg1.ToArray());
        }

        private static IntPtr method_bind_158 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "draw");

        public static void draw()
        {
            NativeCalls.godot_icall_0_7(method_bind_158, ptr);
        }

        private static IntPtr method_bind_159 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sync");

        public static void sync()
        {
            NativeCalls.godot_icall_0_7(method_bind_159, ptr);
        }

        private static IntPtr method_bind_160 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "free_rid");

        public static void free_rid(RID arg0)
        {
            NativeCalls.godot_icall_1_100(method_bind_160, ptr, RID.GetPtr(arg0));
        }

        private static IntPtr method_bind_161 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_default_clear_color");

        public static void set_default_clear_color(Color arg0)
        {
            NativeCalls.godot_icall_1_25(method_bind_161, ptr, ref arg0);
        }

        private static IntPtr method_bind_162 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_clear_color");

        public static Color get_default_clear_color()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_162, ptr);
            return (Color)ret;
        }

        private static IntPtr method_bind_163 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_render_info");

        public static int get_render_info(int arg0)
        {
            return NativeCalls.godot_icall_1_28(method_bind_163, ptr, arg0);
        }
    }
}
