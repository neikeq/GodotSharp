using System;

namespace GodotEngine
{
    public class NavigationPolygonInstance : Node2D
    {
        private const string nativeName = "NavigationPolygonInstance";

        public NavigationPolygonInstance() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_NavigationPolygonInstance_Ctor(this);
        }

        internal NavigationPolygonInstance(bool memoryOwn) : base(memoryOwn) {}

        ~NavigationPolygonInstance()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_navigation_polygon");

        public void set_navigation_polygon(NavigationPolygon navpoly)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(navpoly));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_navigation_polygon");

        public NavigationPolygon get_navigation_polygon()
        {
            return NativeCalls.godot_icall_0_302(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_enabled");

        public void set_enabled(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_2, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_enabled");

        public bool is_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_3, Object.GetPtr(this));
        }
    }
}
