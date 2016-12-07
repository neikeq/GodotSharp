using System;

namespace GodotEngine
{
    public class WorldEnvironment : Spatial
    {
        private const string nativeName = "WorldEnvironment";

        public WorldEnvironment() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_WorldEnvironment_Ctor(this);
        }

        internal WorldEnvironment(bool memoryOwn) : base(memoryOwn) {}

        ~WorldEnvironment()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_environment");

        public void set_environment(Environment env)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(env));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_environment");

        public Environment get_environment()
        {
            return NativeCalls.godot_icall_0_123(method_bind_1, Object.GetPtr(this));
        }
    }
}
