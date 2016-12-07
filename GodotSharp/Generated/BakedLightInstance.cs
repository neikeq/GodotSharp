using System;

namespace GodotEngine
{
    public class BakedLightInstance : VisualInstance
    {
        private const string nativeName = "BakedLightInstance";

        public BakedLightInstance() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_BakedLightInstance_Ctor(this);
        }

        internal BakedLightInstance(bool memoryOwn) : base(memoryOwn) {}

        ~BakedLightInstance()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_baked_light");

        public void set_baked_light(Object baked_light)
        {
            NativeCalls.godot_icall_1_20(method_bind_0, Object.GetPtr(this), Object.GetPtr(baked_light));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_baked_light");

        public Object get_baked_light()
        {
            return NativeCalls.godot_icall_0_12(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_baked_light_instance");

        public RID get_baked_light_instance()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_2, Object.GetPtr(this));
            return new RID(ret);
        }
    }
}
