using System;

namespace GodotEngine
{
    /// <summary>
    /// An OmniDirectional light is a type of [Light] node that emits lights in all directions. The light is attenuated through the distance and this attenuation can be configured by changing the energy, radius and attenuation parameters of [Light]. TODO: Image of an omnilight.
    /// </summary>
    public class OmniLight : Light
    {
        private const string nativeName = "OmniLight";

        public OmniLight() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_OmniLight_Ctor(this);
        }

        internal OmniLight(bool memoryOwn) : base(memoryOwn) {}

        ~OmniLight()
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
    }
}
