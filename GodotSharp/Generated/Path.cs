using System;

namespace GodotEngine
{
    /// <summary>
    /// This class is a container/Node-ification of a [Curve3D], so it can have [Spatial] properties and [Node] info.
    /// </summary>
    public class Path : Spatial
    {
        private const string nativeName = "Path";

        public Path() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Path_Ctor(this);
        }

        internal Path(bool memoryOwn) : base(memoryOwn) {}

        ~Path()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_curve");

        /// <summary>
        /// Sets the [Curve3D].
        /// </summary>
        public void set_curve(Curve3D curve)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(curve));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_curve");

        /// <summary>
        /// Returns the [Curve3D] contained.
        /// </summary>
        public Curve3D get_curve()
        {
            return NativeCalls.godot_icall_0_340(method_bind_1, Object.GetPtr(this));
        }
    }
}
