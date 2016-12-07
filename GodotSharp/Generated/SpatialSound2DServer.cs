using System;

namespace GodotEngine
{
    /// <summary>
    /// Server for Spatial 2D Sound.
    /// </summary>
    public static class SpatialSound2DServer
    {
        private const string nativeName = "SpatialSound2DServer";
        internal static IntPtr ptr = NativeCalls.godot_icall_SpatialSound2DServer_get_singleton();
    }
}
