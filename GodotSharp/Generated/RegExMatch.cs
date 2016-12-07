using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class RegExMatch : Reference
    {
        private const string nativeName = "RegExMatch";

        public RegExMatch() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_RegExMatch_Ctor(this);
        }

        internal RegExMatch(bool memoryOwn) : base(memoryOwn) {}

        ~RegExMatch()
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
                    NativeCalls.godot_icall_RegExMatch_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "expand");

        /// <summary>
        /// Using results from the search, returns the specified string with escapes and backreferences such as [code]\1[/code] and [code]\g<name>[/code] expanded and resolved.
        /// </summary>
        public string expand(string template)
        {
            return NativeCalls.godot_icall_1_52(method_bind_0, Object.GetPtr(this), template);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_group_count");

        /// <summary>
        /// Returns the number of numeric capturing groups.
        /// </summary>
        public int get_group_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_group_array");

        /// <summary>
        /// Returns an array of the results of the numeric groups.
        /// </summary>
        public List<object> get_group_array()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_2, Object.GetPtr(this));
            return new List<object>(ret);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_names");

        /// <summary>
        /// Returns an array of names of named capturing groups.
        /// </summary>
        public List<object> get_names()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_3, Object.GetPtr(this));
            return new List<object>(ret);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_name_dict");

        /// <summary>
        /// Returns a dictionary containing the named capturing groups and their results.
        /// </summary>
        public Dictionary<object, object> get_name_dict()
        {
            return NativeCalls.godot_icall_0_249(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_string");

        /// <summary>
        /// Returns the result of the match in the string. An interger can be specified for numeric groups or a string for named groups. Returns -1 if that group wasn't found or doesn't exist. Defaults to 0 (whole pattern).
        /// <param name="name">If the param is null, then the default value is 0</param>
        /// </summary>
        public string get_string(object name = null)
        {
            object name_in = name != null ? name : 0;
            return NativeCalls.godot_icall_1_407(method_bind_5, Object.GetPtr(this), name_in);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_start");

        /// <summary>
        /// Returns the starting position of the match in the string. An interger can be specified for numeric groups or a string for named groups. Returns -1 if that group wasn't found or doesn't exist. Defaults to 0 (whole pattern).
        /// <param name="name">If the param is null, then the default value is 0</param>
        /// </summary>
        public int get_start(object name = null)
        {
            object name_in = name != null ? name : 0;
            return NativeCalls.godot_icall_1_332(method_bind_6, Object.GetPtr(this), name_in);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_end");

        /// <summary>
        /// Returns the end position of the match in the string. An interger can be specified for numeric groups or a string for named groups. Returns -1 if that group wasn't found or doesn't exist. Defaults to 0 (whole pattern).
        /// <param name="name">If the param is null, then the default value is 0</param>
        /// </summary>
        public int get_end(object name = null)
        {
            object name_in = name != null ? name : 0;
            return NativeCalls.godot_icall_1_332(method_bind_7, Object.GetPtr(this), name_in);
        }
    }
}
