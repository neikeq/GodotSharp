using System;

namespace GodotEngine
{
    /// <summary>
    /// MultiMeshInstance is a [Node] that takes a [MultiMesh] resource and adds it to the current scenario by creating an instance of it (yes, this is an instance of instances).
    /// </summary>
    public class MultiMeshInstance : GeometryInstance
    {
        private const string nativeName = "MultiMeshInstance";

        public MultiMeshInstance() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_MultiMeshInstance_Ctor(this);
        }

        internal MultiMeshInstance(bool memoryOwn) : base(memoryOwn) {}

        ~MultiMeshInstance()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_multimesh");

        /// <summary>
        /// Set the [MultiMesh] to be instance.
        /// </summary>
        public void set_multimesh(Object multimesh)
        {
            NativeCalls.godot_icall_1_20(method_bind_0, Object.GetPtr(this), Object.GetPtr(multimesh));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_multimesh");

        /// <summary>
        /// Return the [MultiMesh] that is used for instancing.
        /// </summary>
        public Object get_multimesh()
        {
            return NativeCalls.godot_icall_0_12(method_bind_1, Object.GetPtr(this));
        }
    }
}
