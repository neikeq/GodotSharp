using System;

namespace GodotEngine
{
    /// <summary>
    /// Base class for playing spatial 2D sound.
    /// </summary>
    public class SoundPlayer2D : Node2D
    {
        public const int PARAM_VOLUME_DB = 0;
        public const int PARAM_PITCH_SCALE = 1;
        public const int PARAM_ATTENUATION_MIN_DISTANCE = 2;
        public const int PARAM_ATTENUATION_MAX_DISTANCE = 3;
        public const int PARAM_ATTENUATION_DISTANCE_EXP = 4;
        public const int PARAM_MAX = 5;

        private const string nativeName = "SoundPlayer2D";

        internal SoundPlayer2D() {}

        internal SoundPlayer2D(bool memoryOwn) : base(memoryOwn) {}

        ~SoundPlayer2D()
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
    }
}
