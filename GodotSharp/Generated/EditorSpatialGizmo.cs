using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Custom gizmo that is used for providing custom visualization and editing (handles) for 3D Spatial objects. These are created by [method EditorPlugin.create_spatial_gizmo].
    /// </summary>
    public class EditorSpatialGizmo : SpatialGizmo
    {
        private const string nativeName = "EditorSpatialGizmo";

        public EditorSpatialGizmo() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_EditorSpatialGizmo_Ctor(this);
        }

        internal EditorSpatialGizmo(bool memoryOwn) : base(memoryOwn) {}

        ~EditorSpatialGizmo()
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
                    NativeCalls.godot_icall_EditorSpatialGizmo_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_lines");

        /// <summary>
        /// Add lines to the gizmo (as sets of 2 points), with a given material. The lines are used for visualizing the gizmo. Call this function during [method redraw].
        /// </summary>
        public void add_lines(List<Vector3> lines, Material material, bool billboard = false)
        {
            NativeCalls.godot_icall_3_221(method_bind_0, Object.GetPtr(this), lines.ToArray(), Object.GetPtr(material), billboard);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_mesh");

        /// <summary>
        /// Add a mesh to the gizmo, this is used for visualization. Call this function during [method redraw].
        /// <param name="skeleton">If the param is null, then the default value is new RID()</param>
        /// </summary>
        public void add_mesh(Mesh mesh, bool billboard = false, RID skeleton = null)
        {
            RID skeleton_in = skeleton != null ? skeleton : new RID();
            NativeCalls.godot_icall_3_222(method_bind_1, Object.GetPtr(this), Object.GetPtr(mesh), billboard, RID.GetPtr(skeleton_in));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_collision_segments");

        public void add_collision_segments(List<Vector3> segments)
        {
            NativeCalls.godot_icall_1_167(method_bind_2, Object.GetPtr(this), segments.ToArray());
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_collision_triangles");

        /// <summary>
        /// Add collision triangles to the gizmo for picking. A [TriangleMesh] can be generated from a regular [Mesh] too. Call this function during [method redraw].
        /// </summary>
        public void add_collision_triangles(TriangleMesh triangles)
        {
            NativeCalls.godot_icall_1_21(method_bind_3, Object.GetPtr(this), Object.GetPtr(triangles));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_unscaled_billboard");

        /// <summary>
        /// Add an unscaled billboard for visualization. Call this function during [method redraw].
        /// </summary>
        public void add_unscaled_billboard(Material material, float default_scale = 1)
        {
            NativeCalls.godot_icall_2_223(method_bind_4, Object.GetPtr(this), Object.GetPtr(material), default_scale);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_handles");

        /// <summary>
        /// Add a list of handles (points) which can be used to deform the object being edited.
        /// There are virtual functions which will be called upon editing of these handles. Call this function during [method redraw].
        /// </summary>
        public void add_handles(List<Vector3> handles, bool billboard = false, bool secondary = false)
        {
            NativeCalls.godot_icall_3_224(method_bind_5, Object.GetPtr(this), handles.ToArray(), billboard, secondary);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_spatial_node");

        /// <summary>
        /// Call this function once and upon creation of the gizmo, otherwise no other function will work. The argument is the node being edited by the gizmo.
        /// </summary>
        public void set_spatial_node(Spatial node)
        {
            NativeCalls.godot_icall_1_20(method_bind_6, Object.GetPtr(this), Object.GetPtr(node));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        public void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_7, Object.GetPtr(this));
        }
    }
}
