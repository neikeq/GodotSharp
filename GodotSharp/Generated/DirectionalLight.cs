using System;

namespace GodotEngine
{
    /// <summary>
    /// A DirectionalLight is a type of [Light] node that emits light constantly in one direction (the negative z axis of the node). It is used lights with strong intensity that are located far away from the scene to model sunlight or moonlight. The worldspace location of the DirectionalLight transform (origin) is ignored, only the basis is used do determine light direction.
    /// </summary>
    public class DirectionalLight : Light
    {
        public const int SHADOW_ORTHOGONAL = 0;
        public const int SHADOW_PERSPECTIVE = 1;
        public const int SHADOW_PARALLEL_2_SPLITS = 2;
        public const int SHADOW_PARALLEL_4_SPLITS = 3;
        public const int SHADOW_PARAM_MAX_DISTANCE = 0;
        public const int SHADOW_PARAM_PSSM_SPLIT_WEIGHT = 1;
        public const int SHADOW_PARAM_PSSM_ZOFFSET_SCALE = 2;

        private const string nativeName = "DirectionalLight";

        public DirectionalLight() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_DirectionalLight_Ctor(this);
        }

        internal DirectionalLight(bool memoryOwn) : base(memoryOwn) {}

        ~DirectionalLight()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shadow_mode");

        public void set_shadow_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shadow_mode");

        public int get_shadow_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shadow_param");

        public void set_shadow_param(int param, float @value)
        {
            NativeCalls.godot_icall_2_36(method_bind_2, Object.GetPtr(this), param, @value);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shadow_param");

        public float get_shadow_param(int param)
        {
            return NativeCalls.godot_icall_1_3(method_bind_3, Object.GetPtr(this), param);
        }
    }
}
