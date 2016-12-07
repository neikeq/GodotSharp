using System;

namespace GodotEngine
{
    /// <summary>
    /// MultiMesh provides low level mesh instancing. If the amount of [Mesh] instances needed goes from hundreds to thousands (and most need to be visible at close proximity) creating such a large amount of [MeshInstance] nodes may affect performance by using too much CPU or video memory.
    /// For this case a MultiMesh becomes very useful, as it can draw thousands of instances with little API overhead.
    /// As a drawback, if the instances are too far away of each other, performance may be reduced as every single instance will always rendered (they are spatially indexed as one, for the whole object).
    /// Since instances may have any behavior, the AABB used for visibility must be provided by the user, or generated with [method generate_aabb].
    /// </summary>
    public class MultiMesh : Resource
    {
        private const string nativeName = "MultiMesh";

        public MultiMesh() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_MultiMesh_Ctor(this);
        }

        internal MultiMesh(bool memoryOwn) : base(memoryOwn) {}

        ~MultiMesh()
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
                    NativeCalls.godot_icall_MultiMesh_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_mesh");

        /// <summary>
        /// Set the [Mesh] resource to be drawn in multiple instances.
        /// </summary>
        public void set_mesh(Mesh mesh)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(mesh));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mesh");

        /// <summary>
        /// Return the [Mesh] resource drawn as multiple instances.
        /// </summary>
        public Mesh get_mesh()
        {
            return NativeCalls.godot_icall_0_289(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_instance_count");

        /// <summary>
        /// Set the amount of instances that is going to be drawn. Changing this number will erase all the existing instance transform and color data.
        /// </summary>
        public void set_instance_count(int count)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), count);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_instance_count");

        /// <summary>
        /// Return the amount of instances that is going to be drawn.
        /// </summary>
        public int get_instance_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_instance_transform");

        /// <summary>
        /// Set the transform for a specific instance.
        /// </summary>
        public void set_instance_transform(int instance, Transform transform)
        {
            NativeCalls.godot_icall_2_149(method_bind_4, Object.GetPtr(this), instance, ref transform);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_instance_transform");

        /// <summary>
        /// Return the transform of a specific instance.
        /// </summary>
        public Transform get_instance_transform(int instance)
        {
            object ret = NativeCalls.godot_icall_1_151(method_bind_5, Object.GetPtr(this), instance);
            return (Transform)ret;
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_instance_color");

        /// <summary>
        /// Set the color of a specific instance.
        /// </summary>
        public void set_instance_color(int instance, Color color)
        {
            NativeCalls.godot_icall_2_160(method_bind_6, Object.GetPtr(this), instance, ref color);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_instance_color");

        /// <summary>
        /// Get the color of a specific instance.
        /// </summary>
        public Color get_instance_color(int instance)
        {
            object ret = NativeCalls.godot_icall_1_161(method_bind_7, Object.GetPtr(this), instance);
            return (Color)ret;
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_aabb");

        /// <summary>
        /// Set the visibility AABB. If not provided, MultiMesh will not be visible.
        /// </summary>
        public void set_aabb(AABB visibility_aabb)
        {
            NativeCalls.godot_icall_1_279(method_bind_8, Object.GetPtr(this), ref visibility_aabb);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_aabb");

        /// <summary>
        /// Return the visibility AABB.
        /// </summary>
        public AABB get_aabb()
        {
            object ret = NativeCalls.godot_icall_0_280(method_bind_9, Object.GetPtr(this));
            return (AABB)ret;
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "generate_aabb");

        /// <summary>
        /// Generate a new visibility AABB, using mesh AABB and instance transforms. Since instance information is stored in the [VisualServer], this function is VERY SLOW and must NOT be used often.
        /// </summary>
        public void generate_aabb()
        {
            NativeCalls.godot_icall_0_7(method_bind_10, Object.GetPtr(this));
        }
    }
}
