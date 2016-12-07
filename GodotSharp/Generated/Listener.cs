using System;

namespace GodotEngine
{
    public class Listener : Spatial
    {
        private const string nativeName = "Listener";

        public Listener() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Listener_Ctor(this);
        }

        internal Listener(bool memoryOwn) : base(memoryOwn) {}

        ~Listener()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "make_current");

        public void make_current()
        {
            NativeCalls.godot_icall_0_7(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_current");

        public void clear_current()
        {
            NativeCalls.godot_icall_0_7(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_current");

        public bool is_current()
        {
            return NativeCalls.godot_icall_0_14(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_listener_transform");

        public Transform get_listener_transform()
        {
            object ret = NativeCalls.godot_icall_0_122(method_bind_3, Object.GetPtr(this));
            return (Transform)ret;
        }
    }
}
