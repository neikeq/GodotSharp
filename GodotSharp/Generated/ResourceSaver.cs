using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Resource Saving Interface. This interface is used for saving resources to disk.
    /// </summary>
    public static class ResourceSaver
    {
        public const int FLAG_RELATIVE_PATHS = 1;
        public const int FLAG_BUNDLE_RESOURCES = 2;
        public const int FLAG_CHANGE_PATH = 4;
        public const int FLAG_OMIT_EDITOR_PROPERTIES = 8;
        public const int FLAG_SAVE_BIG_ENDIAN = 16;
        public const int FLAG_COMPRESS = 32;

        private const string nativeName = "_ResourceSaver";
        internal static IntPtr ptr = NativeCalls.godot_icall__ResourceSaver_get_singleton();

        private static IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "save");

        /// <summary>
        /// Save a resource to disk, to a given path.
        /// </summary>
        public static int save(string path, Resource resource, int flags = 0)
        {
            return NativeCalls.godot_icall_3_595(method_bind_0, ptr, path, Object.GetPtr(resource), flags);
        }

        private static IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_recognized_extensions");

        /// <summary>
        /// Return the list of extensions available for saving a resource of a given type.
        /// </summary>
        public static List<string> get_recognized_extensions(Object type)
        {
            string[] ret = NativeCalls.godot_icall_1_596(method_bind_1, ptr, Object.GetPtr(type));
            return new List<string>(ret);
        }
    }
}
