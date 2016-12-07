using System;

namespace GodotEngine
{
    /// <summary>
    /// MeshInstance is a [Node] that takes a [Mesh] resource and adds it to the current scenario by creating an instance of it. This is the class most often used to get 3D geometry rendered and can be used to instance a single [Mesh] in many places. This allows to reuse geometry and save on resources. When a [Mesh] has to be instanced more than thousands of times at close proximity, consider using a [MultiMesh] in a [MultiMeshInstance] instead.
    /// </summary>
    public class MeshInstance : GeometryInstance
    {
        private const string nativeName = "MeshInstance";

        public MeshInstance() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_MeshInstance_Ctor(this);
        }

        internal MeshInstance(bool memoryOwn) : base(memoryOwn) {}

        ~MeshInstance()
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
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_mesh");

        /// <summary>
        /// Set the [Mesh] resource for the instance.
        /// </summary>
        public void set_mesh(Mesh mesh)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(mesh));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mesh");

        /// <summary>
        /// Return the current [Mesh] resource for the instance.
        /// </summary>
        public Mesh get_mesh()
        {
            return NativeCalls.godot_icall_0_289(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_skeleton_path");

        public void set_skeleton_path(NodePath skeleton_path)
        {
            NativeCalls.godot_icall_1_57(method_bind_2, Object.GetPtr(this), NodePath.GetPtr(skeleton_path));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_skeleton_path");

        public NodePath get_skeleton_path()
        {
            IntPtr ret = NativeCalls.godot_icall_0_58(method_bind_3, Object.GetPtr(this));
            return new NodePath(ret);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_aabb");

        /// <summary>
        /// Return the AABB of the mesh, in local coordinates.
        /// </summary>
        public AABB get_aabb()
        {
            object ret = NativeCalls.godot_icall_0_280(method_bind_4, Object.GetPtr(this));
            return (AABB)ret;
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "create_trimesh_collision");

        /// <summary>
        /// This helper creates a [StaticBody] child [Node] using the mesh geometry as collision. It's mainly used for testing.
        /// </summary>
        public void create_trimesh_collision()
        {
            NativeCalls.godot_icall_0_7(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "create_convex_collision");

        public void create_convex_collision()
        {
            NativeCalls.godot_icall_0_7(method_bind_6, Object.GetPtr(this));
        }
    }
}
