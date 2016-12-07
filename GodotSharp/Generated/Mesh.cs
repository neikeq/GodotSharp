using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Mesh is a type of [Resource] that contains vertex-array based geometry, divided in [i]surfaces[/i]. Each surface contains a completely separate array and a material used to draw it. Design wise, a mesh with multiple surfaces is preferred to a single surface, because objects created in 3D editing software commonly contain multiple materials.
    /// </summary>
    public class Mesh : Resource
    {
        /// <summary>
        /// Default value used for index_array_len when no indices are present.
        /// </summary>
        public const int NO_INDEX_ARRAY = -1;
        /// <summary>
        /// Amount of weights/bone indices per vertex (always 4).
        /// </summary>
        public const int ARRAY_WEIGHTS_SIZE = 4;
        /// <summary>
        /// Vertex array (array of [Vector3] vertices).
        /// </summary>
        public const int ARRAY_VERTEX = 0;
        /// <summary>
        /// Normal array (array of [Vector3] normals).
        /// </summary>
        public const int ARRAY_NORMAL = 1;
        /// <summary>
        /// Tangent array, array of groups of 4 floats. first 3 floats determine the tangent, and the last the binormal direction as -1 or 1.
        /// </summary>
        public const int ARRAY_TANGENT = 2;
        /// <summary>
        /// Vertex array (array of [Color] colors).
        /// </summary>
        public const int ARRAY_COLOR = 3;
        /// <summary>
        /// UV array (array of [Vector3] UVs or float array of groups of 2 floats (u,v)).
        /// </summary>
        public const int ARRAY_TEX_UV = 4;
        /// <summary>
        /// Second UV array (array of [Vector3] UVs or float array of groups of 2 floats (u,v)).
        /// </summary>
        public const int ARRAY_TEX_UV2 = 5;
        /// <summary>
        /// Array of bone indices, as a float array. Each element in groups of 4 floats.
        /// </summary>
        public const int ARRAY_BONES = 6;
        /// <summary>
        /// Array of bone weights, as a float array. Each element in groups of 4 floats.
        /// </summary>
        public const int ARRAY_WEIGHTS = 7;
        /// <summary>
        /// Array of integers, used as indices referencing vertices. No index can be beyond the vertex array size.
        /// </summary>
        public const int ARRAY_INDEX = 8;
        /// <summary>
        /// Array format will include vertices (mandatory).
        /// </summary>
        public const int ARRAY_FORMAT_VERTEX = 1;
        /// <summary>
        /// Array format will include normals
        /// </summary>
        public const int ARRAY_FORMAT_NORMAL = 2;
        /// <summary>
        /// Array format will include tangents
        /// </summary>
        public const int ARRAY_FORMAT_TANGENT = 4;
        /// <summary>
        /// Array format will include a color array.
        /// </summary>
        public const int ARRAY_FORMAT_COLOR = 8;
        /// <summary>
        /// Array format will include UVs.
        /// </summary>
        public const int ARRAY_FORMAT_TEX_UV = 16;
        /// <summary>
        /// Array format will include another set of UVs.
        /// </summary>
        public const int ARRAY_FORMAT_TEX_UV2 = 32;
        /// <summary>
        /// Array format will include bone indices.
        /// </summary>
        public const int ARRAY_FORMAT_BONES = 64;
        /// <summary>
        /// Array format will include bone weights.
        /// </summary>
        public const int ARRAY_FORMAT_WEIGHTS = 128;
        /// <summary>
        /// Index array will be used.
        /// </summary>
        public const int ARRAY_FORMAT_INDEX = 256;
        /// <summary>
        /// Render array as points (one vertex equals one point).
        /// </summary>
        public const int PRIMITIVE_POINTS = 0;
        /// <summary>
        /// Render array as lines (every two vertices a line is created).
        /// </summary>
        public const int PRIMITIVE_LINES = 1;
        /// <summary>
        /// Render array as line strip.
        /// </summary>
        public const int PRIMITIVE_LINE_STRIP = 2;
        /// <summary>
        /// Render array as line loop (like line strip, but closed).
        /// </summary>
        public const int PRIMITIVE_LINE_LOOP = 3;
        /// <summary>
        /// Render array as triangles (every three vertices a triangle is created).
        /// </summary>
        public const int PRIMITIVE_TRIANGLES = 4;
        /// <summary>
        /// Render array as triangle strips.
        /// </summary>
        public const int PRIMITIVE_TRIANGLE_STRIP = 5;
        /// <summary>
        /// Render array as triangle fans.
        /// </summary>
        public const int PRIMITIVE_TRIANGLE_FAN = 6;

        private const string nativeName = "Mesh";

        public Mesh() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Mesh_Ctor(this);
        }

        internal Mesh(bool memoryOwn) : base(memoryOwn) {}

        ~Mesh()
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
                    NativeCalls.godot_icall_Mesh_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_morph_target");

        public void add_morph_target(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_morph_target_count");

        public int get_morph_target_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_morph_target_name");

        public string get_morph_target_name(int index)
        {
            return NativeCalls.godot_icall_1_116(method_bind_2, Object.GetPtr(this), index);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_morph_targets");

        public void clear_morph_targets()
        {
            NativeCalls.godot_icall_0_7(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_morph_target_mode");

        public void set_morph_target_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_4, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_morph_target_mode");

        public int get_morph_target_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_surface");

        /// <summary>
        /// Create a new surface ([method get_surface_count] that will become surf_idx for this.
        /// Surfaces are created to be rendered using a "primitive", which may be PRIMITIVE_POINTS, PRIMITIVE_LINES, PRIMITIVE_LINE_STRIP, PRIMITIVE_LINE_LOOP, PRIMITIVE_TRIANGLES, PRIMITIVE_TRIANGLE_STRIP, PRIMITIVE_TRIANGLE_FAN. (As a note, when using indices, it is recommended to only use just points, lines or triangles).
        /// The format of a surface determines which arrays it will allocate and hold, so "format" is a combination of ARRAY_FORMAT_* mask constants ORed together. ARRAY_FORMAT_VERTEX must be always present. "array_len" determines the amount of vertices in the array (not primitives!). if ARRAY_FORMAT_INDEX is in the format mask, then it means that an index array will be allocated and "index_array_len" must be passed.
        /// <param name="morph_arrays">If the param is null, then the default value is new List<object>()</param>
        /// </summary>
        public void add_surface(int primitive, List<object> arrays, List<object> morph_arrays = null, bool alphasort = false)
        {
            List<object> morph_arrays_in = morph_arrays != null ? morph_arrays : new List<object>();
            NativeCalls.godot_icall_4_277(method_bind_6, Object.GetPtr(this), primitive, arrays.ToArray(), morph_arrays_in.ToArray(), alphasort);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_surface_count");

        /// <summary>
        /// Return the amount of surfaces that the [Mesh] holds.
        /// </summary>
        public int get_surface_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "surface_remove");

        /// <summary>
        /// Remove a surface at position surf_idx, shifting greater surfaces one surf_idx slot down.
        /// </summary>
        public void surface_remove(int surf_idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_8, Object.GetPtr(this), surf_idx);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "surface_get_array_len");

        /// <summary>
        /// Return the length in vertices of the vertex array in the requested surface (see [method add_surface]).
        /// </summary>
        public int surface_get_array_len(int surf_idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_9, Object.GetPtr(this), surf_idx);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "surface_get_array_index_len");

        /// <summary>
        /// Return the length in indices of the index array in the requested surface (see [method add_surface]).
        /// </summary>
        public int surface_get_array_index_len(int surf_idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_10, Object.GetPtr(this), surf_idx);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "surface_get_format");

        /// <summary>
        /// Return the format mask of the requested surface (see [method add_surface]).
        /// </summary>
        public int surface_get_format(int surf_idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_11, Object.GetPtr(this), surf_idx);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "surface_get_primitive_type");

        /// <summary>
        /// Return the primitive type of the requested surface (see [method add_surface]).
        /// </summary>
        public int surface_get_primitive_type(int surf_idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_12, Object.GetPtr(this), surf_idx);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "surface_set_material");

        /// <summary>
        /// Set a [Material] for a given surface. Surface will be rendered using this material.
        /// </summary>
        public void surface_set_material(int surf_idx, Material material)
        {
            NativeCalls.godot_icall_2_115(method_bind_13, Object.GetPtr(this), surf_idx, Object.GetPtr(material));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "surface_get_material");

        /// <summary>
        /// Return a [Material] in a given surface. Surface is rendered using this material.
        /// </summary>
        public Material surface_get_material(int surf_idx)
        {
            return NativeCalls.godot_icall_1_278(method_bind_14, Object.GetPtr(this), surf_idx);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "surface_set_name");

        public void surface_set_name(int surf_idx, string name)
        {
            NativeCalls.godot_icall_2_61(method_bind_15, Object.GetPtr(this), surf_idx, name);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "surface_get_name");

        public string surface_get_name(int surf_idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_16, Object.GetPtr(this), surf_idx);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "center_geometry");

        public void center_geometry()
        {
            NativeCalls.godot_icall_0_7(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "regen_normalmaps");

        public void regen_normalmaps()
        {
            NativeCalls.godot_icall_0_7(method_bind_18, Object.GetPtr(this));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_custom_aabb");

        public void set_custom_aabb(AABB aabb)
        {
            NativeCalls.godot_icall_1_279(method_bind_19, Object.GetPtr(this), ref aabb);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_custom_aabb");

        public AABB get_custom_aabb()
        {
            object ret = NativeCalls.godot_icall_0_280(method_bind_20, Object.GetPtr(this));
            return (AABB)ret;
        }
    }
}
