using System;

namespace GodotEngine
{
    /// <summary>
    /// A SpotLight light is a type of [Light] node that emits lights in a specific direction, in the shape of a cone. The light is attenuated through the distance and this attenuation can be configured by changing the energy, radius and attenuation parameters of [Light]. TODO: Image of a spotlight.
    /// </summary>
    public class SpotLight : Light
    {
        private const string nativeName = "SpotLight";

        public SpotLight() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_SpotLight_Ctor(this);
        }

        internal SpotLight(bool memoryOwn) : base(memoryOwn) {}

        ~SpotLight()
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
