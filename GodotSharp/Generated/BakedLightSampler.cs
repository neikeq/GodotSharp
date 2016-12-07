using System;

namespace GodotEngine
{
    public class BakedLightSampler : VisualInstance
    {
        public const int PARAM_RADIUS = 0;
        public const int PARAM_STRENGTH = 1;
        public const int PARAM_ATTENUATION = 2;
        public const int PARAM_DETAIL_RATIO = 3;
        public const int PARAM_MAX = 4;

        private const string nativeName = "BakedLightSampler";

        public BakedLightSampler() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_BakedLightSampler_Ctor(this);
        }

        internal BakedLightSampler(bool memoryOwn) : base(memoryOwn) {}

        ~BakedLightSampler()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_param");

        public void set_param(int param, float @value)
        {
            NativeCalls.godot_icall_2_36(method_bind_0, Object.GetPtr(this), param, @value);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_param");

        public float get_param(int param)
        {
            return NativeCalls.godot_icall_1_3(method_bind_1, Object.GetPtr(this), param);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_resolution");

        public void set_resolution(int resolution)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), resolution);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_resolution");

        public int get_resolution()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }
    }
}
