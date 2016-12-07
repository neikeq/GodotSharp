using System;

namespace GodotEngine
{
    /// <summary>
    /// General purpose proximity-detection node.
    /// </summary>
    public class ProximityGroup : Spatial
    {
        private const string nativeName = "ProximityGroup";

        public ProximityGroup() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ProximityGroup_Ctor(this);
        }

        internal ProximityGroup(bool memoryOwn) : base(memoryOwn) {}

        ~ProximityGroup()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_group_name");

        public void set_group_name(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "broadcast");

        public void broadcast(string name, object parameters)
        {
            NativeCalls.godot_icall_2_146(method_bind_1, Object.GetPtr(this), name, parameters);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_dispatch_mode");

        public void set_dispatch_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_grid_radius");

        public void set_grid_radius(Vector3 radius)
        {
            NativeCalls.godot_icall_1_76(method_bind_3, Object.GetPtr(this), ref radius);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_grid_radius");

        public Vector3 get_grid_radius()
        {
            object ret = NativeCalls.godot_icall_0_77(method_bind_4, Object.GetPtr(this));
            return (Vector3)ret;
        }
    }
}
