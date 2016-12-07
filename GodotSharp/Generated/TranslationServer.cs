using System;

namespace GodotEngine
{
    public static class TranslationServer
    {
        private const string nativeName = "TranslationServer";
        internal static IntPtr ptr = NativeCalls.godot_icall_TranslationServer_get_singleton();

        private static IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_locale");

        public static void set_locale(string locale)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, ptr, locale);
        }

        private static IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_locale");

        public static string get_locale()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, ptr);
        }

        private static IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "translate");

        public static string translate(string message)
        {
            return NativeCalls.godot_icall_1_52(method_bind_2, ptr, message);
        }

        private static IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_translation");

        public static void add_translation(Translation translation)
        {
            NativeCalls.godot_icall_1_21(method_bind_3, ptr, Object.GetPtr(translation));
        }

        private static IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_translation");

        public static void remove_translation(Translation translation)
        {
            NativeCalls.godot_icall_1_21(method_bind_4, ptr, Object.GetPtr(translation));
        }

        private static IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        public static void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_5, ptr);
        }
    }
}
