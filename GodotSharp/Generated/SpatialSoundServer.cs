using System;

namespace GodotEngine
{
    public static class SpatialSoundServer
    {
        private const string nativeName = "SpatialSoundServer";
        internal static IntPtr ptr = NativeCalls.godot_icall_SpatialSoundServer_get_singleton();
    }
}
