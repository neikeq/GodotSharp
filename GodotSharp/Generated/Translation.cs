using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Translations are resources that can be loaded/unloaded on demand. They map a string to another string.
    /// </summary>
    public class Translation : Resource
    {
        private const string nativeName = "Translation";

        public Translation() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Translation_Ctor(this);
        }

        internal Translation(bool memoryOwn) : base(memoryOwn) {}

        ~Translation()
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
                    NativeCalls.godot_icall_Translation_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_locale");

        /// <summary>
        /// Set the locale of the translation.
        /// </summary>
        public void set_locale(string locale)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), locale);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_locale");

        /// <summary>
        /// Return the locale of the translation.
        /// </summary>
        public string get_locale()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_message");

        /// <summary>
        /// Add a message for translation.
        /// </summary>
        public void add_message(string src_message, string xlated_message)
        {
            NativeCalls.godot_icall_2_48(method_bind_2, Object.GetPtr(this), src_message, xlated_message);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_message");

        /// <summary>
        /// Return a message for translation.
        /// </summary>
        public string get_message(string src_message)
        {
            return NativeCalls.godot_icall_1_52(method_bind_3, Object.GetPtr(this), src_message);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "erase_message");

        /// <summary>
        /// Erase a message.
        /// </summary>
        public void erase_message(string src_message)
        {
            NativeCalls.godot_icall_1_18(method_bind_4, Object.GetPtr(this), src_message);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_message_list");

        /// <summary>
        /// Return all the messages (keys).
        /// </summary>
        public List<string> get_message_list()
        {
            string[] ret = NativeCalls.godot_icall_0_51(method_bind_5, Object.GetPtr(this));
            return new List<string>(ret);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_message_count");

        public int get_message_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_6, Object.GetPtr(this));
        }
    }
}
