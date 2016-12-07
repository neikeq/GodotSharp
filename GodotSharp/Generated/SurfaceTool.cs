using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Helper tool to create geometry.
    /// </summary>
    public class SurfaceTool : Reference
    {
        private const string nativeName = "SurfaceTool";

        public SurfaceTool() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_SurfaceTool_Ctor(this);
        }

        internal SurfaceTool(bool memoryOwn) : base(memoryOwn) {}

        ~SurfaceTool()
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
                    NativeCalls.godot_icall_SurfaceTool_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "begin");

        public void begin(int primitive)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), primitive);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_vertex");

        public void add_vertex(Vector3 vertex)
        {
            NativeCalls.godot_icall_1_76(method_bind_1, Object.GetPtr(this), ref vertex);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_color");

        public void add_color(Color color)
        {
            NativeCalls.godot_icall_1_25(method_bind_2, Object.GetPtr(this), ref color);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_normal");

        public void add_normal(Vector3 normal)
        {
            NativeCalls.godot_icall_1_76(method_bind_3, Object.GetPtr(this), ref normal);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_tangent");

        public void add_tangent(Plane tangent)
        {
            NativeCalls.godot_icall_1_257(method_bind_4, Object.GetPtr(this), ref tangent);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_uv");

        public void add_uv(Vector2 uv)
        {
            NativeCalls.godot_icall_1_23(method_bind_5, Object.GetPtr(this), ref uv);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_uv2");

        public void add_uv2(Vector2 uv2)
        {
            NativeCalls.godot_icall_1_23(method_bind_6, Object.GetPtr(this), ref uv2);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_bones");

        public void add_bones(List<int> bones)
        {
            NativeCalls.godot_icall_1_103(method_bind_7, Object.GetPtr(this), bones.ToArray());
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_weights");

        public void add_weights(List<float> weights)
        {
            NativeCalls.godot_icall_1_163(method_bind_8, Object.GetPtr(this), weights.ToArray());
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_smooth_group");

        public void add_smooth_group(bool smooth)
        {
            NativeCalls.godot_icall_1_13(method_bind_9, Object.GetPtr(this), smooth);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_triangle_fan");

        public void add_triangle_fan(List<Vector3> vertexes, List<Vector2> uvs = null, List<Color> colors = null, List<Vector2> uv2s = null, List<Vector3> normals = null, List<object> tangents = null)
        {
            List<Vector2> uvs_in = uvs != null ? uvs : new List<Vector2>();
            List<Color> colors_in = colors != null ? colors : new List<Color>();
            List<Vector2> uv2s_in = uv2s != null ? uv2s : new List<Vector2>();
            List<Vector3> normals_in = normals != null ? normals : new List<Vector3>();
            List<object> tangents_in = tangents != null ? tangents : new List<object>();
            NativeCalls.godot_icall_6_474(method_bind_10, Object.GetPtr(this), vertexes.ToArray(), uvs_in.ToArray(), colors_in.ToArray(), uv2s_in.ToArray(), normals_in.ToArray(), tangents_in.ToArray());
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_material");

        public void set_material(Material material)
        {
            NativeCalls.godot_icall_1_21(method_bind_11, Object.GetPtr(this), Object.GetPtr(material));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "index");

        public void index()
        {
            NativeCalls.godot_icall_0_7(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "deindex");

        public void deindex()
        {
            NativeCalls.godot_icall_0_7(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "generate_normals");

        public void generate_normals()
        {
            NativeCalls.godot_icall_0_7(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_index");

        public void add_index(int index)
        {
            NativeCalls.godot_icall_1_4(method_bind_15, Object.GetPtr(this), index);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "commit");

        public Mesh commit(Mesh existing = null)
        {
            return NativeCalls.godot_icall_1_475(method_bind_16, Object.GetPtr(this), Object.GetPtr(existing));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        public void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_17, Object.GetPtr(this));
        }
    }
}
