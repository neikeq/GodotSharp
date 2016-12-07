using System;

namespace GodotEngine
{
    /// <summary>
    /// When exporting, the types of some resources may change internally so they are converted to more optimized versions. While it's not usually necessary to access to this directly (path remapping happens automatically when opening a file), it's exported just for information.
    /// </summary>
    public static class PathRemap
    {
        private const string nativeName = "PathRemap";
        internal static IntPtr ptr = NativeCalls.godot_icall_PathRemap_get_singleton();

        private static IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_remap");

        /// <summary>
        /// Add a remap from a file to another.
        /// </summary>
        public static void add_remap(string @from, string to, string locale = "")
        {
            NativeCalls.godot_icall_3_342(method_bind_0, ptr, @from, to, locale);
        }

        private static IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_remap");

        /// <summary>
        /// Return true if a file is being remapped.
        /// </summary>
        public static bool has_remap(string path)
        {
            return NativeCalls.godot_icall_1_49(method_bind_1, ptr, path);
        }

        private static IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_remap");

        /// <summary>
        /// Return the remapped new path of a file.
        /// </summary>
        public static string get_remap(string path)
        {
            return NativeCalls.godot_icall_1_52(method_bind_2, ptr, path);
        }

        private static IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "erase_remap");

        /// <summary>
        /// Erase a remap.
        /// </summary>
        public static void erase_remap(string path)
        {
            NativeCalls.godot_icall_1_18(method_bind_3, ptr, path);
        }

        private static IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_remaps");

        /// <summary>
        /// Clear all remaps.
        /// </summary>
        public static void clear_remaps()
        {
            NativeCalls.godot_icall_0_7(method_bind_4, ptr);
        }
    }
}
